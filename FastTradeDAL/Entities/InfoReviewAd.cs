using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace FastTradeDAL.Entities
{
    public class InfoReviewAd
    {
        public int InfoReviewAdId { get; set; }

        [Required]
        public DateTime InfoReviewAdDate { get; set; }
        public int AdId { get; set; }

        //Связь с таблицей Ad
        public virtual Ad Ad { get; set; }
    }
}
