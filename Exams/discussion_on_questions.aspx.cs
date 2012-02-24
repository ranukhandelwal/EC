using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class discussion_on_questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to discuss difficult questions? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "How to discuss difficult questions? Should I prepare notes even for exams? How to prepare good notes?,My competitive exam focuses on objectives tests. How should I prepare for objective paper?Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="How to discuss difficult questions?";
this.Header.Controls.Add(metaTag);

        }
    }
}
