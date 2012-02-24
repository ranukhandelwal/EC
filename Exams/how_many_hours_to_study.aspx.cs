using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class how_many_hours_to_study : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="One of the most difficult question, how many hours should I study to succeed in exam? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "One of the most difficult question, how many hours should I study to succeed in exam? How to discuss difficult questions? Should I prepare notes even for exams? How to prepare good notes?,My competitive exam focuses on objectives tests. How should I prepare for objective paper?Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="One of the most difficult question, how many hours should I study to succeed in exam? ";
this.Header.Controls.Add(metaTag);

        }
    }
}
