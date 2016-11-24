using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FastTradeDAL.Entities;

namespace FastTradeBLL.DTO
{
    public class AdDTO
    {
        public int AdId { get; set; }
        public string Header { get; set; }
        public string Description { get; set; }
        public float Price { get; set; }
        public int UserId { get; set; }
        public int KindId { get; set; }
        public DateTime? DateAdd { get; set; }
        public string Address { get; set; }
        public int LocationId { get; set; }
        public int CategoryId { get; set; }
        public string KindName { get; set; }
        public string CategoryName { get; set; }
        public string LocationName { get; set; }

        public virtual UserDTO User { get; set; }
        public virtual KindDTO Kind { get; set; }
        public virtual CategoryDTO Category { get; set; }
        public virtual LocationDTO LocationNew { get; set; }

        public virtual ICollection<TagDTO> Tags { get; set; }
        public virtual ICollection<ImageDTO> Images { get; set; }
    }
}
