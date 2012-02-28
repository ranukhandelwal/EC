using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class GATE_2010_MOCK_TEST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE 2010 MOCK Test - online + offline - examcrazy.com + panacea";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering,  Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering,  Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering,  pharmaceutical science, textile engineering and fibre science, GATE engineering science, Architecture and Planning engineering, GATE life science,  Thermodynamics, Fluid Mechanics, Materials Science, Solid Mechanics, Polymer Science and Engineering, Food Technology, Biochemistry, Microbiology,  graduate aptitude test in engineering, GATE 2009, GATE 2010, GATE 2007, GATE 2006, join M. Tech., M. Tech in India, M. Tech Entrance, M.tech,  Masters degree, Masters in India, M. Tech colleges, GATE cutoff, admissions, GATE eligibility, GATE dates, GATE exam syllabus, Gate 2007 syllabus,  gate preparation, sample gate questions, gate practice papers, gate tutorials, gate test series, gate mock test, free gate test series, engineering colleges in India, GATE exam structure, Structure of GATE Examination, Gate Paper List and Code, GATE question paper, GATE paper pattern, multiple choice options, GATE answers, GATE Analysis, .";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2010, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
