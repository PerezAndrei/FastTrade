using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FastTradeBLL.DTO;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class AdVM
    {
        public int AdId { get; set; }

        [Required(ErrorMessage = "Введите заголовок")]
        [Display(Name = "Заголовок")]
        [MaxLength(80, ErrorMessage="Превышено максимальное количество символов 80")]
        [MinLength(30, ErrorMessage = "Минимальное количество символов: 30")]
        [DataType(DataType.MultilineText)]
        public string Header { get; set; }

        [Required(ErrorMessage = "Введите описание")]
        [Display(Name = "Описание")]
        [MaxLength(500, ErrorMessage = "Превышено максимальное колличество символов")]
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [Required(ErrorMessage = "Введите цену")]
        [Display(Name = "Цена")]
        public float Price { get; set; }
        public int UserId { get; set; }
        public int KindId { get; set; }
        public int CategoryId { get; set; }
        public DateTime? DateAdd { get; set; }

        [Required(ErrorMessage = "Введите адрес")]
        [Display(Name = "Адрес")]
        public string Address { get; set; }
        public int LocationId { get; set; }
        public string KindName { get; set; }
        public string CategoryName { get; set; }
        public string LocationName { get; set; }

        public virtual UserVM User { get; set; }
        public virtual KindVM Kind { get; set; }
        public virtual CategoryVM Category { get; set; }
        public virtual LocationVM LocationNew { get; set; }

        [Display(Name = "Теги")]
        public virtual ICollection<TagVM> Tags { get; set; }

        [Display(Name = "Изображения")]
        public virtual ICollection<ImageVM> Images { get; set; }
    }
}