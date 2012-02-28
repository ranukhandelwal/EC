using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE, GATE 2011, GATE study material, GATE preparation, GATE mock tests- examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GATE Exam, GATE 2011, GATE overview, GATE structure, GATE 2011 eligibility, GATE important dates, GATE books,  GATE Study Material, GATE Test Series, GATE exam pattern, GATE preparation, GATE Syllabus, GATE coaching institutes, changes in GATE 2011,  GATE Questions Solving Tricks ";
metaTag.Content="GATE exam preparation at Examcrazy. GATE mock test series, GATE preparation, GATE syllabus,  GATE 2011, GATE books, Gate study material, GATE solved papers";
this.Header.Controls.Add(metaTag);

        }
    }
}
