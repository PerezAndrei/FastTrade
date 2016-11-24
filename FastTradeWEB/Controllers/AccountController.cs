using System;
using AutoMapper;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Security.Claims;
using Microsoft.Owin.Security;
using System.Security.Principal;
using FastTradeWEB.Models;
using System.Threading.Tasks;
using FastTradeBLL.Infrastructure;
using FastTradeBLL.Interfaces;
using FastTradeBLL.Services;
using FastTradeBLL.DTO;
using FastTradeWEB.Util;

namespace FastTradeWEB.Controllers
{
    //[Authorize]
    public class AccountController : Controller
    {
        // GET: Account
        IUserService userService;
        private IAuthenticationManager AuthenticationManager
        {
            get { return HttpContext.GetOwinContext().Authentication; }
        }
        public AccountController(IUserService serv)
        {
            userService = serv;
        }

        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        // Занесение нового пользователя в бд

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Register(UserVM userVM)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, UserVM>());
            var mapper = config.CreateMapper();
            var userExist = mapper.Map<UserDTO, UserVM>(userService.GetUserReg(userVM.Email));
            if (userExist != null)
            {
                ModelState.AddModelError("", "Пользователь с таким Email уже существует!");
            }
            else
            {
                ViewBag.User = userVM.FirstName;
                var configDTO = new MapperConfiguration(cfg => cfg.CreateMap<UserVM, UserDTO>());
                var mapperDTO = configDTO.CreateMapper();
                var user = mapperDTO.Map<UserVM, UserDTO>(userVM);
                userService.AddUser(user);
                userService.Dispose();
                return PartialView("~/Views/Account/SuccessfullRegister.cshtml");
            }
            return View(userVM);
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel lgModel)
        {
            if (ModelState.IsValid)
            {
                var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, UserVM_Auth>());
                var mapper = config.CreateMapper();
                UserVM_Auth user = mapper.Map<UserDTO, UserVM_Auth>(userService.AuthenGetUser(lgModel.Email, lgModel.Password));
                if (user == null)
                {
                    ModelState.AddModelError("", "Неверный логин или пароль!");
                }
                else
                {
                    ClaimsIdentity claim = new ClaimsIdentity("ApplicationCookie", ClaimsIdentity.DefaultNameClaimType, ClaimsIdentity.DefaultRoleClaimType);
                    claim.AddClaim(new Claim(ClaimTypes.NameIdentifier, user.UserId.ToString(), ClaimValueTypes.String));
                    claim.AddClaim(new Claim(ClaimsIdentity.DefaultNameClaimType, user.Email, ClaimValueTypes.String));
                    if (user.RoleName != null)
                        claim.AddClaim(new Claim(ClaimsIdentity.DefaultRoleClaimType, user.RoleName, ClaimValueTypes.String));
                    claim.AddClaim(new Claim("http://schemas.microsoft.com/accesscontrolservice/2010/07/claims/identityprovider",
                        "OWIN Provider", ClaimValueTypes.String));
                    

                    AuthenticationManager.SignOut();
                    AuthenticationManager.SignIn(new AuthenticationProperties
                    {
                        IsPersistent = lgModel.RememberMe
                    }, claim);
                    ViewBag.User = lgModel.Email;
                    return View("SuccessfullLogin");
                }
            }
            return View(lgModel);
        }
        public ActionResult Logout()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "User");
        }

    }
}