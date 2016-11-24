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
    public class KindRepository:IRepository<Kind>
    {
        FastTradeContext db;

        public KindRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Kind> GetAll()
        {
            return db.Kinds.Include(p => p.Ads);
        }
        public Kind Get(int id)
        {
            return db.Kinds.Find(id);
        }
        public IEnumerable<Kind> Find(Func<Kind, bool> predicate)
        {
            return db.Kinds.Where(predicate).ToList();
        }
        public Kind FindOne(Func<Kind, bool> predicate)
        {
            return db.Kinds.FirstOrDefault(predicate);
        }
        public void Create(Kind kind)
        {
            db.Kinds.Add(kind);
        }
        public void Update(Kind kind)
        {
            db.Entry(kind).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Kind kind = db.Kinds.Find(id);
            if (kind != null)
            {
                db.Kinds.Remove(kind);
            }
        }
    }
}
