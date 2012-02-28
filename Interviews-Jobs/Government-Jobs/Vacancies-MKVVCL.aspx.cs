using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Vacancies_MKVVCL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Job opportunities in Madhya Pradesh Madhya Kshetra Vidyut Vitaran Co. Ltd. - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in The Madhya Pradesh Madhya Kshetra Vidyut Vitaran Co. Ltd. ";
metaTag.Content="Vacancies in The Madhya Pradesh Madhya Kshetra Vidyut Vitaran Co. Ltd. , Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
