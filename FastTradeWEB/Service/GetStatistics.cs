using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using FastTradeWEB.Models;

namespace FastTradeWEB.Service
{
    public class GetStatistics
    {
        List<InfoReviewTagVM> InfoReview;
        Statistics[] stat;
        StatisticsForChart[] StatForChart;
        List<Statistics> listStat;
        int Num=1;
        int Count=1;
        public GetStatistics(List<InfoReviewTagVM> infoR)
        {
            InfoReview = infoR;
        }

        public List<Statistics> ListStat()
        {
            int sizeMass = InfoReview.Count;
            stat=new Statistics[sizeMass];
            int k = 0;
            var InfoReviewSortByDate = InfoReview.OrderBy(d => d.InfoReviewTagDate);
            foreach (var info in InfoReviewSortByDate)
            {
                stat[k]=new Statistics();
                stat[k].Count = Count;
                stat[k].Number = Num;
                stat[k].Year=info.InfoReviewTagDate.Year;
                stat[k].Month = info.InfoReviewTagDate.Month;
                stat[k].Day = info.InfoReviewTagDate.Day;
                stat[k].Hour = info.InfoReviewTagDate.Hour;
                stat[k].Minute = info.InfoReviewTagDate.Minute;
                stat[k].Sec = info.InfoReviewTagDate.Second;
                stat[k].Msec = info.InfoReviewTagDate.Millisecond;
                stat[k].MonthName = info.InfoReviewTagDate.ToString("MMMM", CultureInfo.CreateSpecificCulture("ru-RU"));
                stat[k].DayOfWeek = info.InfoReviewTagDate.ToString("dddd", CultureInfo.CreateSpecificCulture("ru-RU"));
                stat[k].DateForChart = new DateTime(stat[k].Year, stat[k].Month,1);
                stat[k].DateFull = info.InfoReviewTagDate;
                k++;
                Num++;
            }
            listStat = stat.ToList();
            return listStat;
        }
        public List<StatisticsForChart> ListStatForChart()
        {
            var listGroup = listStat.GroupBy(d => d.DateForChart)
                .OrderBy(o=>o.Key)
                .Select(g=> new { date=g.Key,count=g.Count()})
                .ToList();
            int countElem = listGroup.Count();
            if (countElem != 0)
            {
                var reviewFirst = listGroup.First();
                var reviewLast = listGroup.Last();

                DateTime dateFirs = reviewFirst.date;
                DateTime dateLast = reviewLast.date;

                TimeSpan allTime = dateLast.Subtract(dateFirs);
                int countDay = allTime.Days;
                double count = countDay / 29.9;

                // Если запросы в одном месяце
                if (count == 0 && dateFirs != null)
                {
                    count = 1;
                }

                int countMonth = Convert.ToInt32(Math.Ceiling(count));

                StatForChart = new StatisticsForChart[countMonth];
                for (int i = 0; i < countMonth; i++)
                {
                    StatForChart[i] = new StatisticsForChart();
                    if (i == 0)
                    {
                        StatForChart[i].DateForChart = dateFirs;
                    }
                    else
                    {
                        StatForChart[i].DateForChart = StatForChart[i - 1].DateForChart.AddMonths(1);
                    }
                    StatForChart[i].Year = StatForChart[i].DateForChart.Year;
                    StatForChart[i].Month = StatForChart[i].DateForChart.Month;
                    StatForChart[i].MonthName = StatForChart[i].DateForChart.ToString("MMM yyyy", CultureInfo.CreateSpecificCulture("ru-RU"));
                    StatForChart[i].Count = 0;
                    foreach (var stat in listGroup)
                    {
                        if (stat.date.Equals(StatForChart[i].DateForChart))
                        {
                            StatForChart[i].Count = stat.count;
                        }
                    }
                }
                List<StatisticsForChart> StatForChartList = StatForChart.ToList();
                return StatForChartList;
            }
            else return null; 
        }
    }
}