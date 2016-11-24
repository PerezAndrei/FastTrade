using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeBLL.Interfaces;
using FastTradeBLL.DTO;
using FastTradeBLL.Infrastructure;
using FastTradeDAL.Interfaces;
using FastTradeDAL.Repositories;
using FastTradeDAL.Entities;
using AutoMapper;

namespace FastTradeBLL.Services
{
    public class LocationService: ILocationService
    {
        IUnitOfWork DataBase { get; set; }
        public LocationService(IUnitOfWork uow)
        {
            DataBase = uow;
        }
        public IEnumerable<LocationDTO> GetLocations()
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<Location, LocationDTO>());
            var mapper = config.CreateMapper();
            var locations = mapper.Map<IEnumerable<Location>, IEnumerable<LocationDTO>>(DataBase.Locations.GetAll());
            return locations;
        }
        public LocationDTO GetLocationByRegion(string region)
        {
            Mapper.Initialize(cfg => cfg.CreateMap<Location, LocationDTO>());
            var location = Mapper.Map<Location, LocationDTO>(DataBase.Locations.FindOne(l=>l.LocationName==region));
            return location; 
        }
        public string[] GetRegionList(string type)
        {
            var config = new MapperConfiguration(cfg => cfg.CreateMap<Location, LocationDTO>());
            var mapper = config.CreateMapper();
            IEnumerable<LocationDTO> locations = mapper.Map<IEnumerable<Location>, IEnumerable<LocationDTO>>(DataBase.Locations.GetAll());
            int countLoc = locations.Count<LocationDTO>();
            if (type == "name")
            {
                string[] regions = new string[countLoc];
                int i = -1;
                foreach (LocationDTO l in locations)
                {
                    i++;
                    regions[i] = l.LocationName;
                }
                return regions;
            }

            else
            {
                string[] ids = new string[countLoc];
                int i = -1;
                foreach (LocationDTO l in locations)
                {
                    i++;
                    ids[i] = l.LocationId.ToString();
                }
                return ids;
            }
        }
        public void Dispose()
        {
            DataBase.Dispose();
        }
    }
}
