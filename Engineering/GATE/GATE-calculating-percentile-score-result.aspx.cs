using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class GATE_calculating_percentile_score_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE results & score card - Calculating GATE percentile score - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "ABOUT GATE EXAM, GATE Structure, GATE Eligibility, GATE exam Syllabus, GATE exam Pattern, GATE Results & score card, GATE 2010, GATE 2010 How to apply, Changes in GATE 2010, GATE Cut off & Admissions, MTech Admissions, Engineering Colleges, GATE Preparation material, GATE Objective Solving Tricks, GATE coaching Institutes, GATE Electrical, GATE Mechanical, GATE Electronics, GATE Computer, GATE PRACTICE TESTS, How Gate Score Is Calculated, GATE 2010 MOCK TEST, ExamCrazy.Com & Panacea Institute, GATE scorecard, GATE result, GATE Percentile Score, GATE score, All India Rank, AIR, Objective Response Sheet, ORS, standard deviation of marks .";
metaTag.Content="How GATE Scores and results are calculated, how to calculate GATE percentile score, How to solve GATE objective paper, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
