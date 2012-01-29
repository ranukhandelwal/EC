﻿using System;
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
        static string RequestedPage = "";
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

            Master.Uname = RequestedPage;

            if (RequestedPage == "$$UNAME$$")
            {
                RequestedPage = "/User/" + UserIdentity.UserName;
                this.Context.Response.Redirect(RequestedPage);
            }
            else if (RequestedPage.ToLower().Contains("default.aspx") || RequestedPage.ToLower().Contains("index.aspx") )
            {
                Master.userpanel = 1;
                if (IsUserAuthenticated)
                    Master.Uname = uname;
                else
                    Master.Uname = "Register@ExamCrazy";
                //note: Register@ExamCrazy is used in Siteconfiguration too
                //infact a bad design, using like a magic no.
            }
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
