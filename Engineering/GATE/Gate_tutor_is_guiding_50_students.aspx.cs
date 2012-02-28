using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class Gate_tutor_is_guiding_50_students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Knowing the best method of study for you for engineering exams - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering,  Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering,  Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering,  pharmaceutical science, textile engineering and fibre science, GATE engineering science, Architecture and Planning engineering, GATE life science,  Thermodynamics, Fluid Mechanics, Materials Science, Solid Mechanics, Polymer Science and Engineering, Food Technology, Biochemistry, Microbiology,  graduate aptitude test in engineering, GATE 2008, GATE 2009, GATE 2007, GATE 2006, join M. Tech., M. Tech in India, M. Tech Entrance, M.tech,  Masters degree, Masters in India, M. Tech colleges, GATE cutoff, admissions, GATE eligibility, GATE dates, GATE exam syllabus, Gate 2007 syllabus,  gate preparation, sample gate questions, gate practice papers, gate tutorials, gate test series, gate mock test, free gate test series, engineering colleges in India, GATE exam structure, Structure of GATE Examination, Gate Offline application, applying for GATE, GATE 2009 application, Objective Solving Tricks for GATE exam, Effective Way to Attempt GATE Paper, GATE Tutor, Objective Solving Tricks, .";
metaTag.Content="GATE Tutor will be helping 50 student from India in their preperation for GATE/IES/DRDO-SET... apply now";
this.Header.Controls.Add(metaTag);

        }
    }
}
