using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using FastTradeDAL.Entities;

namespace FastTradeDAL.EF
{
    public class FastTradeContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Ad> Ads { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Kind> Kinds { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<Synonym> Synonyms { get; set; }
        public DbSet<InfoReviewAd> InfoReviewAds { get; set; }
        public DbSet<InfoReviewTag> InfoReviewTags { get; set; }


        //public FastTradeContext()
        //    : base(@"Data Source=(LocalDB)\v11.0; AttachDbFilename='|DataDirectory|\FastTrade.mdf';Integrated Security=True")
        //{

        //}
        public FastTradeContext(string connectionString)
            : base(connectionString)
        {

        }
        static FastTradeContext()
        {
            Database.SetInitializer<FastTradeContext>(new StoreDbInitializer());
        }


    }

    public class StoreDbInitializer : CreateDatabaseIfNotExists<FastTradeContext>
    {

    }
}
