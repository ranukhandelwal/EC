using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;

public partial class AddFeed : BasePageAdmin
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmanagerjob.Text = "Add Job";
        lblmanagerannounce.Text = "Add Announcement";
        lblmanagerupdate.Text = "Add Update";

    }
}

