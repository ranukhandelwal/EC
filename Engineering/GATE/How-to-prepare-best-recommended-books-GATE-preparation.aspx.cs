using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class How_to_prepare_best_recommended_books_GATE_preparation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to prepare and Best recommended books study material for GATE exam - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "ABOUT GATE EXAM, GATE Structure, GATE Eligibility, GATE exam Syllabus, GATE exam Pattern, GATE Results & score card, GATE 2010, GATE 2010 How to apply, Changes in GATE 2010, GATE Cut off & Admissions, MTech Admissions, Engineering Colleges, GATE Preparation material, GATE Objective Solving Tricks, GATE coaching Institutes, GATE Electrical, GATE Mechanical, GATE Electronics, GATE Computer, GATE PRACTICE TESTS, How Gate Score Is Calculated, GATE 2010 MOCK TEST, ExamCrazy.Com & Panacea Institute, How to prepare for GATE, Recommended Books for GATE Articles, GATE Computer Science Books, GATE Electronic and Telecommunications Engineering Books, GATE Electrical Engineering Books, GATE Civil Engineering Books, GATE Mechanical Engineering Books, Tips to make notes .";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2009, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
