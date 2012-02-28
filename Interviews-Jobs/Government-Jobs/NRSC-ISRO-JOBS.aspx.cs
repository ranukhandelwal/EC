using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class NRSC_ISRO_JOBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Excellent JOBS/CAREER OPPURTUNITIES for BE/ME/MTECH/PHD in NATIONAL REMOTE SENSING CENTRE - INDIAN SPACE RESEARCH ORGANISATION - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Excellent JOBS/CAREER OPPURTUNITIES for BE/ME/MTECH/PHD in NATIONAL REMOTE SENSING CENTRE - INDIAN SPACE RESEARCH ORGANISATION";
metaTag.Content="NATIONAL REMOTE SENSING CENTRE - INDIAN SPACE RESEARCH ORGANISATION - JOBS";
this.Header.Controls.Add(metaTag);

        }
    }
}
