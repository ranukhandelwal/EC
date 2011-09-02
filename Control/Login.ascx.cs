#region XD World Recipe V 2.8
// FileName: Login.ascx.cs
// Author: Dexter Zafra
// Date Created: 2/14/2009
// Website: www.ex-designz.net
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
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowHideLoginControl(Authentication.Authenticate);
    }

    public void Login_Click(object sender, ImageClickEventArgs e)
    {
        //Autheticate the username and password against the database record.
        if (Authentication.Validate(this.uname.Text, Encryption.Encrypt(this.upass.Text)))
        {
            //Check if the account has been activated through activation link.
            //If the user did not click the activation link sent through the email, then redirect to remind him/her to activate.
            /*if (!Blogic.IsUserActivated(this.uname.Text, Encryption.Encrypt(this.upass.Text)))
            {
                this.Context.Response.Redirect("redirectionpage.aspx?mode=notactive&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
            }*/

            //After the user is authenticated and activated, check if the user is not suspended.
            //If the user status is 0, that means the user is suspended due to site policy violation or other reasons.
            //We also have to get rid of any cookie in the users machine to prevent looping 
            //back to the previous page when we redirect the user.
            if (!Blogic.IsUserActive(this.uname.Text, Encryption.Encrypt(this.upass.Text)))
            {
                CookieLoginHelper.RemoveCookie();
                CookieLoginHelper.RemoveLoginSession();

                this.Context.Response.Redirect("redirectionpage.aspx?mode=suspended&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
            }
            /*
            if ((this.rememberme.Checked))
            {
                if ((Request.Browser.Cookies))
                {
                    CookieLoginHelper.CreateLoginCookie(this.uname.Text, this.upass.Text);
                }
                else 
                {
                    //If the users browser does not support cookie, use session instead.
                    CookieLoginHelper.CreateLoginSession(this.uname.Text, this.upass.Text);
                }
            }
            else 
            {
                //If the users did not check the remember me checkbox, store login credential in session.
                CookieLoginHelper.CreateLoginSession(this.uname.Text, this.upass.Text);
            }
            */
            this.Context.Response.Redirect("redirectionpage.aspx?mode=welcome&username=" + this.uname.Text + "&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
        }
        else
        {
            ShowInvalidErrorMsg();
        }
    }

    public void Logout_Click(object sender, EventArgs e)
    {
        CookieLoginHelper.RemoveCookie();
        CookieLoginHelper.RemoveLoginSession();

        loginpanel.Visible = true;
        DisplayUserInfo.Visible = false;

        this.Context.Response.Redirect("redirectionpage.aspx?mode=thankyoulogout&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
    }

    private void ShowInvalidErrorMsg()
    {
        this.uname.Text = "";
        this.upass.Text = "";
        lblinvalidcredential.Visible = true;
    }

    private void ShowHideLoginControl(bool IsUserPassValidation)
    {
        if (IsUserPassValidation)
        {
            ShowPrivateMessageAlert();
            ShowUnApprovedNewFriendAlert();
            loginpanel.Visible = false;
            DisplayUserInfo.Visible = true;
            lblusername.Text = "<a href='myaccount.aspx'>" + UserIdentity.UserName + "</a>";
            lblusername.Attributes.Add("onmouseover", "Tip('<a class=content12 href=userprofile.aspx?uid=" + UserIdentity.UserID + ">My Profile</a><br><a class=content12 href=myaccount.aspx>My Account</a><br><a class=content12 href=pmview.aspx>My Inbox</a><br><a class=content12 href=mycookbook.aspx>My Cook Book</a><br><a class=content12 href=myfriendslist.aspx>My Friends List</a><br><a class=content12 href=members.aspx>Browse Members</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
            lblusername.Attributes.Add("onmouseout", "UnTip()");
        }
    }

    private void ShowPrivateMessageAlert()
    {
        int CountNewMsg = Blogic.GetUserNewPrivateMessageCount(UserIdentity.UserID);

        if (CountNewMsg == 0)
        {
            lblPrivateMessageAlert.Visible = true;
            lblPrivateMessageAlert.Text = "(" + CountNewMsg + ") <img src='images/oldmsg_icon2.gif' border='0' align='absmiddle'>&nbsp;&nbsp;";
            lblPrivateMessageAlert.Attributes.Add("onmouseover", "Tip('Hi <b>" + UserIdentity.UserName + "</b> you have (<b>" + CountNewMsg + "</b>) new messages in your Inbox.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)");
            lblPrivateMessageAlert.Attributes.Add("onmouseout", "UnTip()");
        }
        else
        {
            lblPrivateMessageAlert.Visible = true;
            lblPrivateMessageAlert.Text = "(" + CountNewMsg + ") <a href='pmview.aspx'><img src='images/newmsg_icon.gif' border='0' align='absmiddle'></a>&nbsp;&nbsp;";
            lblPrivateMessageAlert.Attributes.Add("onmouseover", "Tip('Hi <b>" + UserIdentity.UserName + "</b> you have (<b>" + CountNewMsg + "</b>) new<br>messages in your InBox. Click to view<br>your Inbox.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)");
            lblPrivateMessageAlert.Attributes.Add("onmouseout", "UnTip()");
        }
    }

    private void ShowUnApprovedNewFriendAlert()
    {
        int CountUnApprovedNewFriends = Blogic.GetCountUnApprovedFriends(UserIdentity.UserID);

        if (CountUnApprovedNewFriends != 0)
        {
            lblnewfriendalert.Visible = true;
            lblnewfriendalert.Text = "(" + CountUnApprovedNewFriends + ") <a href='viewunapprovedfriends.aspx'><img src='images/friendlisticon-_smll3.gif' border='0' align='absmiddle'></a>&nbsp;&nbsp;";
            lblnewfriendalert.Attributes.Add("onmouseover", "Tip('You have (<b>" + CountUnApprovedNewFriends + "</b>) users added you as a friend.<br>Click here to approved or declined users request.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lblnewfriendalert.Attributes.Add("onmouseout", "UnTip()");
        }
    }
}
