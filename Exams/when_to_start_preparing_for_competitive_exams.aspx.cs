using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class when_to_start_preparing_for_competitive_exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="When to start preparing for competitive exams - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "When to start preparing for competitive exams?, One of the most difficult question, how many hours should I study to succeed in exam? How to discuss difficult questions? Should I prepare notes even for exams? How to prepare good notes?,My competitive exam focuses on objectives tests. How should I prepare for objective paper?Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="When to start preparing for competitive exams";
this.Header.Controls.Add(metaTag);

        }
    }
}
