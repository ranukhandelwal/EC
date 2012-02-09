#region XD World Recipe V 2.8
// FileName: Login.ascx.cs

// Date Created: 2/14/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.UI;
using EC.BL;
using EC.Common;
using EC.Security;
using EC.BL.Providers.User;

public partial class Login : System.Web.UI.UserControl
{
    public int loginpanelno = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (loginpanelno == 1)
        {
            loginpanel1.Visible = true;
        }
        if (loginpanelno == 2)
        {
            loginpanel2.Visible = true;
        }
        ShowHideLoginControl(Authentication.Authenticate);
        HtmlLink csslink = new HtmlLink();
        if (Page.Header.FindControl("csscontentxd") == null)
        {
            csslink.ID = "csscontentxd";
            csslink.Attributes.Add("rel", "stylesheet");
            csslink.Attributes.Add("type", "text/css");
            csslink.Href = "CSS/contentxd.css";
            Page.Header.Controls.Add(csslink);
        }
        //Page.
            
    }

    public void login(string uname, string upass)
    {
        //Autheticate the username and password against the database record.
        if (Authentication.Validate(uname, Encryption.Encrypt(upass)))
        {
            //Check if the account has been activated through activation link.
            //If the user did not click the activation link sent through the email, then redirect to remind him/her to activate.
            /*if (!Blogic.IsUserActivated(uname, Encryption.Encrypt(upass)))
            {
                this.Context.Response.Redirect("redirectionpage.aspx?mode=notactive&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
            }*/

            //After the user is authenticated and activated, check if the user is not suspended.
            //If the user status is 0, that means the user is suspended due to site policy violation or other reasons.
            //We also have to get rid of any cookie in the users machine to prevent looping 
            //back to the previous page when we redirect the user.
            /*
            if (!Blogic.IsUserActive(uname, Encryption.Encrypt(upass)))
            {
                CookieLoginHelper.RemoveCookie();
                CookieLoginHelper.RemoveLoginSession();

                this.Context.Response.Redirect("redirectionpage.aspx?mode=suspended&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
            }
             */
            
            /*if ((this.rememberme.Checked))
            {*/

                if ((CookieLoginHelper.IsCookieSupported))
                {
                    CookieLoginHelper.CreateLoginCookie(uname, upass);
                }
                else 
                {
                    //If the users browser does not support cookie, use session instead.
                    CookieLoginHelper.CreateLoginSession(uname, upass);
                }
              
            /*}
            else 
            {
            //If the users did not check the remember me checkbox, store login credential in session.
            CookieLoginHelper.CreateLoginSession(uname, upass);
            
            }
            */
            this.Context.Response.Redirect("~/User/" + uname);
        }
        else
        {
            JavaScript.Alert("Invalid Login Credentials");
            ShowInvalidErrorMsg();
        }
    }

    public void Login_Click1(object sender, ImageClickEventArgs e)
    {
        login(this.uname1.Text, this.upass1.Text);
    }

    public void Login_Click2(object sender, EventArgs e)
    {
        login(this.uname2.Text, this.upass2.Text);
    }

    public void Logout_Click(object sender, EventArgs e)
    {
        CookieLoginHelper.RemoveCookie();
        CookieLoginHelper.RemoveLoginSession();

        //loginpanel1.Visible = true;
        //DisplayUserInfo.Visible = false;

        this.Context.Response.Redirect("~");
    }

    private void ShowInvalidErrorMsg()
    {
        this.uname1.Text = "";
        this.upass1.Text = "";
        this.uname2.Text = "";
        this.upass2.Text = "";
        if (loginpanelno == 1)
            invalidcredential1.Visible = true;
        if (loginpanelno == 2)
            invalidcredential2.Visible = true;
    }

    private void ShowHideLoginControl(bool IsUserPassValidation)
    {
        if (IsUserPassValidation)
        {
            //ShowPrivateMessageAlert();
            //ShowUnApprovedNewFriendAlert();
            loginpanel1.Visible = false;
            loginpanel2.Visible = false;
            DisplayUserInfo.Visible = true;
            lblusername.Text = "<a href='/Account/myaccount.aspx'>" + UserIdentity.UserName + "</a>";
            lblusername.Attributes.Add("onmouseover", "Tip('<a class=content12 href=/Account/userprofile.aspx?uid=" + UserIdentity.UserID + ">My Profile</a><br><a class=content12 href=/Account/myaccount.aspx>My Account</a><br><a class=content12 href=/Account/pmview.aspx>My Inbox</a><br><a class=content12 href=/Account/myfriendslist.aspx>My Friends List</a><br><a class=content12 href=/Account/members.aspx>Browse Members</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
            lblusername.Attributes.Add("onmouseout", "UnTip()");
        }
    }

    

    
}
