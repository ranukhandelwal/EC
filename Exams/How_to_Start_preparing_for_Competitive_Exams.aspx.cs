using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class How_to_Start_preparing_for_Competitive_Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="What should I prepare for my upcoming competitive exam or how to start exam preparation? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Learn how to start preperation for your competitive exams. What should you study for your competitive exams. How to look at teh course deeply. What to study";
metaTag.Content="Learn how to start preperation for your competitive exams. What should you study for your competitive exams";
this.Header.Controls.Add(metaTag);

        }
    }
}
