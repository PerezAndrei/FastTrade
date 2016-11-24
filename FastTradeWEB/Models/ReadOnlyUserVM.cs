using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace FastTradeWEB.Models
{
    public class ReadOnlyUserVM
    {
        [HiddenInput(DisplayValue = false)]
        [Display(Name = "Код Пользователя")]
        public int UserId { get; set; }

        [HiddenInput]
        [Display(Name = "Имя")]
        public string FirstName { get; set; }

        [HiddenInput]
        [Display(Name = "Фамилия")]
        public string LastName { get; set; }

        [HiddenInput]
        [Display(Name = "E-mail")]
        public string Email { get; set; }

        [HiddenInput]
        [Display(Name = "День рождения")]
        public DateTime? BirthDay { get; set; }

        [HiddenInput]
        [Display(Name = "Телефон")]
        public decimal Phone { get; set; }

        [HiddenInput (DisplayValue=false)]
        [Display(Name = "Пароль")]
        public string Password { get; set; }
        public int? RoleId { get; set; }
        public DateTime? DateReg { get; set; }

         
    }
}