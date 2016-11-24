using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeDAL.Entities;

namespace FastTradeDAL.Interfaces
{
    public interface IUnitOfWork:IDisposable
    {
        IRepository<User> Users { get; }
        IRepository<Ad> Ads { get; }
        IRepository<Role> Roles { get; }
        IRepository<Kind> Kinds { get; }
        IRepository<Category> Categories { get; }
        IRepository<Tag> Tags { get; }
        IRepository<Image> Images { get; }
        IRepository<Location> Locations { get; }
        void Save();
    }
}
