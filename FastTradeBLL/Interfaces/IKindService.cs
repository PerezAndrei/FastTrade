using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeDAL.Entities;

namespace FastTradeBLL.Interfaces
{
    public interface IKindService
    {
        IEnumerable<KindDTO> GetKinds();
        void Dispose();
    }
}
