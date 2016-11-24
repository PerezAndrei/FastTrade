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
    public class AdRepository : IRepository<Ad>
    {
        private FastTradeContext db;
        public AdRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Ad> GetAll()
        {
            return db.Ads.Include(c=>c.Category).Include(k=>k.Kind).Include(l=>l.LocationNew).Include(t=>t.Tags);
        }
        public Ad Get(int id)
        {
            return db.Ads.Find(id);
        }
        public IEnumerable<Ad> Find(Func<Ad, bool> predicate)
        {
            return db.Ads.Where(predicate).ToList();
        }
        public Ad FindOne(Func<Ad, bool> predicate)
        {
            return db.Ads.FirstOrDefault(predicate);
        }
        public void Create(Ad ad)
        {
            var tagList = db.Tags.ToList<Tag>();
            Tag[] tagsAdd = ad.Tags.ToArray();
            ad.Tags.Clear();
            ad.DateAdd = DateTime.Now;
            if (ad.Tags != null)
            {
                foreach (Tag tagAdd in tagsAdd)
                {
                    var tagExist = tagList.Where(t => t.TagName == tagAdd.TagName).FirstOrDefault();
                    if (tagExist != null)
                    {
                        tagExist.CountAd++;
                        ad.Tags.Add(tagExist);
                    }
                    else
                    {
                        tagAdd.CountAd++;
                        ad.Tags.Add(tagAdd);
                    }
                }
            }
            db.Ads.Add(ad);
        }
        public void Update(Ad adNew)
        {
            Ad adEdit = db.Ads.Find(adNew.AdId);
           

            if (adNew.Header != null)
            {
                adEdit.CategoryId = adNew.CategoryId;
                adEdit.KindId = adNew.KindId;
                adEdit.LocationId = adNew.LocationId;
                adEdit.Header = adNew.Header;
                adEdit.Description = adNew.Description;
                adEdit.Address = adNew.Address;
                adEdit.Price = adNew.Price;
            }

            if (adNew.Tags != null)
            {
                var tagList = db.Tags.ToList<Tag>();
                Tag[] tagsEdit = adEdit.Tags.ToArray();
                Tag[] tagsNew = adNew.Tags.ToArray();
                bool concidence = false;
                int countConcidence = 0;

                //удаление удаленных тегов
                foreach (var tagEdit in tagsEdit)
                {
                    foreach (var tagNew in tagsNew)
                    {
                        if (tagEdit.TagName == tagNew.TagName)
                        {
                            countConcidence++;
                        }
                    }

                    if (countConcidence==0)
                    {
                        Tag tagDel = tagList.Where(t => t.TagId == tagEdit.TagId).FirstOrDefault();
                        tagDel.CountAd--;
                        tagDel.Ads.Remove(adEdit);
                        adEdit.Tags.Remove(tagDel);
                    }
                    countConcidence = 0;
                }

                //удаление уже существующих тегов
                foreach (var tagNew in tagsNew)
                {
                    foreach (var tagEdit in tagsEdit)
                    {
                        if (tagNew.TagName==tagEdit.TagName)
                        {
                            concidence = true;
                        }
                    }
                    if (concidence)
                    {
                        adNew.Tags.Remove(tagNew);
                    }

                    concidence = false;
                }

                //добавление к модели новых существующих тегов и новых несуществующих тегов
                Tag[] tagsAdd = adNew.Tags.ToArray();
                foreach(var tagAdd in tagsAdd)
                {
                    var tagExist=tagList.Where(t=>t.TagName==tagAdd.TagName).FirstOrDefault();
                    if (tagExist != null)
                    {
                        tagExist.CountAd++;
                        adEdit.Tags.Add(tagExist);
                    }
                    else
                    {
                        //tagList.Add(tagAdd);
                        //db.SaveChanges();
                        //var tagNewAdd = tagList.Where(t => t.TagName == tagAdd.TagName).FirstOrDefault();
                        tagAdd.CountAd++;
                        adEdit.Tags.Add(tagAdd);
                    }
                }
            }
            //db.Entry(adEdit).State = EntityState.Modified;
            db.SaveChanges();
        }
        public void Delete(int id)
        {
            Ad ad = db.Ads.Find(id);
            if (ad != null)
            {
                foreach (var tag in ad.Tags)
                {
                    tag.CountAd--;
                }
                db.Ads.Remove(ad); 
            }
        }
    }
}
