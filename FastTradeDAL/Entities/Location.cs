using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace FastTradeDAL.Entities
{
    public class Location
    {
        public int LocationId { get; set; }

        [Required]
        [MaxLength(30)]
        public string LocationName { get; set; }
        public virtual ICollection<Ad> Ads { get; set; }
        public Location()
        {
            Ads=new List<Ad>(); 
        }
    }
}
