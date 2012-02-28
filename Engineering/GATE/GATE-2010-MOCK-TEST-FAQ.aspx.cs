using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class GATE_2010_MOCK_TEST_FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE 2010 MOCK Test - online + offline - examcrazy.com + panacea";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Computer Science, Information Technology, Electronics and Communication Engineering, Electrical Engineering, Mechanical Engineering, GATE mock test FAQs, GATE 2010, GATE 2010 mock test, GATE mock tests, Panacea Institute, GATE mock test series, GATE practice papers, What is Gate, GATE Structure, GATE Eligibility, GATE 2010 Syllabus, GATE 2010 pattern, GATE Results & score card, New Changes in GATE 2010, Mtech admission notifications, Engineering Colleges, GATE Objective Solving Tricks, GATE Tutor Helping 50 Students, GATE coaching Institutes.";
metaTag.Content="GATE mock test FAQs, GATE 2010 Mock test registrations open till 31st Dec only, GATE papers with solutions, GATE preparation, GATE 2010 syllabus, GATE cutoff and admissions";
this.Header.Controls.Add(metaTag);

        }
    }
}
