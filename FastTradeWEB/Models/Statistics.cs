using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FastTradeBLL.DTO;
using System.ComponentModel.DataAnnotations;

namespace FastTradeWEB.Models
{
    public class Statistics
    {
        public int Number { get; set; }
        public int Year { get; set; }
        public int Month { get; set; }
        public string MonthName { get; set; }
        public int Day { get; set; }
        public string DayOfWeek { get; set; }
        public int Hour { get; set; }
        public int Minute { get; set; }
        public int Sec { get; set; }
        public int Msec { get; set; }
        public int Count { get; set; }
        public DateTime DateForChart { get; set; }
        public DateTime DateFull { get; set; }
    }
}