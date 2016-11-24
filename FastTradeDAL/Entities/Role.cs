using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Role
    {
        public int RoleId { get; set; }
        public string RoleName { get; set; }

        //сявзь с таблицей User
        public virtual ICollection <User> Users { get; set; }
        public Role()
        {
            Users=new List<User>();
        }
    }
}
