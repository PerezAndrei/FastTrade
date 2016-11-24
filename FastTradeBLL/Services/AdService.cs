using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeBLL.Interfaces;
using FastTradeBLL.Infrastructure;
using FastTradeDAL.Interfaces;
using FastTradeDAL.Repositories;
using FastTradeDAL.Entities;
using AutoMapper;

namespace FastTradeBLL.Services
{
    public class AdService:IAdService
    {
        IUnitOfWork DataBase;
        public AdService(IUnitOfWork uow)
        {
            DataBase = uow;
        }
        public IEnumerable<AdDTO> GetAds(int categoryId, int kindId, int regionId, int tagId)
        {
            //настройка AutaMapper для объявлений
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Ad, AdDTO>()
                    .ForMember("KindName", opt => opt.MapFrom(src => src.Kind.Name))
                    .ForMember("CategoryName", opt => opt.MapFrom(c => c.Category.Name))
                    .ForMember("LocationName", opt => opt.MapFrom(l => l.LocationNew.LocationName));
                cfg.CreateMap<Kind, KindDTO>();
                cfg.CreateMap<Category, CategoryDTO>();
                cfg.CreateMap<Location, LocationDTO>();
                cfg.CreateMap<User,UserDTO>()
                    .ForMember(m=>m.RoleName,p=>p.Ignore());
                cfg.CreateMap<Tag, TagDTO>()
                    .ForMember(t=>t.InfoReviewTags,p=>p.Ignore());
                cfg.CreateMap<Image, ImageDTO>();
            });
            //config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            //настройка AutaMapper для тэгов
            var configTag = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Tag, TagDTO>();
                cfg.CreateMap<Ad, AdDTO>()
                    .ForMember("KindName", opt => opt.MapFrom(src => src.Kind.Name))
                    .ForMember("CategoryName", opt => opt.MapFrom(c => c.Category.Name))
                    .ForMember("LocationName", opt => opt.MapFrom(l => l.LocationNew.LocationName));
                cfg.CreateMap<Kind, KindDTO>();
                cfg.CreateMap<Category, CategoryDTO>();
                cfg.CreateMap<Location, LocationDTO>();
                cfg.CreateMap<User, UserDTO>()
                    .ForMember(m => m.RoleName, p => p.Ignore());
                cfg.CreateMap<Tag, TagDTO>();
                cfg.CreateMap<Image, ImageDTO>();
                cfg.CreateMap<InfoReviewTag,InfoReviewTagDTO>();
            });
            //configTag.AssertConfigurationIsValid();
            var mapperTag = configTag.CreateMapper();

            //настройка AutaMapper для обновления тэга 
            //var configTagNew = new MapperConfiguration(cfg =>
            //{
            //    cfg.CreateMap<TagDTO, Tag>()
            //        .ForMember(t=>t.Ads,p=>p.Ignore());
            //    cfg.CreateMap<InfoReviewTagDTO, InfoReviewTag>();
            //});
            //configTag.AssertConfigurationIsValid();
            //var mapperTagNew = configTagNew.CreateMapper();

            if (categoryId >= 0 && kindId == -1 && regionId == -1 && tagId==-1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.CategoryId == categoryId));
                return ads;
            }

            if (categoryId == -1 && kindId >= 0 && regionId == -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.KindId == kindId));
                return ads;
            }

            if (categoryId == -1 && kindId == -1 && regionId != -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.LocationId == regionId));
                return ads;
            }

            if (categoryId >= 0 && kindId >= 0 && regionId == -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.CategoryId == categoryId && c.KindId == kindId));
                return ads;
            }

            if (categoryId >= 0 && kindId == -1 && regionId != -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.CategoryId == categoryId && c.LocationId == regionId));
                return ads;
            }

            if (categoryId == -1 && kindId >= 0 && regionId != -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.LocationId == regionId && c.KindId == kindId));
                return ads;
            }

            if (categoryId >= 0 && kindId >= 0 && regionId != -1 && tagId == -1)
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c => c.CategoryId == categoryId && c.LocationId == regionId && c.KindId == kindId));
                return ads;
            }

            //фильтры с тэгами
            if (categoryId == -1 && kindId == -1 && regionId == -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                //добовляем данные о просмотре тэга
                //InfoReviewTagDTO infoReviewTagNew = new InfoReviewTagDTO();
                //infoReviewTagNew.InfoReviewTagDate = DateTime.Now;
                //infoReviewTagNew.TagId = tag.TagId;
                //tag.CountReq++;
                //tag.InfoReviewTags.Add(infoReviewTagNew);
                //var tagNew

                var filterAds = tag.Ads;
                return filterAds;
            }

            if (categoryId >= 0 && kindId == -1 && regionId == -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.CategoryId == categoryId);
                return ads;
            }

            if (categoryId == -1 && kindId >= 0 && regionId == -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.KindId == kindId);
                return ads;
            }

            if (categoryId == -1 && kindId == -1 && regionId != -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.LocationId == regionId);
                return ads;
            }

            if (categoryId >= 0 && kindId >= 0 && regionId == -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.CategoryId == categoryId && c.KindId == kindId);
                return ads;
            }

            if (categoryId >= 0 && kindId == -1 && regionId != -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.CategoryId == categoryId && c.LocationId == regionId);
                return ads;
            }

            if (categoryId == -1 && kindId >= 0 && regionId != -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.LocationId == regionId && c.KindId == kindId);
                return ads;
            }

            if (categoryId >= 0 && kindId >= 0 && regionId != -1 && tagId != -1)
            {
                var tag = mapperTag.Map<Tag, TagDTO>(DataBase.Tags.Get(tagId));
                var filterAds = tag.Ads;
                var ads = filterAds.Where(c => c.CategoryId == categoryId && c.LocationId == regionId && c.KindId == kindId);
                return ads;
            }

            else
            {
                var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.GetAll());
                return ads;
            }
        }

        public IEnumerable<AdDTO> GetAd(int id)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Ad, AdDTO>()
                    .ForMember("KindName", opt => opt.MapFrom(src => src.Kind.Name))
                    .ForMember("CategoryName", opt => opt.MapFrom(c => c.Category.Name))
                    .ForMember("LocationName", opt => opt.MapFrom(l => l.LocationNew.LocationName));
                cfg.CreateMap<Kind, KindDTO>();
                cfg.CreateMap<Category, CategoryDTO>();
                cfg.CreateMap<Location, LocationDTO>();
                cfg.CreateMap<User, UserDTO>()
                    .ForMember(m => m.RoleName, p => p.Ignore());
                cfg.CreateMap<Tag, TagDTO>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<Image, ImageDTO>();
            });
            var mapper = config.CreateMapper();
            var ads = mapper.Map<IEnumerable<Ad>, IEnumerable<AdDTO>>(DataBase.Ads.Find(c=>c.UserId==id));
            return ads;
        }

        public AdDTO GetAdbyAdId(int id)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Ad, AdDTO>()
                    .ForMember("KindName", opt => opt.MapFrom(src => src.Kind.Name))
                    .ForMember("CategoryName", opt => opt.MapFrom(c => c.Category.Name))
                    .ForMember("LocationName", opt => opt.MapFrom(l => l.LocationNew.LocationName));
                cfg.CreateMap<Kind, KindDTO>();
                cfg.CreateMap<Category, CategoryDTO>();
                cfg.CreateMap<Location, LocationDTO>();
                cfg.CreateMap<User, UserDTO>()
                    .ForMember(m => m.RoleName, p => p.Ignore());
                cfg.CreateMap<Tag, TagDTO>()
                    .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                cfg.CreateMap<Image, ImageDTO>();
            });
            var mapper = config.CreateMapper();
            var ad = mapper.Map<Ad,AdDTO>(DataBase.Ads.Get(id));
            return ad;
        }

        public void EditAd(AdDTO ad)
        {
            var config = new MapperConfiguration(cfg =>
                {
                    cfg.CreateMap<AdDTO, Ad>()
                        .ForMember(dest => dest.DateAdd, opt => opt.Ignore())
                        .ForMember(dest => dest.Category, opt => opt.Ignore())
                        .ForMember(dest => dest.Kind, opt => opt.Ignore())
                        .ForMember(dest => dest.LocationNew, opt => opt.Ignore())
                        .ForMember(dest => dest.User, opt => opt.Ignore())
                        .ForMember(dest => dest.UserId, opt => opt.Ignore());
                    cfg.CreateMap<ImageDTO, Image>();
                    cfg.CreateMap<TagDTO,Tag>()
                        .ForMember(t => t.InfoReviewTags, p => p.Ignore());
                });

            var mapper = config.CreateMapper();
            var adEdit = mapper.Map<AdDTO, Ad>(ad);
            DataBase.Ads.Update(adEdit);
           //DataBase.Save();
        }
        public void CreateAd(AdDTO ad)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<AdDTO, Ad>()
                    .ForMember(dest => dest.DateAdd, opt => opt.Ignore())
                    .ForMember(dest => dest.Category, opt => opt.Ignore())
                    .ForMember(dest => dest.Kind, opt => opt.Ignore())
                    .ForMember(dest => dest.LocationNew, opt => opt.Ignore())
                    .ForMember(dest => dest.User, opt => opt.Ignore());
                cfg.CreateMap<TagDTO, Tag>();
                cfg.CreateMap<ImageDTO,Image>();
            });

            var mapper = config.CreateMapper();
            var adCreate = mapper.Map<AdDTO, Ad>(ad);
            DataBase.Ads.Create(adCreate);
            DataBase.Save();
        }

        public void DeleteAd(int adId)
        {
            DataBase.Ads.Delete(adId);
            DataBase.Save();
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
     
    }
}
