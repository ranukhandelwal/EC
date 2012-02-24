using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class how_to_prepare_for_objective_exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="My competitive exam focuses on objectives tests. How should I prepare for objective paper? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "My competitive exam focuses on objectives tests. How should I prepare for objective paper?Should I cover full course as I do for college exam or competitive exams are different?, objective exams, subjective exams, preparing for competitive exams";
metaTag.Content="My competitive exam focuses on objectives tests. How should I prepare for objective paper?";
this.Header.Controls.Add(metaTag);

        }
    }
}
