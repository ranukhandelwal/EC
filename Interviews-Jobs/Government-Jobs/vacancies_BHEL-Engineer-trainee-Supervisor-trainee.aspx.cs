using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class vacancies_BHEL_Engineer_trainee_Supervisor_trainee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Bharat Heavy Electricals Limited(BHEL) - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in Bharat Heavy Electricals Limited(BHEL)";
metaTag.Content="Vacancies in Bharat Heavy Electricals Limited(BHEL), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
