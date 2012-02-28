using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class vacancies_Bharatiya_Nabhikiya_Vidyut_Nigam_Limited : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Bharatiya Nabhikiya Vidyut Nigam Limited - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in Bharatiya Nabhikiya Vidyut Nigam Limited .";
metaTag.Content="Vacancies in Bharatiya Nabhikiya Vidyut Nigam Limited , Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
