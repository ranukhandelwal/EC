using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class CDAC_May11_details2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="CDAC Freshers Jobs, Btech Technical jobs at CDAC - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in CDAC";
metaTag.Content="Scientist Vacancies in CDAC, Centre for Development of Advanced Computing (C-DAC), Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
