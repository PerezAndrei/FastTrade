using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class KindVM
    {
        public int KindId { get; set; }

        [Display(Name = "Тип")]
        public string Name { get; set; }
    }
}