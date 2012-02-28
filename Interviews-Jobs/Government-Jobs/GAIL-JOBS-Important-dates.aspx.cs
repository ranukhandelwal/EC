using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class GAIL_JOBS_Important_dates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application, Important Dates, bond for GAIL - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application, Important Dates, bond for GAIL";
metaTag.Content="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application, Important Dates";
this.Header.Controls.Add(metaTag);

        }
    }
}
