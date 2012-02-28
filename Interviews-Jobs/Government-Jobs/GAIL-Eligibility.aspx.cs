using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class GAIL_Eligibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Excellent JOBS/CAREER OPPURTUNITIES for BE/ME/MTECH/PHD/MBA/Graduate in GAS AUTHORITY OF INDIA LIMITED(GAIL) for the post of Executive trainee- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Excellent JOBS/CAREER OPPURTUNITIES for BE/ME/MTECH/PHD/MBA/Graduate in GAS AUTHORITY OF INDIA LIMITED(GAIL) for the post of Executive trainee";
metaTag.Content="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS";
this.Header.Controls.Add(metaTag);

        }
    }
}
