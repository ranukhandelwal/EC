using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class national_institute_ocean_technology_vacancies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Vacancy Details in The NATIONAL INSTITUTE OF OCEAN TECHNOLOGY (B.E/B.Tech/M.E./Mtech) - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "NATIONAL INSTITUTE OF OCEAN TECHNOLOGY , Jobs, Vacancies";
metaTag.Content="Vacancies in NATIONAL INSTITUTE OF OCEAN TECHNOLOGY (B.E/B.Tech/M.E./Mtech, Last date, eligibility, how to apply etc....";
this.Header.Controls.Add(metaTag);

        }
    }
}
