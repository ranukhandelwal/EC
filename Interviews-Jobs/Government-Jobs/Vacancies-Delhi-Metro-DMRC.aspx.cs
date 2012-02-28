using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_Delhi_Metro_DMRC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Delhi Metro Rail Corporation - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in The Delhi Metro Rail Corporation ";
metaTag.Content="Vacancies in The Delhi Metro Rail Corporation , Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
