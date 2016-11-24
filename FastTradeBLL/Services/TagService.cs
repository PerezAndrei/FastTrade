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
    public class TagService:ITagService
    {
        IUnitOfWork DataBase;
        public TagService(IUnitOfWork uow)
        {
            DataBase = uow;
        }

        public IEnumerable<TagDTO> GetTags()
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<Tag, TagDTO>()
                .ForMember(a=>a.Ads,p=>p.Ignore())
                .ForMember(t=>t.InfoReviewTags,p=>p.Ignore())
                );
            config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var tags = mapper.Map<IEnumerable<Tag>, IEnumerable<TagDTO>>(DataBase.Tags.GetAll());
            return tags;
        }
        public void Update(int idTag)
        {
            Tag tagUpdate = DataBase.Tags.Get(idTag);
            InfoReviewTag iRTNew=new InfoReviewTag();
            iRTNew.InfoReviewTagDate=DateTime.Now;
            iRTNew.TagId=idTag;
            tagUpdate.InfoReviewTags.Add(iRTNew);
            tagUpdate.CountReq++;
            DataBase.Tags.Update(tagUpdate);
            DataBase.Save();
        }

        public TagDTO GetTag(int TagId)
        {
            var config = new MapperConfiguration(cfg => 
            {
                cfg.CreateMap<Tag, TagDTO>()
                .ForMember(a => a.Ads, p => p.Ignore());
                cfg.CreateMap<InfoReviewTag,InfoReviewTagDTO>();
            });
            config.AssertConfigurationIsValid();
            var mapper = config.CreateMapper();
            var tag = mapper.Map<Tag, TagDTO>(DataBase.Tags.Get(TagId));
            return tag;
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
