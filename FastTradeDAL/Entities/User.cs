using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class User
    {
        [Display(Name="Пользователь")]
        public int UserId { get; set; }

        [Required(ErrorMessage="Ведите имя")]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [Required]
        public string Email { get; set; }
        public DateTime? BirthDay { get; set; }
        public decimal Phone { get; set; }

        [Required]
        public string Password { get; set; }

        //Связь с таблицей Role
        public int? RoleId { get; set; }
        public virtual Role Role { get; set; }

        //Связь с таблицей Ad
        public virtual ICollection<Ad> Ads { get; set; }
        public User()
        {
            Ads = new List<Ad>();
        }
        public DateTime? DateReg { get; set; }
    }
}
