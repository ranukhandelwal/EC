using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Private_Jobs
{
    public partial class HCL_Hiring_2011_Freshers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="HCL Hiring 2011 Freshers - Examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Freshers jobs at Freescale Semiconductor, freshers jobs, IT Freshers jobs ";
metaTag.Content="Freshers jobs, Freescale Semiconductor, hyderabad, jobs Computer Science Engineering,  Electronics & Communication Engineering jobs, IT Freshers jobs, visit examcrazy for more freshers jobs, technical jobs";
this.Header.Controls.Add(metaTag);

        }
    }
}
