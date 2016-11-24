using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Claims;
using Microsoft.Owin.Security;
using System.Security.Principal;
using PagedList.Mvc;
using PagedList;
using AutoMapper;
using FastTradeBLL.Services;
using FastTradeBLL.Interfaces;
using FastTradeBLL.DTO;
using FastTradeWEB.Models;
namespace FastTradeWEB.Controllers
{
    public class ManageController : Controller
    {
        // GET: Manage
        IUserService userService;
        IAdService adService;
        IKindService kindService;
        ICategoryService categoryService;
        ILocationService locationService;
        IImageService imageService;
        ITagService tagService;
        public ManageController(IUserService servU, IAdService servA, IKindService servK, ICategoryService servC, ILocationService servL, IImageService servI, ITagService servT)
        {
            userService = servU;
            adService = servA;
            kindService = servK;
            categoryService = servC;
            locationService = servL;
            imageService = servI;
            tagService = servT;
        }

        //[Authorize]
        //[ValidateAntiForgeryToken]
        public ActionResult MyAccount()
        {
            return PartialView();
        }

        public ActionResult MenuAccount()
        {
            return PartialView();
        }

        [HttpGet]
        public ActionResult PersonalData()
        {
            int id = User.Identity.GetUserId<int>();
            var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, ReadOnlyUserVM>());
            var mapper = config.CreateMapper();
            var user = mapper.Map<UserDTO, ReadOnlyUserVM>(userService.GetUserManag(id));
            userService.Dispose();
            return PartialView(user);
        }

        [HttpPost]
        public ActionResult PersonalDataForEdit(ReadOnlyUserVM userRead)
        {
            //var config = new MapperConfiguration(cfg => cfg.CreateMap<ReadOnlyUserVM, UserVM>());
            //var mapper = config.CreateMapper();
            //var userEdit = mapper.Map<ReadOnlyUserVM, UserVM>(userRead);

            var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, UserVM>());
            var mapper = config.CreateMapper();
            var userEdit = mapper.Map<UserDTO, UserVM>(userService.GetUserManag(userRead.UserId));
            userService.Dispose();
            return PartialView(userEdit);
        }

        [HttpPost]
        public ActionResult PersonalDataEdit(UserVM userEdit)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<UserVM, UserDTO>());
            var mapper = config.CreateMapper();
            var user = mapper.Map<UserVM, UserDTO>(userEdit);
            userService.EditUser(user);
            return RedirectToAction("PersonalData");
        }

        [HttpGet]
        public ActionResult PersonalAds(int? page)
        {
            int id = User.Identity.GetUserId<int>();
            int pageSize = 8;
            int pageNumber = (page ?? 1);

            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO,TagVM>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
                
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var ads = mapper.Map<IEnumerable<AdDTO>, IEnumerable<AdVM>>(adService.GetAd(id));
            adService.Dispose();
            return PartialView(ads.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult PersonalAdsEdit(int id)
        {
            ViewBag.AdId = id;
            return View();
        }

        [HttpGet]
        public ActionResult BasicAdInformationEdit(int AdId)
        {
            var configAd = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            //configAd.AssertConfigurationIsValid();
            var mapperAd = configAd.CreateMapper();
            var ad = mapperAd.Map<AdDTO, AdVM>(adService.GetAdbyAdId(AdId));

            var configKind = new MapperConfiguration(cfg => cfg.CreateMap<KindDTO, KindVM>());
            var mapperKind = configKind.CreateMapper();
            var kinds = mapperKind.Map<IEnumerable<KindDTO>, IEnumerable<KindVM>>(kindService.GetKinds());
            SelectList kindsDD = new SelectList(kinds, "KindId", "Name", ad.Kind.Name);
            ViewBag.Kinds = kindsDD;
            kindService.Dispose();

            var configCategory = new MapperConfiguration(cfg => cfg.CreateMap<CategoryDTO, CategoryVM>());
            var mapperCategory = configCategory.CreateMapper();
            var categories = mapperCategory.Map<IEnumerable<CategoryDTO>, IEnumerable<CategoryVM>>(categoryService.GetCategories());
            SelectList categoryDD = new SelectList(categories, "CategoryId", "Name", ad.Category.Name);
            ViewBag.Categories = categoryDD;
            categoryService.Dispose();

            var configLocation = new MapperConfiguration(cfg => cfg.CreateMap<LocationDTO, LocationVM>());
            var mapperLocation = configLocation.CreateMapper();
            var locations = mapperLocation.Map<IEnumerable<LocationDTO>, IEnumerable<LocationVM>>(locationService.GetLocations());
            SelectList locationDD = new SelectList(locations, "LocationId", "LocationName", ad.LocationNew.LocationName);
            ViewBag.Locations = locationDD;
            locationService.Dispose();

            return PartialView(ad);
        }

        [HttpGet]
        public ActionResult TagAdInformationEdit(int AdId)
        {
            var configAd = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            //configAd.AssertConfigurationIsValid();
            var mapperAd = configAd.CreateMapper();
            var ad = mapperAd.Map<AdDTO, AdVM>(adService.GetAdbyAdId(AdId));
            adService.Dispose();
            return PartialView(ad);
        }

        [HttpGet]
        public ActionResult ImageAdInformationEdit(int AdId)
        {
            ViewBag.AdId = AdId;
            var configImage = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            configImage.AssertConfigurationIsValid();
            var mapperImage = configImage.CreateMapper();
            var Images = mapperImage.Map<IEnumerable<ImageDTO>, IEnumerable<ImageVM>>(imageService.GetImagesByAd(AdId));
            imageService.Dispose();
            return PartialView(Images);
        }

        [HttpGet]
        public ActionResult BasicAdInformation (int AdId)
        {
            var configAd = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            //configAd.AssertConfigurationIsValid();
            var mapperAd = configAd.CreateMapper();
            var ad = mapperAd.Map<AdDTO, AdVM>(adService.GetAdbyAdId(AdId));
            adService.Dispose();

            var configKind = new MapperConfiguration(cfg => cfg.CreateMap<KindDTO, KindVM>());
            var mapperKind = configKind.CreateMapper();
            var kinds = mapperKind.Map<IEnumerable<KindDTO>, IEnumerable<KindVM>>(kindService.GetKinds());
            SelectList kindsDD = new SelectList(kinds, "KindId", "Name", ad.Kind.Name);
            ViewBag.Kinds = kindsDD;
            kindService.Dispose();

            var configCategory = new MapperConfiguration(cfg => cfg.CreateMap<CategoryDTO, CategoryVM>());
            var mapperCategory = configCategory.CreateMapper();
            var categories = mapperCategory.Map<IEnumerable<CategoryDTO>, IEnumerable<CategoryVM>>(categoryService.GetCategories());
            SelectList categoryDD = new SelectList(categories, "CategoryId", "Name", ad.Category.Name);
            ViewBag.Categories = categoryDD;
            categoryService.Dispose();

            var configLocation = new MapperConfiguration(cfg => cfg.CreateMap<LocationDTO, LocationVM>());
            var mapperLocation = configLocation.CreateMapper();
            var locations = mapperLocation.Map<IEnumerable<LocationDTO>, IEnumerable<LocationVM>>(locationService.GetLocations());
            SelectList locationDD = new SelectList(locations, "LocationId", "LocationName", ad.LocationNew.LocationName);
            ViewBag.Locations = locationDD;
            locationService.Dispose();

            return PartialView(ad);
        }

        [HttpGet]
        public ActionResult TagAdInformation(int AdId)
        {
            var configAd = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            //configAd.AssertConfigurationIsValid();
            var mapperAd = configAd.CreateMapper();
            var ad = mapperAd.Map<AdDTO, AdVM>(adService.GetAdbyAdId(AdId));
            adService.Dispose();
            return PartialView(ad);
        }

        [HttpGet]
        public ActionResult ImageAdInformation(int AdId)
        {
            ViewBag.AdId = AdId;
            var configImage = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            configImage.AssertConfigurationIsValid();
            var mapperImage = configImage.CreateMapper();
            var Images = mapperImage.Map<IEnumerable<ImageDTO>, IEnumerable<ImageVM>>(imageService.GetImagesByAd(AdId));
            imageService.Dispose();
            return PartialView(Images);
        }

        [HttpPost]
        public RedirectToRouteResult BasicAdInformationUpdate(AdVM ad)
        {
            var config = new MapperConfiguration(cfg => {
                 cfg.CreateMap<AdVM, AdDTO>()
                .ForMember(dest => dest.DateAdd, opt => opt.Ignore())
                .ForMember(dest=>dest.CategoryName, opt=>opt.Ignore())
                .ForMember(dest => dest.Category, opt => opt.Ignore())
                .ForMember(dest => dest.Kind, opt => opt.Ignore())
                .ForMember(dest => dest.KindName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationNew, opt => opt.Ignore())
                .ForMember(dest => dest.Tags, opt => opt.Ignore())
                .ForMember(dest => dest.User, opt => opt.Ignore())
                .ForMember(dest=>dest.Images,opt=>opt.Ignore())
                .ForMember(dest => dest.UserId, opt => opt.Ignore());
                 cfg.CreateMap<TagVM, TagDTO>()
                     .ForMember(t => t.InfoReviewTags, p => p.Ignore());
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var adUpdate = mapper.Map<AdVM, AdDTO>(ad);
            adService.EditAd(adUpdate);
            return RedirectToAction("BasicAdInformation", new {AdId=ad.AdId });
        }

        [HttpPost]
        public RedirectToRouteResult TagAdInformationUpdate(AdVM ad)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdVM, AdDTO>()
                .ForMember(dest => dest.DateAdd, opt => opt.Ignore())
                .ForMember(dest => dest.CategoryName, opt => opt.Ignore())
                .ForMember(dest => dest.Category, opt => opt.Ignore())
                .ForMember(dest => dest.Kind, opt => opt.Ignore())
                .ForMember(dest => dest.KindName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationNew, opt => opt.Ignore())
                .ForMember(dest => dest.User, opt => opt.Ignore())
                .ForMember(dest => dest.Images, opt => opt.Ignore())
                .ForMember(dest => dest.UserId, opt => opt.Ignore());
                cfg.CreateMap<TagVM, TagDTO>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
            } );

            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var adUpdate = mapper.Map<AdVM, AdDTO>(ad);
            adService.EditAd(adUpdate);
            return RedirectToAction("TagAdInformation", new { AdId = ad.AdId});
        }

        public ActionResult ImageDelete(int AdId, int ImageId,string ImageName)
        {
            imageService.Delete(ImageId);//удаляем изображение из базы данных

            //удаляем изображение из папки на сервере
            int userId = User.Identity.GetUserId<int>();
            string idPath = userId.ToString();
            string imagePath = @"~/Images";
            string fullPath = Path.Combine(imagePath, idPath);
            DirectoryInfo imageDirMy = new DirectoryInfo(Server.MapPath(fullPath));
            FileInfo[] files = imageDirMy.GetFiles();
            foreach (var file in files)
            {
                if(file.Name==ImageName)
                {
                    file.Delete();
                }
            }

            //Получаем обновленный список изображений
            var configImage = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            configImage.AssertConfigurationIsValid();
            var mapperImage = configImage.CreateMapper();
            var images = mapperImage.Map<IEnumerable<ImageDTO>, IEnumerable<ImageVM>>(imageService.GetImagesByAd(AdId));
            imageService.Dispose();

            return View(images);
        }
        public ActionResult AddNewAd()
        {
            int id = User.Identity.GetUserId<int>();
            //создание каталога для хранения изображений
            string idPath = id.ToString();
            string idPathTemp = Path.Combine(idPath, "Temp");
            string imagePath = @"~/Images";
            string fullPath = Path.Combine(imagePath, idPath);
            string fullPathTemp = Path.Combine(imagePath, idPathTemp);
            DirectoryInfo imageDirMy = new DirectoryInfo(Server.MapPath(fullPathTemp));
            if (!imageDirMy.Exists)
            {
                DirectoryInfo imageDir = new DirectoryInfo(Server.MapPath(imagePath));
                imageDir.CreateSubdirectory(idPathTemp);
            }
            else
            {
                FileInfo[] filesInTemp= imageDirMy.GetFiles();
                if (filesInTemp.Count() > 0)
                {
                    foreach (FileInfo file in filesInTemp)
                    {
                        file.Delete();
                    }
                }
            }
            var configKind = new MapperConfiguration(cfg => cfg.CreateMap<KindDTO, KindVM>());
            var mapperKind = configKind.CreateMapper();
            var kinds = mapperKind.Map<IEnumerable<KindDTO>, IEnumerable<KindVM>>(kindService.GetKinds());
            SelectList kindsDD = new SelectList(kinds, "KindId", "Name");
            ViewBag.Kinds = kindsDD;
            kindService.Dispose();

            var configCategory = new MapperConfiguration(cfg => cfg.CreateMap<CategoryDTO, CategoryVM>());
            var mapperCategory = configCategory.CreateMapper();
            var categories = mapperCategory.Map<IEnumerable<CategoryDTO>, IEnumerable<CategoryVM>>(categoryService.GetCategories());
            SelectList categoryDD = new SelectList(categories, "CategoryId", "Name");
            ViewBag.Categories = categoryDD;
            categoryService.Dispose();

            var configLocation = new MapperConfiguration(cfg => cfg.CreateMap<LocationDTO, LocationVM>());
            var mapperLocation = configLocation.CreateMapper();
            var locations = mapperLocation.Map<IEnumerable<LocationDTO>, IEnumerable<LocationVM>>(locationService.GetLocations());
            SelectList locationDD = new SelectList(locations, "LocationId", "LocationName");
            ViewBag.Locations = locationDD;
            locationService.Dispose();
            return View();
        }

        [HttpPost]
        public ActionResult AddNewAd(AdVM ad)
        {
            int id = User.Identity.GetUserId<int>();
            ad.Images = new List<ImageVM>();
            ad.UserId = id;

            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdVM, AdDTO>()
                .ForMember(dest => dest.DateAdd, opt => opt.Ignore())
                .ForMember(dest => dest.CategoryName, opt => opt.Ignore())
                .ForMember(dest => dest.Category, opt => opt.Ignore())
                .ForMember(dest => dest.Kind, opt => opt.Ignore())
                .ForMember(dest => dest.KindName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationName, opt => opt.Ignore())
                .ForMember(dest => dest.LocationNew, opt => opt.Ignore())
                .ForMember(dest => dest.User, opt => opt.Ignore());
                cfg.CreateMap<TagVM, TagDTO>();
                cfg.CreateMap<ImageVM,ImageDTO>();
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            // добавление изображений к модели если таковые имеются
            string idPath = id.ToString();
            string idPathTemp = Path.Combine(idPath, "Temp");
            string imagePath = @"~\Images";
            string imagePathForSave = @"..\..\Images";
            string fullPath = Path.Combine(imagePath, idPath);
            string fullPathForSave = Path.Combine(imagePathForSave,idPath);
            string fullPathTemp = Path.Combine(imagePath, idPathTemp);

            DirectoryInfo newImages = new DirectoryInfo(Server.MapPath(fullPathTemp));
            FileInfo[] addImages = newImages.GetFiles();
            if (addImages.Count() > 0)
            {
                foreach (FileInfo image in addImages)
                {
                    string name = image.Name;
                    string fullPathImage = Path.Combine(fullPath,name);
                    string fullPathImageForSave = Path.Combine(fullPathForSave,name);
                    string fullPathTempImage = Path.Combine(fullPathTemp, name);
                    //image.CopyTo(Server.MapPath(fullPath),false);
                    System.IO.File.Copy(Server.MapPath(fullPathTempImage), Server.MapPath(fullPathImage));
                    ImageVM newImage=new ImageVM();
                    newImage.Name = name;
                    newImage.PathToOriginal = fullPathImageForSave;
                    newImage.PathToSmall = fullPathImageForSave;
                    ad.Images.Add(newImage);
                }
                foreach (FileInfo image in addImages)
                {
                    image.Delete();
                }
            }

            var adCreate = mapper.Map<AdVM, AdDTO>(ad);
            adService.CreateAd(adCreate);
            return View("SuccessfullNewAd");
        }
        public ActionResult EditPassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult EditPassword(UserVMEditPassword UserEditPassword)
        {
            if (ModelState.IsValid)
            {
                int id = User.Identity.GetUserId<int>();
                var config = new MapperConfiguration(cfg => cfg.CreateMap<UserDTO, UserVM>());
                var mapper = config.CreateMapper();
                var userEdit = mapper.Map<UserDTO, UserVM>(userService.GetUserManag(id));
                if (userEdit.Password != UserEditPassword.PasswordCurrent)
                {
                    ModelState.AddModelError("", "Неверный пароль!");
                }
                else
                {
                    userEdit.Password = UserEditPassword.PasswordNew;
                    //userEdit.Password = "2";
                    var configEdit = new MapperConfiguration(cfg => cfg.CreateMap<UserVM, UserDTO>());
                    var mapperEdit = configEdit.CreateMapper();
                    var user = mapperEdit.Map<UserVM, UserDTO>(userEdit);
                    userService.EditUser(user);
                    userService.Dispose();
                    return View("SuccessfullEditPassword");
                }
            }
            return View(UserEditPassword);
        }

        [HttpPost]
        public JsonResult UploadImage()
        {
            int id = User.Identity.GetUserId<int>();
            string idPath = id.ToString();
            string idPathTemp = Path.Combine(idPath, "Temp");
            string imagePath = @"~\Images";
            string fullPath = Path.Combine(imagePath, idPath);
            string fullPathTemp = Path.Combine(imagePath, idPathTemp);


            foreach (string file in Request.Files)
            {
                var upload = Request.Files[file];
                if (upload != null)
                {
                    // получаем имя файла
                    string fileName = Path.GetFileName(upload.FileName);
                    // сохраняем файл в папку Files в проекте
                    string saveImageTemp = Path.Combine(fullPathTemp,fileName);
                    upload.SaveAs(Server.MapPath(saveImageTemp));
                }
            }
            return Json("Загрузка успешно завершена.");
        }

        [HttpPost]
        public ActionResult UploadImageForEdit(int AdId)
        {
            int id = User.Identity.GetUserId<int>();
            string idPath = id.ToString();
            string imagePath = @"~\Images";
            string fullPath = Path.Combine(imagePath, idPath);

            string imagePathForSave = @"..\..\Images";
            string fullPathForSave = Path.Combine(imagePathForSave, idPath);

            var configImageAdd = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<ImageVM, ImageDTO>();
            });
            configImageAdd.AssertConfigurationIsValid();
            var mapperImageAdd = configImageAdd.CreateMapper();
            
            foreach (string file in Request.Files)
            {
                var upload = Request.Files[file];
                if (upload != null)
                {
                    // получаем имя файла
                    string fileName = Path.GetFileName(upload.FileName);
                    // сохраняем файл в папку Files в проекте
                    string saveImage = Path.Combine(fullPath, fileName);
                    upload.SaveAs(Server.MapPath(saveImage));
                    //формируем путь для сохранения в БД
                    string fullPathImageForSave = Path.Combine(fullPathForSave, fileName);
                    //Сохраняем в БД
                    ImageVM newImage = new ImageVM();
                    newImage.Name = fileName;
                    newImage.PathToOriginal = fullPathImageForSave;
                    newImage.PathToSmall = fullPathImageForSave;
                    newImage.AdId = AdId;
                    var image = mapperImageAdd.Map<ImageVM, ImageDTO>(newImage);
                    imageService.AddImage(image);
                }
            }

            //Получаем обновленный список изображений
            var configImageGet = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            configImageGet.AssertConfigurationIsValid();
            var mapperImageGet = configImageGet.CreateMapper();
            var images = mapperImageGet.Map<IEnumerable<ImageDTO>, IEnumerable<ImageVM>>(imageService.GetImagesByAd(AdId));
            imageService.Dispose();

            return View("ImageDelete", images);
        }

        [HttpGet]
        public ActionResult PersonalAdsDelete(int AdId)
        {
            adService.DeleteAd(AdId);
            return PartialView();
        }
        public ActionResult AutocompleteSearch(string term)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<TagDTO, TagVM>()
               .ForMember(t => t.Ads, p => p.Ignore())
               .ForMember(t => t.InfoReviewTags, p => p.Ignore())
               );
            var mapper = config.CreateMapper();
            var tags = mapper.Map<IEnumerable<TagDTO>, IEnumerable<TagVM>>(tagService.GetTags());

            var models = tags.Where(a => a.TagName.Contains(term))
                            .Select(a => new { value = a.TagName })
                            .Distinct();

            return Json(models, JsonRequestBehavior.AllowGet);
        }
    }
}