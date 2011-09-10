using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace ExamCrazy.User
{
    public partial class __user : System.Web.UI.Page
    {
        static string uname;
        static bool IsUserAuthenticated;
        static string RequestedPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check if user is logged in
            IsUserAuthenticated = Authentication.IsUserAuthenticated;

            //Check if Requested page is user's page or different page

            uname = UserIdentity.UserName;

            if (!string.IsNullOrEmpty(Request.QueryString["RequestedURL"]))
            {
                RequestedPage = Request.QueryString["RequestedURL"];
            }

            lblwelcomeusername.Text = "Welcome " + uname;

            if (RequestedPage == uname)
            {
                lblwelcomeusername.Text += "<br>This is your home page";

                if (IsUserAuthenticated)
                    lblwelcomeusername.Text += "<br>You are logged in";
            }
            else
            {
                lblwelcomeusername.Text += "<br>You are watching " + RequestedPage + "'s Page";
            }
        }
    }
}
