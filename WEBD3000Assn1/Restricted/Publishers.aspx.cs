﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBD3000Assn1.Restricted
{
    public partial class Publishers : System.Web.UI.Page
    {

        protected void Page_PreInit(Object sender, EventArgs e)
        {
            this.Page.Theme = (String)HttpContext.Current.Session["theme"];
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}