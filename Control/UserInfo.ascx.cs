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

namespace ExamCrazy.Control
{
    public partial class UserInfo : System.Web.UI.UserControl
    {
        public string UserInfoXML = "~/XML/UserInfo.xml";
        public string filter;
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("userinfo") == null)
            {
                csslink.ID = "cssreciaspx";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "CSS/userinfo.css";
                Page.Header.Controls.Add(csslink);
            }

            filter = SiteConfiguration.GetUserInfoFilter("ajaykh");
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