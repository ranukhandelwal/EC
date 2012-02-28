using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class vacancies_Kerala_State_IT_Mission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Kerala State IT Mission- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in Kerala State IT Mission";
metaTag.Content="Vacancies in Kerala State IT Mission, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
