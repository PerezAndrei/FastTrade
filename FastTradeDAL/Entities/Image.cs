using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeDAL.Entities
{
    public class Image
    {
        public int ImageId { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string PathToSmall { get; set; }

        [Required]
        public string PathToOriginal { get; set; }

        //связь с таблицей Ad
        public int? AdId { get; set; }
        public virtual Ad Ad { get; set; }

    }

}
