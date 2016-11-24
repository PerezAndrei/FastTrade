using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Category
    {
        public int CategoryId { get; set; }

        [Required]
        public string Name { get; set; }

        //Связь с таблицей Ad
        public virtual ICollection<Ad> Ads { get; set; }
        public Category()
        {
            Ads = new List<Ad>();
        }
    }
}
