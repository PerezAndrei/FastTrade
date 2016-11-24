using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FastTradeWEB.Models
{
    public class ImageVM
    {
        public int ImageId { get; set; }
        public string Name { get; set; }
        public string PathToSmall { get; set; }
        public string PathToOriginal { get; set; }
        public int AdId { get; set; }
    }
}