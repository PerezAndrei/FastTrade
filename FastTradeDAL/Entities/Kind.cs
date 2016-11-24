using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Kind
    {
        public int KindId { get; set; }

        [Required]
        public string Name { get; set; }

        //связь с таблицей Ad
        public virtual ICollection<Ad> Ads { get; set; }
        public Kind()
        {
            Ads = new List<Ad>();
        }
    }
}
