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
    public class RoleRepository:IRepository<Role>
    {
        FastTradeContext db;

        public RoleRepository(FastTradeContext context)
        {
            this.db = context;
        }
        public IEnumerable<Role> GetAll()
        {
            return db.Roles.Include(r => r.Users);
        }
        public Role Get(int id)
        {
            return db.Roles.Find(id);
        }
        public IEnumerable<Role> Find(Func<Role, bool> predicate)
        {
            return db.Roles.Where(predicate).ToList();
        }
        public Role FindOne(Func<Role, bool> predicate)
        {
            return db.Roles.FirstOrDefault(predicate);
        }
        public void Create(Role role)
        {
            db.Roles.Add(role);
        }
        public void Update(Role role)
        {
            db.Entry(role).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            Role role = db.Roles.Find(id);
            if (role != null)
            {
                db.Roles.Remove(role);
            }
        }
    }
}
