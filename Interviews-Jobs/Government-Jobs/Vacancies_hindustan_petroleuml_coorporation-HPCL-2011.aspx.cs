using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_hindustan_petroleuml_coorporation_HPCL_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Hindustan Petroleum Corporation Limited - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Hindustan Petroleum Corporation Limited, Last date, eligibility, how to apply, ";
metaTag.Content="Vacancies in Hindustan Petroleum Corporation Limited, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
