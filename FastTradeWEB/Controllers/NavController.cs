using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using FastTradeBLL.Services;
using FastTradeBLL.Interfaces;
using FastTradeBLL.DTO;
using FastTradeWEB.Models;

namespace FastTradeWEB.Controllers
{
    public class NavController : Controller
    {
        // GET: Nav
        ICategoryService categoryService;
        public NavController(ICategoryService serv)
        {
            categoryService = serv;
        }
        public PartialViewResult Menu(int? id)
        {
            ViewBag.SelectedCategory=id;
            Mapper.CreateMap<CategoryDTO, CategoryVM>();
            var categories = Mapper.Map<IEnumerable<CategoryDTO>, IEnumerable<CategoryVM>>(categoryService.GetCategories());
            return PartialView(categories);
        }
    }
}