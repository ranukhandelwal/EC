using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Career_Opportunities_in_Multimedia_Networking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Career Opportunities in Multimedia & Networking";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Career Opportunities in Multimedia & Networking";
metaTag.Content="Career Opportunities in Multimedia & Networking";
this.Header.Controls.Add(metaTag);

        }
    }
}
