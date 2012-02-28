using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class GAIL_freshers_jobs_Engineer_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Gas Authority of India Ltd GAIL, Engineer Trainee, Executive Trainees vacancies 2011- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Gas Authority of India Ltd GAIL, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Gas Authority of India Ltd GAIL, Executive Trainees, Last date, eligibility, HOW TO APPLY etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
