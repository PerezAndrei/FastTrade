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
    public class KindService:IKindService
    {
        IUnitOfWork DataBase;
        public KindService(IUnitOfWork uow)
        {
            DataBase = uow;
        }
        public IEnumerable<KindDTO> GetKinds()
        {
            Mapper.CreateMap<Kind, KindDTO>();
            var kinds = Mapper.Map<IEnumerable<Kind>, IEnumerable<KindDTO>>(DataBase.Kinds.GetAll());
            return kinds;
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
