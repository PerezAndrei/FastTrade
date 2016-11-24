using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Ad
    {
        public int AdId { get; set; }
        
        [Required]
        public string Header { get; set; }

        [Required]
        public string Description { get; set; }

        [Required]
        public float Price { get; set; }

        // Связь с таблицей User
        public int UserId { get; set; }
        public virtual User User { get; set; }

        // Связь с таблицей Type
        public int KindId { get; set; }
        public virtual Kind Kind { get; set; }

        // Связь с таблицей Category
        public int CategoryId { get; set; }
        public virtual Category Category { get; set; }

        //Связь с таблицей Location
        [Required]
        public int LocationId { get; set; }
        public virtual Location LocationNew { get; set; }

        //Связь с таблицей Tag
        public virtual ICollection<Tag> Tags { get; set; }
        //связь с таблицей Image
        public virtual ICollection<Image> Images { get; set; }
        public virtual ICollection<InfoReviewAd> InfoReviewAds { get; set; }
        public Ad()
        {
            Tags = new List<Tag>();
            Images = new List<Image>();
            InfoReviewAds = new List<InfoReviewAd>();
        }
        public DateTime? DateAdd { get; set; }

        [Required]
        [MaxLength(200)]
        public string Address { get; set; }
       

    }
}
