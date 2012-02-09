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
    public partial class __user : BasePage
    {
        static string uname;
        static bool IsUserAuthenticated;
        static string RequestedPage = "";
        private Utility Util
        {
            get { return new Utility(); }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!string.IsNullOrEmpty(Request.QueryString["RequestedURL"]))
            {
                RequestedPage = Request.QueryString["RequestedURL"];

                while (RequestedPage.Contains("RequestedURL="))
                {
                    if (RequestedPage.Contains("RequestedURL="))
                    {
                        if (RequestedPage.Split('?').Length > 1)
                        {
                            RequestedPage = RequestedPage.Split('?')[1];
                        }
                    }
                    RequestedPage = HttpUtility.ParseQueryString(RequestedPage).Get("RequestedURL");
                }
                //string rawurl = Request.RawUrl;
            }


            uname = UserIdentity.UserName;
            Master.Uname = RequestedPage;
            //Check if user is logged in
            IsUserAuthenticated = Authentication.IsUserAuthenticated;

            //special case to check if user is logged in and is calling his own page
            if (RequestedPage == "$$UNAME$$")
            {
                RequestedPage = "/User/" + UserIdentity.UserName;
                this.Context.Response.Redirect(RequestedPage);
            }
            //not the user page but user list page
            else if (RequestedPage.ToLower().Contains("default.aspx") || RequestedPage.ToLower().Contains("index.aspx") || RequestedPage == "" || RequestedPage == null)
            {
                userlist.Visible = true;
                userpage.Visible = false;
                if (IsUserAuthenticated)
                    Master.Uname = uname;
                else
                    Master.Uname = "Register@ExamCrazy";
                //note: Register@ExamCrazy is used in Siteconfiguration too
                //infact a bad design, using like a magic no.
                string QueryString = Request.RawUrl +"RequestedPage==" +RequestedPage;
                memlist.QueryString = QueryString;
                if (QueryString.Split('?').Length > 1)
                {
                    QueryString = QueryString.Split('?')[1];
                    memlist.QueryString = QueryString;
                }

            }
            //requested page is users own page
            else if (RequestedPage == uname)
            {
                lblwelcomeusername.Text = "Welcome " + uname;
            }
            else
            {
                //check if user does not exists
                if (!ProviderUsersSearch.UserExists(RequestedPage))
                {
                    if (IsUserAuthenticated)
                    {
                        lblwelcomeusername.Text = "</br>RequestedPage does not exist";
                        Master.Uname = uname;
                        this.Context.Response.Redirect(ResolveUrl("~/User/"));
                    }
                    else
                    {
                        this.Context.Response.Redirect(ResolveUrl("~/User/"));
                    }
                }
                else
                {
                    if (!IsUserAuthenticated)
                        lblwelcomeusername.Text = "Welcome Guest";

                    lblwelcomeusername.Text = lblwelcomeusername.Text + "<br> You are watching " + RequestedPage + "'s Page";
                }

            }
            
        }
    }
}
