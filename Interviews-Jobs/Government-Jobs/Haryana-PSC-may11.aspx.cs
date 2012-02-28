using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Haryana_PSC_may11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Haryana Public Service Commission HPSC Freshers technical jobs CIVIL engineering- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies Haryana Public Service Commission HPSC, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Vacancies Haryana Public Service Commission HPSC, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
