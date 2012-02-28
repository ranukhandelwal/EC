using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class HAL_freshers_vacancies_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Hindustan Aeronautics Limited HAL, Assistant Engineer vacancies 2011, Freshers Jobs - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Hindustan Aeronautics Limited HAL, Freshers Jobs, Government Jobs, Technical jobs";
metaTag.Content="Hindustan Aeronautics Limited HAL, Assistant Engineer , Last date, eligibility, HOW TO APPLY etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
