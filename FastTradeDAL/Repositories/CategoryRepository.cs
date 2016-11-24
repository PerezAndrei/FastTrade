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
    public class CategoryRepository:IRepository<Category>
    {
        FastTradeContext db;
        public CategoryRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Category> GetAll()
        {
            return db.Categories.Include(c => c.Ads);
        }
        public Category Get(int id)
        {
            return db.Categories.Find(id);
        }
        public IEnumerable<Category> Find(Func<Category, bool> predicate)
        {
            return db.Categories.Where(predicate).ToList();
        }
        public Category FindOne(Func<Category, bool> predicate)
        {
            return db.Categories.FirstOrDefault(predicate);
        }
        public void Create(Category category)
        {
            db.Categories.Add(category);
        }
        public void Update(Category category)
        {
            db.Entry(category).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Category category = db.Categories.Find(id);
            if (category != null)
            {
                db.Categories.Remove(category);
            }
        }
    }
}
