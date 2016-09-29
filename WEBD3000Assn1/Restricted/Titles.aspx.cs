using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WEBD3000Assn1.Restricted
{
    public partial class Titles : System.Web.UI.Page
    {

        protected void Page_PreInit(Object sender, EventArgs e)
        {
            this.Page.Theme = (String)HttpContext.Current.Session["theme"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addToCartButton_Command(object sender, CommandEventArgs e)
        {
            //string index = e.CommandArgument.ToString();

            ////GridViewRow row = titleGridView.Rows[];
            ////DataRowView rowView = (DataRowView)row.DataItem;
            //int titleId = int.Parse(rowView["titleId"].ToString());
            //string title = rowView["title"].ToString();
            //string type = rowView["type"].ToString();
            //string pubId = rowView["pubId"].ToString();
            //double price = (Double)rowView["price"];
            //string memo = rowView["memo"].ToString();

            //CartItem newCartItem = new CartItem(titleId,title,type,pubId,price,memo,1);
            //Cart.AddItemToCart(newCartItem);
        }

        protected void addToCartButton_Click(object sender, EventArgs e)
        {

        }
    }
}