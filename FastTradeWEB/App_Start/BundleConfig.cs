using System.Web;
using System.Web.Optimization;

namespace FastTradeWEB
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
            bundles.Add(new StyleBundle("~/Content/Mycss").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/FastTrade.css"));
            bundles.Add(new ScriptBundle("~/Scripts/AllScripts").Include(
                "~/Scripts/less-1.5.1.js",
                "~/Scripts/jquery-3.0.0.js",
                "~/Scripts/jquery-1.10.2.intellisense.js",
                "~/Scripts/jquery.validate.js",
                "~/Scripts/jquery.validate.unobtrusive.js",
                "~/Scripts/jquery.unobtrusive-ajax.js",
                "~/Scripts/respond.js",
                "~/Scripts/bootstrap.js",
                "~/Scripts/bootstrap-select.js",
                "~/Scripts/popup_img.js",
                "~/Scripts/saveImage.js",
                "~/Scripts/myScript.js"));
            bundles.Add(new ScriptBundle("~/Scripts/FancyBoxScripts").Include(
                "~/Scripts/fancyBox/lib/jquery.jquery-1.10.1.min.js",
                "~/Scripts/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js",
                "~/Scripts/fancyBox/source/jquery.fancybox.pack.js",
                "~/Scripts/fancyBox/source/helpers/jquery.fancybox-buttons.js",
                "~/Scripts/fancyBox/source/helpers/jquery.fancybox-media.js",
                "~/Scripts/fancyBox/source/helpers/jquery.fancybox-thumbs.js"
                ));
            bundles.Add(new StyleBundle("~/Content/FancyBoxcss").Include(
                "~/Scripts/fancyBox/source/jquery.fancybox.css",
                "~/Scripts/fancyBox/source/helpers/jquery.fancybox-buttons.css",
                "~/Scripts/fancyBox/source/helpers/jquery.fancybox-thumbs.css"
                ));
        }
    }
}
