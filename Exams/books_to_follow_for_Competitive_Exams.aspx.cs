using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Exams
{
    public partial class books_to_follow_for_Competitive_Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Should I cover full course as I do for college exam or competitive exams are different? - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " book to follow for electronics, books for preparing GATE 2010, books for gate instrumentation,  solved examples and unsolved numerical";
metaTag.Content="Which books to follow for competitive exams? Tips and tricks to follow while preparing for exams like GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
