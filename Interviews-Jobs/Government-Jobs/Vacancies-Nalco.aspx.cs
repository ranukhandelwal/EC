using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_Nalco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in National Aluminium Company Limited - NALCO - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in National Aluminium Company Limited - NALCO ";
metaTag.Content="Vacancies in National Aluminium Company Limited - NALCO , Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
