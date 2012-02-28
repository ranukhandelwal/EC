using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class GAIL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Excellent JOBS/CAREER OPPURTUNITIES for BE/ME/MTECH/PHD/MBA/Graduate in GAS AUTHORITY OF INDIA LIMITED - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GAIL (India) Limited, is a PSU and India's flagship Natural Gas company";
metaTag.Content="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company";
this.Header.Controls.Add(metaTag);

        }
    }
}
