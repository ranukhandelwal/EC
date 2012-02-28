using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class IIA_Bangalore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job/trainee opportunities in IIA Bangalore - INDIAN INSTITUTE OF ASTROPHYSICS - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "INDIAN INSTITUTE OF ASTROPHYSICS, IIA";
metaTag.Content="Vacancies in INDIAN INSTITUTE OF ASTROPHYSICS, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
