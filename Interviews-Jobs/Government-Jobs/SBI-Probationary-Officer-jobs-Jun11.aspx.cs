using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class SBI_Probationary_Officer_jobs_Jun11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="State Bank of India (SBI) Freshers Jobs, Probationary Officer (PO) jobs at SBI - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in State Bank of India (SBI)";
metaTag.Content="Vacancies in State Bank of India (SBI), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
