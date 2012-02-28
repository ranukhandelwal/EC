using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Government_Jobs
{
    public partial class GAIL_JOBS_How_to_apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application";
metaTag.Content="GAIL (India) Limited, is a PSU and India's flagship Natural Gas company- JOBS, How to Apply, online application";
this.Header.Controls.Add(metaTag);

        }
    }
}
