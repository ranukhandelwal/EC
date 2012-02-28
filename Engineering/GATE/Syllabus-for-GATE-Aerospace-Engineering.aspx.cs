using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class Syllabus_for_GATE_Aerospace_Engineering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE Aerospace Engineering Syllabus - ExamCrazy.com ";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Computers Science Engineering, Mechanical Engineering, electrical engineering,  aerospace engineering, agriculture engineering, civil engineering, instrumentation, mining engineering, metallurgical engineering,  physics, production and industrial engineering, pharmaceutical science, textile engineering and fibre science, GATE engineering science,  Architecture and Planning engineering, GATE life science, graduate aptitude test in engineering, GATE 2010, GATE 2011,  M. Tech colleges, GATE cutoff, GATE eligibility, GATE dates, GATE exam syllabus, gate preparation, gate practice papers,  gate tutorials, gate test series, gate mock test, GATE exam structure, GATE Syllabus for Aerospace Engineering, ENGINEERING MATHEMATICS, FLIGHT MECHANICS, SPACE DYNAMICS, Flight Vehicle Structures, PROPULSION.";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2010, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
