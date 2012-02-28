using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class GATE1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Graduate Aptitude Test in Engineering GATE exam - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "graduate aptitude test in engineering, GATE 2011, GATE Cutoff for IITs, GATE eligibility, Important dates for GATE,  gate exam 2011 forms, syllabus for gate exam, IISc Bangalore, IITs, Free online Study Material for GATE,  gate practice tests, GATE Recommended books, GATE Objective questions, GATE coaching Institutes,  GATE Previous Years Question Paper pattern, What is New in GATE 2011, MTech admissions, Solved Numericals";
metaTag.Content="Everything for GATE exam Free at Examcrazy. GATE test, GATE preparation tricks, GATE syllabus,  Changes in GATE 2011, GATE Cut-offs and admissions, Recommended books";
this.Header.Controls.Add(metaTag);

        }
    }
}
