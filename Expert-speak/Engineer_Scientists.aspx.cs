using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Engineer_Scientists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Engineers V/S Scientist";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Engineers V/S Scientist";
metaTag.Content="Engineers V/S Scientist";
this.Header.Controls.Add(metaTag);

        }
    }
}
