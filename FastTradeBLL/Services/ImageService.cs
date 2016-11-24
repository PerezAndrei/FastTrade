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
    public class ImageService:IImageService
    {
        IUnitOfWork DataBase;
        public ImageService(IUnitOfWork uow)
        {
            DataBase = uow;
        }
        public IEnumerable<ImageDTO> GetImagesByAd(int AdId)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<Image, ImageDTO>());
            var mapper = config.CreateMapper();
            IEnumerable<ImageDTO> Images = mapper.Map<IEnumerable<Image>, IEnumerable<ImageDTO>>(DataBase.Images.Find(i=>i.AdId==AdId));
            return Images;
        }

        public void Delete(int imageId)
        {
            DataBase.Images.Delete(imageId);
            DataBase.Save();
        }

        public void AddImage(ImageDTO image)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<ImageDTO, Image>());
            var mapper = config.CreateMapper();
            Image imageSave = mapper.Map<ImageDTO, Image>(image);
            DataBase.Images.Create(imageSave);
            DataBase.Save();
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
