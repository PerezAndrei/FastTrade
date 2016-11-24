using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;
using AutoMapper;
using FastTradeBLL.Services;
using FastTradeBLL.Interfaces;
using FastTradeBLL.DTO;
using FastTradeWEB.Models;
using FastTradeWEB.Service;


namespace FastTradeWEB.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        IAdService adService;
        IKindService kindService;
        ILocationService locationService;
        ITagService tagService;
        public UserController(IAdService servAd, IKindService servKind, ILocationService servLocation,ITagService servTag)
        {
            adService = servAd;
            kindService = servKind;
            locationService = servLocation;
            tagService = servTag;
        }
        public ActionResult Index()
        {
            string[] regions = locationService.GetRegionList("name");
            string[] ids = locationService.GetRegionList("id");
            ViewBag.Regions = regions;
            ViewBag.Ids = ids;

            var config = new MapperConfiguration(cfg => cfg.CreateMap<KindDTO, KindVM>());
            var mapper = config.CreateMapper();
            var kinds = mapper.Map<IEnumerable<KindDTO>, IEnumerable<KindVM>>(kindService.GetKinds());
            return View(kinds);
        }

        [HttpGet]
        public ActionResult GetAds(int? page, int categoryId=-1, int kindId=-1, int regionId=-1, int tagId=-1)
        {
            ViewBag.Category=categoryId;
            ViewBag.Kind = kindId;
            ViewBag.Region = regionId;
            ViewBag.Tag = tagId;
            int pageSize = 8;
            int pageNumber = (page ?? 1);

            var config = new MapperConfiguration(cfg => {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword",opt=>opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t=>t.InfoReviewTags,p=>p.Ignore());
                cfg.CreateMap<ImageDTO,ImageVM>();
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var ads = mapper.Map<IEnumerable<AdDTO>, IEnumerable<AdVM>>(adService.GetAds((int)categoryId,(int)kindId,(int)regionId,(int)tagId));
            adService.Dispose();
            var adsSort = ads.OrderBy(a => a.DateAdd).Reverse();
            return PartialView(adsSort.ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult GetAdbyAdId(int id)
        {
            int idUser = User.Identity.GetUserId<int>();
            string role = User.Identity.GetUserRole();
            ViewBag.UserId = idUser;
            ViewBag.Role = role;
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, AdVM>();
                cfg.CreateMap<KindDTO, KindVM>();
                cfg.CreateMap<CategoryDTO, CategoryVM>();
                cfg.CreateMap<LocationDTO, LocationVM>();
                cfg.CreateMap<UserDTO, UserVM>()
                    .ForMember("ConfirmPassword", opt => opt.Ignore());
                cfg.CreateMap<TagDTO, TagVM>()
                    .ForMember(t=>t.InfoReviewTags,p=>p.Ignore());
                cfg.CreateMap<ImageDTO, ImageVM>();
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var ad = mapper.Map<AdDTO,AdVM>(adService.GetAdbyAdId(id));
            adService.Dispose();
            return View(ad);
        }

        public ActionResult GetTags()
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<TagDTO, TagVM>()
                .ForMember(t=>t.Ads,p=>p.Ignore())
                .ForMember(t=>t.InfoReviewTags,p=>p.Ignore())
                );
            var mapper = config.CreateMapper();
            var tags = mapper.Map<IEnumerable<TagDTO>, IEnumerable<TagVM>>(tagService.GetTags());
            return PartialView(tags);
        }

        [HttpGet]
        public ActionResult RefreshTags()
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<TagDTO, TagVM>()
                .ForMember(t => t.Ads, p => p.Ignore())
                .ForMember(t => t.InfoReviewTags, p => p.Ignore())
                );
            var mapper = config.CreateMapper();
            var tags = mapper.Map<IEnumerable<TagDTO>, IEnumerable<TagVM>>(tagService.GetTags());
            return PartialView(tags);
        }

        [HttpGet]
        public void IncrementCountReviewTag(int TagId)
        {
            tagService.Update(TagId);
        }

        [HttpGet]
        public ActionResult Statistics()
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<TagDTO, TagVM>()
                           .ForMember(t => t.Ads, p => p.Ignore())
                           .ForMember(t => t.InfoReviewTags, p => p.Ignore())
                           );
            var mapper = config.CreateMapper();
            var tags = mapper.Map<IEnumerable<TagDTO>, IEnumerable<TagVM>>(tagService.GetTags());
            return View(tags);
        }

        [HttpGet]
        public ActionResult StatisticsForTag(int TagId)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TagDTO, TagVM>()
                             .ForMember(t => t.Ads, p => p.Ignore());
                cfg.CreateMap<InfoReviewTagDTO,InfoReviewTagVM>();
            });
            var mapper = config.CreateMapper();
            var tag = mapper.Map<TagDTO,TagVM>(tagService.GetTag(TagId));
            return PartialView(tag);
        }

        public JsonResult GetReviewByTag(int TagId)
        {
            
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TagDTO, TagVM>()
                             .ForMember(t => t.Ads, p => p.Ignore());
                cfg.CreateMap<InfoReviewTagDTO, InfoReviewTagVM>();
            });
            var mapper = config.CreateMapper();
            var tag = mapper.Map<TagDTO, TagVM>(tagService.GetTag(TagId));
            List<InfoReviewTagVM> ReviewTag = new List<InfoReviewTagVM>();
            ReviewTag = tag.InfoReviewTags.ToList();

            GetStatistics stat = new GetStatistics(ReviewTag);
            List<Statistics> statList = stat.ListStat();

            return Json(statList, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetStatByChartAjax(int TagId)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TagDTO, TagVM>()
                             .ForMember(t => t.Ads, p => p.Ignore());
                cfg.CreateMap<InfoReviewTagDTO, InfoReviewTagVM>();
            });
            var mapper = config.CreateMapper();
            var tag = mapper.Map<TagDTO, TagVM>(tagService.GetTag(TagId));
            List<InfoReviewTagVM> ReviewTag = new List<InfoReviewTagVM>();
            ReviewTag = tag.InfoReviewTags.ToList();

            GetStatistics stat = new GetStatistics(ReviewTag);
            stat.ListStat();
            List<StatisticsForChart> statForChart = stat.ListStatForChart();
            return Json(statForChart, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult GetStatByChart(int TagId)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TagDTO, TagVM>()
                             .ForMember(t => t.Ads, p => p.Ignore());
                cfg.CreateMap<InfoReviewTagDTO, InfoReviewTagVM>();
            });
            var mapper = config.CreateMapper();
            var tag = mapper.Map<TagDTO, TagVM>(tagService.GetTag(TagId));
            List<InfoReviewTagVM> ReviewTag = new List<InfoReviewTagVM>();
            ReviewTag = tag.InfoReviewTags.ToList();

            GetStatistics stat = new GetStatistics(ReviewTag);
            stat.ListStat();
            List<StatisticsForChart> statForChart = stat.ListStatForChart();
            if (statForChart != null)
            {
                return PartialView(statForChart);
            }
            else
            {
                return new EmptyResult();
            }
        }
            
    }
}