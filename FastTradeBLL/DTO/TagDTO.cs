using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeBLL.DTO
{
    public class TagDTO
    {
        public int TagId { get; set; }
        public string TagName { get; set; }
        public int CountAd { get; set; }
        public int CountReq { get; set; }
        public virtual ICollection<AdDTO> Ads { get; set; }
        public virtual ICollection<InfoReviewTagDTO> InfoReviewTags { get; set; }
    }
}
