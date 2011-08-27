using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.Security;
using EC.BL.Providers.User;

public partial class sidemenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {  
        if (Authentication.IsUserAuthenticated)
        {
            if (UserIdentity.UserRole == "Administrator")
            {
                PanelSideMenuShowAdminLoginLink.Visible = true;
                PanelSideMenuShowUsersLinks.Visible = false;
                PanelSideMenuHideUsersLinks.Visible = false;
            }
            else
            {
                PanelSideMenuShowUsersLinks.Visible = true;
                PanelSideMenuShowAdminLoginLink.Visible = false;
                PanelSideMenuHideUsersLinks.Visible = false;
            }
        }
        else
        {
            PanelSideMenuShowAdminLoginLink.Visible = false;
            PanelSideMenuShowUsersLinks.Visible = false;
            PanelSideMenuHideUsersLinks.Visible = true;
        }
    }
}
