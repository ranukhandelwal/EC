using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class EIL_freshers_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Engineers India Ltd EIL, Management Trainees vacancies 2011, Freshers Jobs - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Engineers India Ltd EIL, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Engineers India Ltd EIL, Management Trainees, Last date, eligibility, HOW TO APPLY etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
