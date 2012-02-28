using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_DVC_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="DAMODAR VALLEY CORPORATION (DVC) Freshers Jobs, Btech Technical jobs at DVC - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in DAMODAR VALLEY CORPORATION (DVC)";
metaTag.Content="Vacancies in DAMODAR VALLEY CORPORATION (DVC), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
