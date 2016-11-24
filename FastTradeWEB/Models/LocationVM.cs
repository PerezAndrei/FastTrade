using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class LocationVM
    {
        public int LocationId { get; set; }

        [Display(Name="Регион")]
        public string LocationName { get; set; }
    }
}