using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace FastTradeWEB
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "User", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "MyRout",
                url: "{controller}/{action}/{pageID}/{categoryID}/{kindID}/{regionId}",
                defaults: new { pageID = UrlParameter.Optional, categoryID = UrlParameter.Optional, kindID = UrlParameter.Optional, regionId = UrlParameter.Optional}
                );
        }
    }
}
