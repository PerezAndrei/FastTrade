using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeDAL.Entities;

namespace FastTradeBLL.DTO
{
    public class InfoReviewTagDTO
    {
        public int InfoReviewTagId { get; set; }

        public DateTime InfoReviewTagDate { get; set; }
        public int TagId { get; set; }

        //Связь с таблицей Tag
        public virtual TagDTO Tag { get; set; }
    }
}
