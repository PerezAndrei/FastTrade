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
    public class CategoryService:ICategoryService
    {
        IUnitOfWork DataBase { get; set; }
        public CategoryService(IUnitOfWork uow)
        {
            DataBase = uow;
        }

        public IEnumerable<CategoryDTO> GetCategories()
        {
            Mapper.CreateMap<Category, CategoryDTO>();
            var categories = Mapper.Map<IEnumerable<Category>, IEnumerable<CategoryDTO>>(DataBase.Categories.GetAll());
            return categories;
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
