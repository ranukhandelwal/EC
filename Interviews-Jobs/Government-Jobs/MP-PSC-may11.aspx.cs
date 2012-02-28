using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class MP_PSC_may11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Madhya Pradesh Public Service Commission MP PSC Freshers technical jobs engineering- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies Madhya Pradesh Public Service Commission MP PSC, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Vacancies Madhya Pradesh Public Service Commission MP PSC, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
