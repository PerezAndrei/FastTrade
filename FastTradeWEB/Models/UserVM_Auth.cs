using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FastTradeWEB.Models
{
    public class UserVM_Auth
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public DateTime? BirthDay { get; set; }
        public decimal Phone { get; set; }
        public string Password { get; set; }
        public int? RoleId { get; set; }
        public string RoleName { get; set; }
    }
}