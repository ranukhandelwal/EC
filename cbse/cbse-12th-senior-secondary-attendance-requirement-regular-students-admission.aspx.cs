using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.cbse
{
    public partial class cbse_12th_senior_secondary_attendance_requirement_regular_students_admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="ATTENDANCE REQUIREMENT XIITH/SENIOR SECONDARY EXAM : REGULAR CANDIDATES - Examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Engineering College, Mtech in India, Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET Electrical, Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, electrical engineering colleges, discuss questions, free electrical practice tests.";
metaTag.Content="Electrical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
