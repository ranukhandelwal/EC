using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class Syllabus_for_GATE_Geology_Geophysics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE Geology & Geophysics Syllabus - ExamCrazy.com ";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering,  Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering,  Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering,  Biotechnology, textile engineering and fibre science, GATE engineering science, Architecture and Planning engineering, GATE life science,  Thermodynamics, Fluid Mechanics, Materials Science, Solid Mechanics, Polymer Science and Engineering, Food Technology, Biochemistry, Microbiology,  graduate aptitude test in engineering, GATE 2010, GATE 2009, GATE 2010 syllabus, join M. Tech., M. Tech in India, M. Tech Entrance, M.tech,  Masters degree, Masters in India, M. Tech colleges, GATE cutoff, admissions, GATE eligibility, GATE dates, GATE exam syllabus, Gate 2007 syllabus,  gate preparation, sample gate questions, gate practice papers, gate tutorials, gate test series, gate mock test, free gate test series, engineering colleges in India, GATE exam structure, Structure of GATE Examination.";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2009, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
