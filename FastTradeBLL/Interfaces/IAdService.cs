using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeDAL.Entities;

namespace FastTradeBLL.Interfaces
{
    public interface IAdService
    {
        
        IEnumerable<AdDTO> GetAds(int categoryId, int kindId, int regionId, int tagId);
        IEnumerable<AdDTO> GetAd(int id);
        AdDTO GetAdbyAdId(int id);
        void EditAd(AdDTO ad);
        void CreateAd(AdDTO ad);
        void DeleteAd(int adId);
        void Dispose();
    }
}
