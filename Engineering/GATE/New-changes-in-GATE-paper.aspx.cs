using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class New_changes_in_GATE_paper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Changes in GATE 2011 - Offline Exam in two sessions. Online examination in two additonal papers .... - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "ABOUT GATE EXAM, GATE Structure, GATE Eligibility, GATE exam Syllabus, GATE exam Pattern, GATE Results & score card, GATE 2011, GATE 2011 How to apply, Changes in GATE 2011, GATE Cut off & Admissions, MTech Admissions, Engineering Colleges, GATE Preparation material, GATE Objective Solving Tricks, GATE coaching Institutes, GATE Electrical, GATE Mechanical, GATE Electronics, GATE Computer, GATE PRACTICE TESTS, How Gate Score Is Calculated, GATE 2011 MOCK TEST, ExamCrazy.Com & Panacea Institute, validity of GATE score, New Paper introduced in GATE 2011, General Aptitude (GA) introduced in GATE 2011, GATE 2011 Biotechnology .";
metaTag.Content="New Changes introduced from GATE exam 2011, validity of GATE score will be TWO YEARs, GATE syllabus, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
