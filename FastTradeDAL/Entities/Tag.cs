using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Tag
    {
        public int TagId { get; set; }

        [Required]
        public string TagName { get; set; }
        public int CountAd { get; set; }
        public int CountReq { get; set; }
        //Связь с таблицей Ad
        public virtual ICollection<Ad> Ads { get; set; }
        public virtual ICollection<Synonym> Synonyms { get; set; }
        public virtual ICollection<InfoReviewTag> InfoReviewTags { get; set; }
        public Tag()
        {
            Ads = new List<Ad>();
            Synonyms = new List<Synonym>();
            InfoReviewTags = new List<InfoReviewTag>();
        }
    }
}
