using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_VIZAG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Rashtriya Ispat Nigam Limited Vishakhapatnam Steel Plant(VIZAG)- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in Rashtriya Ispat Nigam Limited Vishakhapatnam Steel Plant(VIZAG)";
metaTag.Content="Vacancies in Rashtriya Ispat Nigam Limited Vishakhapatnam Steel Plant(VIZAG), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
