using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FastTradeWEB.Models
{
    public class InfoReviewTagVM
    {
        public int InfoReviewTagId { get; set; }

        public DateTime InfoReviewTagDate { get; set; }
        public int TagId { get; set; }

        //Связь с таблицей Tag
        //public TagVM Tag { get; set; }
    }
}