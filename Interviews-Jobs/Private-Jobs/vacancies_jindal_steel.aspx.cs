using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Private_Jobs
{
    public partial class vacancies_jindal_steel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Jindal Steel & Power Limited - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Jindal Steel & Power Limited";
metaTag.Content="Vacancies in Jindal Steel & Power Limited, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
