using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Energy_Efficiency_Conservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Promoting energy efficiency and conservation";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Promoting energy efficiency and conservation";
metaTag.Content="Promoting energy efficiency and conservation";
this.Header.Controls.Add(metaTag);

        }
    }
}
