using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class CategoryVM
    {
        public int CategoryId { get; set; }

        [Display(Name="Категория")]
        public string Name { get; set; }
    }
}