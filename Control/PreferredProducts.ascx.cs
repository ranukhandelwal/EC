using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Control
{
    public partial class PreferredProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("csspreferredproducts") == null)
            {
                csslink.ID = "cssannouncement";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "CSS/preferredproduct.css";
                Page.Header.Controls.Add(csslink);
            }

        }
    }
}