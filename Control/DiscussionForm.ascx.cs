using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Xml;
using System.Text;
using EC.Security;

namespace ExamCrazy.Control
{
    public partial class DiscussionForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("cssdiscussion") == null)
            {
                csslink.ID = "cssdiscussion";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "CSS/discussion.css";
                Page.Header.Controls.Add(csslink);
            }

            if (!Page.IsPostBack)
            {
                if(Authentication.Authenticate)
                    discussionpanel.Visible = false;
            }

        }
    }
}