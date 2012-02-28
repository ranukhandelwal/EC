using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class ECIL_how_to_apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in ECIL - How to aply - Electronics Corporation of India Limited - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "ECIL, GET, ECIL GET, Vacancies for ECIL GET";
metaTag.Content="Vacancies in ECIL, 139 vacancies, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
