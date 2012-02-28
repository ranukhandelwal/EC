using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class Rites_May2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="RITES Freshers Jobs, Btech Technical jobs at RITES, Graduate Executive Trainee requirements at RITES - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Vacancies in RITES ";
metaTag.Content="Graduate Executive Trainee Vacancies in RITES , Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
