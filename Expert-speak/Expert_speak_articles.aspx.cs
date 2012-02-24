using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Expert_speak_articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Articles/Tutorials/Guidance by Experts for Engineering, Management etc - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Articles, Electrical, Mechanical, examples, methamatics, solutions, books.";
metaTag.Content="This is the page where Experts Speaks up to help students. Tutorials, guidance etc by Experts";
this.Header.Controls.Add(metaTag);

        }
    }
}
