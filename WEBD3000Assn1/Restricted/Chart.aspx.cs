using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace WEBD3000Assn1.Restricted
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_PreInit(Object sender, EventArgs e)
        {
            this.Page.Theme = (String)HttpContext.Current.Session["theme"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            publisherRadioBtn.AutoPostBack = true;
            typeRadioBtn.AutoPostBack = true;
            priceRangeRadioBtn.AutoPostBack = true;

        }

        public void SortDataByPublisher()
        {
            ytdSalesChart.Series["Series1"].XValueMember = "pub_id";
            ytdSalesChart.DataBind();
        }

        public void SortDataByType()
        {
            ytdSalesChart.Series["Series1"].XValueMember = "type";
            ytdSalesChart.DataBind();
        }

        public void SortDataByPriceRange(string range)
        {
            ytdSalesChart.Series["Series1"].XValueMember = "price";
            switch (range)
            {
                case "Range1":
                    {
                        LinqDataSource1.Where = "price > 0.00 AND price < 10.00";
                        break;
                    }
                case "Range2":
                    {
                        LinqDataSource1.Where = "price > 10.00 AND price < 20.00";
                        break;
                    }
                case "Range3":
                    {
                        LinqDataSource1.Where = "price > 20.00";
                        break;
                    }

                default:
                    break;
            }

            ytdSalesChart.DataBind();
        }

        protected void publisherRadioBtn_CheckedChanged(object sender, EventArgs e)
        {
            if (publisherRadioBtn.Checked == true)
            {
                SortDataByPublisher();
            }
        }

        protected void typeRadioBtn_CheckedChanged(object sender, EventArgs e)
        {
            if (typeRadioBtn.Checked == true)
            {
                SortDataByType();
            }
        }

        protected void priceRangeRadioBtn_CheckedChanged(object sender, EventArgs e)
        {
            if (priceRangeRadioBtn.Checked == true)
            {
                SortDataByPriceRange(priceRangeDDBox.SelectedValue);
            }
        }

        protected void chartTypeDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch(chartTypeDDList.SelectedValue)
            {
                case "Pie":
                    {
                        ytdSalesChart.Series["Series1"].ChartType = SeriesChartType.Pie;
                        break;
                    }
                case "Bar":
                    {
                        ytdSalesChart.Series["Series1"].ChartType = SeriesChartType.Bar;
                        break;
                    }
                case "Line":
                    {
                        ytdSalesChart.Series["Series1"].ChartType = SeriesChartType.Line;
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }
    }
}