using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Expert_speak_Tutorials : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Practice tests by Faculty at Expert Speak";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Tutorials by Faculty at Expert Speak";
metaTag.Content="Tutorials by Faculty at Expert Speak";
this.Header.Controls.Add(metaTag);

        }
    }
}
