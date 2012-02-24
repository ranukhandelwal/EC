using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class Should_i_prepare_full_syllabus_for_Competitive_Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Should I cover full course as I do for college exam or competitive exams are different? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="Should I cover full course as I do for college exam or competitive exams are different? What is difference between objective exams and subjective exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
