using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
//using System.Web.Mvc;

namespace FastTradeWEB.Models
{
    public class UserVM
    {
        [Display(Name = "Код Пользователя")]
        public int UserId { get; set; }

        //[HiddenInput]
        [Required(ErrorMessage = "Введите Имя")]
        [Display(Name = "Имя")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Введите Фамилию")]
        [Display(Name = "Фамилия")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Введите Email")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Введенное значение не является e-mail адрессом!")]
        [Display(Name = "E-mail")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Введите День рождение")]
        [Display(Name = "День рождения")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? BirthDay { get; set; }

        [Required(ErrorMessage = "Введите Телефон")]
        [Display(Name = "Телефон")]
        [DisplayFormat(DataFormatString = "{0:F0}")]
        public decimal Phone { get; set; }

        [Required(ErrorMessage = "Введите Пароль")]
        [Display(Name = "Пароль")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "Повторите Пароль")]
        [DataType(DataType.Password)]
        [Display(Name = "Повторите пароль")]
        [Compare("Password", ErrorMessage = "Пароли не совпадают")]
        public string ConfirmPassword { get; set; }

        [Display(Name = "Код Роли")]
        public int? RoleId { get; set; }
        public string RoleName { get; set; }
        public DateTime? DateReg { get; set; }
    }
}