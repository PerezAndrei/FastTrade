using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class TagVM
    {
        public int TagId { get; set; }

        [Required(ErrorMessage = "Введите тэг")]
        public string TagName { get; set; }
        public int CountAd { get; set; }
        public int CountReq { get; set; }
        public virtual ICollection<AdVM> Ads { get; set; }
        public virtual ICollection<InfoReviewTagVM> InfoReviewTags { get; set; }
    }
}