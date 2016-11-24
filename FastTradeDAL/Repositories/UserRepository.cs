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
    public class UserRepository:IRepository<User>
    {
        FastTradeContext db;

        public UserRepository(FastTradeContext context)
        {
            this.db = context;
        }

        public IEnumerable<User> GetAll()
        {
            return db.Users;
        }
        public User Get(int id)
        {
            var user = db.Users.Find(id);
            return user;
        }
        public IEnumerable<User> Find(Func<User, bool> predicate)
        {
            return db.Users.Include(u=>u.Role).Where(predicate).ToList();
        }
        public User FindOne(Func<User, bool> predicate)
        {
            return db.Users.Include(u=>u.Role).FirstOrDefault(predicate);
        }
        public void Create(User user)
        {
            user.DateReg = DateTime.Now;
            db.Users.Add(user);
        }
        public void Update(User user)
        {
            //db.Entry(user).State = EntityState.Modified;
            var userCurrent=db.Users.Find(user.UserId);
            db.Entry(userCurrent).CurrentValues.SetValues(user);
        }
        public void Delete(int id)
        {
            User user = db.Users.Find(id);
            if (user != null)
            {
                db.Users.Remove(user);
            }
        }
    }
}
