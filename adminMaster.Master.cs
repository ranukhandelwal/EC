using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
//using EC.BL.Providers.Announcements;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;

public partial class adminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = "Welcome Admin:&nbsp;" + UserIdentity.AdminUsername;
    }
}

