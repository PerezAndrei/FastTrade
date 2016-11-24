using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.DTO;
using FastTradeDAL;

namespace FastTradeBLL.Interfaces
{
    public interface ILocationService
    {
        IEnumerable<LocationDTO> GetLocations();
        LocationDTO GetLocationByRegion(string region);
        string[] GetRegionList(string type);
        void Dispose();
    }
}
