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
    public class ImageRepository:IRepository<Image>
    {
        FastTradeContext db;

        public ImageRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Image> GetAll()
        {
            return db.Images;
        }
        public Image Get(int id)
        {
            return db.Images.Find(id);
        }
        public IEnumerable<Image> Find(Func<Image, bool> predicate)
        {
            return db.Images.Where(predicate).ToList();
        }
        public Image FindOne(Func<Image, bool> predicate)
        {
            return db.Images.FirstOrDefault(predicate);
        }
        public void Create(Image image)
        {
            db.Images.Add(image);
        }
        public void Update(Image image)
        {
            db.Entry(image).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Image image = db.Images.Find(id);
            if (image != null)
            {
                db.Images.Remove(image);
            }
        }
    }
}
