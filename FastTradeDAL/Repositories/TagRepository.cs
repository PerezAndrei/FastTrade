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
    public class TagRepository:IRepository<Tag>
    {
        FastTradeContext db;

        public TagRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Tag> GetAll()
        {
            return db.Tags;
        }
        public Tag Get(int id)
        {
            return db.Tags.Include(t=>t.Ads).FirstOrDefault(t=>t.TagId==id);
        }
        public IEnumerable<Tag> Find(Func<Tag, bool> predicate)
        {
            return db.Tags.Where(predicate).ToList();
        }
        public Tag FindOne(Func<Tag, bool> predicate)
        {
            return db.Tags.FirstOrDefault(predicate);
        }
        public void Create(Tag tag)
        {
            db.Tags.Add(tag);
        }
        public void Update(Tag tag)
        {
            db.Entry(tag).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Tag tag = db.Tags.Find(id);
            if (tag != null)
            {
                db.Tags.Remove(tag);
            }
        }
    }
}
