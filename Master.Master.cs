﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamCrazy
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();
            /*
            baseHref.Attributes["href"] = Request.Url.AbsolutePath;
             * */

        }
    }
}
