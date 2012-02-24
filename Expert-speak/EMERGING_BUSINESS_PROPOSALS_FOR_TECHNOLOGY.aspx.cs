using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class EMERGING_BUSINESS_PROPOSALS_FOR_TECHNOLOGY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="EMERGING BUSINESS PROPOSALS FOR TECHNOLOGY";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "EMERGING BUSINESS PROPOSALS FOR TECHNOLOGY";
metaTag.Content="EMERGING BUSINESS PROPOSALS FOR TECHNOLOGY";
this.Header.Controls.Add(metaTag);

        }
    }
}
