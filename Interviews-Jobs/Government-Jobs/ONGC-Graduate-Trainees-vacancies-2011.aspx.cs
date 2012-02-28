using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class ONGC_Graduate_Trainees_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Oil and Natural Gas Corporation ONGC, Graduate Trainee Freshers vacancies- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Oil and Natural Gas Corporation ONGC, Graduate Trainee , Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Oil and Natural Gas Corporation ONGC, Graduate Trainee vacancies, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
