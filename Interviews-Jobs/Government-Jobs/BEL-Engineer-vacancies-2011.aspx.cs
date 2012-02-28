using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class BEL_Engineer_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Bharat Electronics Limited BEL, Graduate Engineer Trainee Electronics Engineers vacancies- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Bharat Electronics Limited BEL, Electronics Engineers , Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Bharat Electronics Limited BEL, Electronics Engineers vacancies, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
