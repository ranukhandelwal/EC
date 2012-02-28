using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class BHEL_freshers_jobs_Engineer_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Bharat Heavy Electricals Ltd BHEL, Engineer Trainee, Supervisor Trainee vacancies 2011- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Bharat Heavy Electricals Ltd BHEL, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Bharat Heavy Electricals Ltd BHEL, Engineer Trainee, GET vacancies, Supervisor Trainee, Last date, eligibility, HOW TO APPLY etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
