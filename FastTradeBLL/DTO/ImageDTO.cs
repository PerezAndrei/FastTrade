using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastTradeBLL.DTO
{
    public class ImageDTO
    {
        public int ImageId { get; set; }
        public string Name { get; set; }
        public string PathToSmall { get; set; }
        public string PathToOriginal { get; set; }
        public int? AdId { get; set; }
    }
}
