﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamCrazy
{
    public partial class LeftRight : System.Web.UI.MasterPage
    {
        public int PAGEID;
        public string HeaderFilter = "ano"; //default value
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.PAGEID = this.PAGEID;
            Master.HeaderFilter = this.HeaderFilter;
            login.loginpanelno = 1;

        }
    }
}
