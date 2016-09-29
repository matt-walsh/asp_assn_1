using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBD3000Assn1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            themeDropDown.AutoPostBack = true;
        }

        protected void themeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (themeDropDown.SelectedValue != "0")
            {
                HttpContext.Current.Session["theme"] = themeDropDown.SelectedValue;    
            }
            
        }
    }
}
