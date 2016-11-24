using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using FastTradeDAL.EF;
using FastTradeDAL.Entities;
using FastTradeDAL.Interfaces;

namespace FastTradeDAL.Repositories
{
    public class LocationRepository:IRepository<Location>
    {
        FastTradeContext db;

        public LocationRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Location> GetAll()
        {
            return db.Locations.Include(p => p.Ads);
        }
        public Location Get(int id)
        {
            return db.Locations.Find(id);
        }
        public IEnumerable<Location> Find(Func<Location, bool> predicate)
        {
            return db.Locations.Where(predicate).ToList();
        }
        public Location FindOne(Func<Location, bool> predicate)
        {
            return db.Locations.FirstOrDefault(predicate);
        }
        public void Create(Location location)
        {
            db.Locations.Add(location);
        }
        public void Update(Location location)
        {
            db.Entry(location).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Location location = db.Locations.Find(id);
            if (location != null)
            {
                db.Locations.Remove(location);
            }
        }
    }
}
