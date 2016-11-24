using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace FastTradeDAL.Entities
{
    public class InfoReviewTag
    {
        public int InfoReviewTagId { get; set; }

        [Required]
        public DateTime InfoReviewTagDate { get; set; }
        public int TagId { get; set; }

        //Связь с таблицей Tag
        public virtual Tag Tag { get; set; }
    }
}
