using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_NHPC_May17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="National Hydro Power Corporation (NHPC) Freshers Jobs, Btech Technical jobs at NHPC - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in National Hydro Power Corporation(NHPC)";
metaTag.Content="Vacancies in National Hydro Power Corporation (NHPC), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
