using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class Previous_year_admission_cut_offs_GATE_IIT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE Cut Off And Admission Procedure IIT - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "ABOUT GATE EXAM, GATE Structure, GATE Eligibility, GATE exam Syllabus, GATE exam Pattern, GATE Results & score card, GATE 2010, GATE 2010 How to apply, Changes in GATE 2010, GATE Cut off & Admissions, MTech Admissions, Engineering Colleges, GATE Preparation material, GATE Objective Solving Tricks, GATE coaching Institutes, GATE Electrical, GATE Mechanical, GATE Electronics, GATE Computer, GATE PRACTICE TESTS, How Gate Score Is Calculated, GATE 2010 MOCK TEST, ExamCrazy.Com & Panacea Institute, GATE Cut Off And Admission Procedure, IIT Bombay GATE CutOff, IIT Delhi GATE CutOff, IIT Kharagpur GATE CutOff, IIT Kanpur GATE CutOff.";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2009, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
