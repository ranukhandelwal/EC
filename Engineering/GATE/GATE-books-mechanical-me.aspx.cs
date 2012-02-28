using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class GATE_books_mechanical_me : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE books, GATE study material for ME, GATE books for Mechanical - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GATE 2011, GATE eligibility, GATE 2011 important dates, GATE books, GATE Study Material, GATE Test Series,  GATE pattern, GATE Preparation, GATE Syllabus, Best Books for GATE, GATE books for Electronics & Communication.";
metaTag.Content="GATE exam preparation at Examcrazy. GATE mock test series, GATE preparation, GATE syllabus,  GATE 2011, GATE books, Gate study material, GATE solved papers";
this.Header.Controls.Add(metaTag);

        }
    }
}
