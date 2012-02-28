using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class vacancies_Union_Public_Service_Commission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Union Public Service Commission- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in Union Public Service Commission.";
metaTag.Content="Vacancies in Union Public Service Commission, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
