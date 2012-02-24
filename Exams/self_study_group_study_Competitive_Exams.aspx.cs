using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class self_study_group_study_Competitive_Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Is seft study sufficient or group study is required? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Is seft study sufficient or group study is required? Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="Is seft study sufficient or group study is required? Should I cover full course as I do for college exam or competitive exams are different? What is difference between objective exams and subjective exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
