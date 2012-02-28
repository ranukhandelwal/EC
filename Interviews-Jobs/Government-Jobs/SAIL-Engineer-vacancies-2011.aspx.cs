using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class SAIL_Engineer_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Steel Authority of India Ltd SAIL, Management Trainee Electronics Engineers vacancies- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Steel Authority of India Ltd SAIL, Electronics Engineers , Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Steel Authority of India Ltd SAIL, Engineers vacancies, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
