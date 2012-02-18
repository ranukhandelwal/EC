#region ExamCrazy
// FileName: Login.ascx.cs

// Date Created: 
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

    

    public void Login_Click1(object sender, ImageClickEventArgs e)
    {
        if (LoginRepository.Login(Request.Form[uname1.UniqueID].ToString(), Request.Form[upass1.UniqueID].ToString()) != 0)
        {
            JavaScript.Alert("Invalid Login Credentials");
            ShowInvalidErrorMsg();
        }
            
    }

    public void Login_Click2(object sender, EventArgs e)
    {
        if (LoginRepository.Login(Request.Form[uname2.UniqueID].ToString(), Request.Form[upass2.UniqueID].ToString()) != 0)
        {
            JavaScript.Alert("Invalid Login Credentials");
            ShowInvalidErrorMsg();
        }
    }

    public void Logout_Click(object sender, EventArgs e)
    {
        LoginRepository.Logout();
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
            lblusername.Text = "<a href='/User/" + UserIdentity.UserName +"'>" + UserIdentity.UserName + "</a>";
            lblusername.Attributes.Add("onmouseover", "Tip('<a class=content12 href=/user-profile/update-profile.aspx" + ">My Profile</a><br><a class=content12 href=/user-profile/update-password.aspx>Update Password</a><br><a class=content12 href=/user-profile/update-image.aspx>Update Image</a><br><a class=content12 href=/user-profile/verify-email.aspx>Verify Email</a><br><a class=content12 href=/User/>Browse Members</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
            lblusername.Attributes.Add("onmouseout", "UnTip()");
        }
    }

    

    
}
