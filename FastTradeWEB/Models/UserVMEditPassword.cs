using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class UserVMEditPassword
    {
        [Required(ErrorMessage = "Введите текущий пароль")]
        [DataType(DataType.Password)]
        [Display(Name = "Текущий пароль")]
        public string PasswordCurrent { get; set; }

        [Required(ErrorMessage = "Введите новый пароль")]
        [DataType(DataType.Password)]
        [Display(Name = "Новый пароль")]
        public string PasswordNew { get; set; }

        [Required(ErrorMessage = "Повторите новый пароль")]
        [DataType(DataType.Password)]
        [Display(Name = "Поворите новый пароль")]
        [Compare("PasswordNew", ErrorMessage = "Пароли не совпадают")]
        public string PasswordNewConfirm { get; set; }
    }
}