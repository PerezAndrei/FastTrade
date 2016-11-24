using System;
using Ninject;
using AutoMapper;
using AutoMapper.Mappers;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FastTradeBLL.DTO;
using FastTradeBLL.Infrastructure;
using FastTradeBLL.Interfaces;
using FastTradeBLL.Services;
using FastTradeWEB.Models;
using FastTradeWEB.Util;

namespace FastTradeWEB.Controllers
{
    public class HomeController : Controller
    {
        IUserService userService;
        public HomeController(IUserService serv)
        {
            userService = serv;
        }
        public ActionResult Index()
        {
            return View();
        }

        // Добавление нового пользователя
        [HttpGet]
        public ActionResult AddUser()
        {
            return View();
        }

        // Занесение нового пользователя в бд
        [HttpPost]
        public ActionResult AddUser(UserVM userVM)
        {
            Mapper.CreateMap<UserVM, UserDTO>();
            var user = Mapper.Map<UserVM,UserDTO>(userVM);
            userService.AddUser(user);
            userService.Dispose();
            return RedirectToAction("Index");
        }

        public ActionResult ShowUsers()
        {
            Mapper.CreateMap<UserDTO, UserVM>();
            var users = Mapper.Map<IEnumerable<UserDTO>,IEnumerable<UserVM>>(userService.GetUsers());
            return View(users);
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}