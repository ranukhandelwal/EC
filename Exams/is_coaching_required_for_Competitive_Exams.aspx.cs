using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class is_coaching_required_for_Competitive_Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Is coaching required for competition exams, online coaching - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "coaching for my competitive exam, self study sufficient, joining coaching classes, online coaching,  engineering Coaching Institutes, MBA Coaching Institutes, preparing for competitive exams, online study material";
metaTag.Content="Is seft study sufficient or group study is required? Should I cover full course as I do for college exam or competitive exams are different? What is difference between objective exams and subjective exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
