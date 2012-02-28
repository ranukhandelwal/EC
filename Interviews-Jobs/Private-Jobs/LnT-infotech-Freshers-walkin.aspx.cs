using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Interviews_Jobs.Private_Jobs
{
    public partial class LnT_infotech_Freshers_walkin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Freshers Walk-in at LntInfotech Bangalore - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "LnT Infotech, Larsen & Toubro Infotech Ltd, freshers Walkin bangalore ";
metaTag.Content="Freshers walk-in at LnT Infotech Bangalore, visit examcrazy for more freshers jobs, technical jobs";
this.Header.Controls.Add(metaTag);

        }
    }
}
