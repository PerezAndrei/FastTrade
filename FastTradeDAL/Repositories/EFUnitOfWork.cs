using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeDAL.EF;
using FastTradeDAL.Entities;
using FastTradeDAL.Interfaces;

namespace FastTradeDAL.Repositories
{
    public class EFUnitOfWork:IUnitOfWork
    {
        private UserRepository userRepository;
        private RoleRepository roleRepository;
        private AdRepository adRepository;
        private KindRepository kindRepository;
        private CategoryRepository categoryRepository;
        private TagRepository tagRepository;
        private ImageRepository imageRepository;
        private LocationRepository locationRepository;
        private bool disposed = false;

        private FastTradeContext db;
        public EFUnitOfWork(string connectionString)
        {
            db = new FastTradeContext(connectionString);
        }

        public IRepository<User> Users
        {
            get
            {
                if (userRepository == null)
                {
                    userRepository = new UserRepository(db);
                }
                return userRepository;
            }
        }
        public IRepository<Ad> Ads 
        {
            get
            {
                if (adRepository == null)
                {
                    adRepository = new AdRepository(db);
                }
                return adRepository;
 
            }
        }
        public IRepository<Role> Roles 
        {
            get
            {
                if (roleRepository == null)
                {
                    roleRepository = new RoleRepository(db);
                }
                return roleRepository;
            }
        }
        public IRepository<Kind> Kinds 
        {
            get
            {
                if (kindRepository == null)
                {
                    kindRepository = new KindRepository(db);
                }
                return kindRepository;
            }
        }
        public IRepository<Category> Categories 
        {
            get
            {
                if (categoryRepository == null)
                {
                    categoryRepository = new CategoryRepository(db);
                }
                return categoryRepository;
            }
        }
        public IRepository<Tag> Tags 
        {
            get
            {
                if (tagRepository == null)
                {
                    tagRepository = new TagRepository(db);
                }
                return tagRepository;
            }
        }
        public IRepository<Image> Images 
        {
            get
            {
                if (imageRepository == null)
                {
                    imageRepository = new ImageRepository(db);
                }
                return imageRepository;
            }
        }

        public IRepository<Location> Locations
        {
            get
            {
                if (locationRepository == null)
                {
                    locationRepository = new LocationRepository(db);
                }
                return locationRepository;
            }
        }

        public void Save()
        {
            db.SaveChanges();
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        public virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    db.Dispose();
                }
                this.disposed = true;
            }
        }
    }
}
