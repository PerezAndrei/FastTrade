using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace FastTradeDAL.Entities
{
    public class Synonym
    {
        public int SynonymId { get; set; }

        [Required]
        [MaxLength(100)]
        public string SynonymName { get; set; }

        //Связь с таблицей Tag
        public int TagId { get; set; }
        public virtual Tag Tag { get; set; }
    }
}
