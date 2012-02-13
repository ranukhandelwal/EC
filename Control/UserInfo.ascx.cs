using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Xml;
using System.Text;
using EC.BL;
using EC.BL.Providers.User;

namespace ExamCrazy.Control
{
    public partial class UserInfo : System.Web.UI.UserControl
    {
        public string UserInfoXML = "~/XML/UserInfo.xml";
        public string filter;
        public string UName;
        public string UEmail;
        //public string ImgVerify;
        //protected string UImage;

        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("userinfo") == null)
            {
                csslink.ID = "userinfo";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "CSS/userinfo.css";
                Page.Header.Controls.Add(csslink);
            }

            if ((UName == "") || (UName == null))
                UName = constant.DefaultUserName;

            filter = SiteConfiguration.GetUserInfoFilter(UName);
            lblname.Text = UName;
            lblemail.Text = UEmail;
            if (UName == UserIdentity.UserName)
            {
                pnlverifyemail.Visible = true;
                if (UserIdentity.isEmail1Verified)
                {
                    ImgVerify.Src = ResolveUrl("~/images/adminapproval_icon.gif");
                    ImgVerify.Attributes.Add("onmouseover", "Tip('<a class=content12 href=/user-profile/update-email.aspx" + ">Update Email</a><br><a class=content12 href=/user-profile/verify-email.aspx>Verify Email</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
                    lblemail.Attributes.Add("onmouseover", "Tip('<a class=content12 href=/user-profile/update-email.aspx" + ">Update Email</a><br><a class=content12 href=/user-profile/verify-email.aspx>Verify Email</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
                }
                else
                {
                    ImgVerify.Src = ResolveUrl("~/images/takenuname.gif");
                    ImgVerify.Attributes.Add("onmouseover", "Tip('<b>Email not verified</b><br><a class=content12 href=/user-profile/update-email.aspx" + ">Update Email</a><br><a class=content12 href=/user-profile/verify-email.aspx>Verify Email</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
                    lblemail.Attributes.Add("onmouseover", "Tip('<b>Email not verified</b><br><a class=content12 href=/user-profile/update-email.aspx" + ">Update Email</a><br><a class=content12 href=/user-profile/verify-email.aspx>Verify Email</a>', WIDTH, 150, false, '', false, true, FADEIN, 300, FADEOUT, 300, STICKY, 1, false, true, CLICKCLOSE, true)");
                }
                
                ImgVerify.Attributes.Add("onmouseout", "UnTip()");
                lblemail.Attributes.Add("onmouseout", "UnTip()");
            }

            //UImage = UserIdentity.UserPhoto(UName);
            UserImage.Src = UserIdentity.UserPhoto(UName);
            UserImage.Height = 100;
            UserImage.Width = 100;
            if (!Page.IsPostBack)
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(Server.MapPath(UserInfoXML));
                XmlNodeList nodes = doc.SelectNodes("UserInfo/list[contains(@displayin,'" + filter + "')]");

                userinfo.DataSource = nodes;
                userinfo.DataBind();


            }

        }
    }
}