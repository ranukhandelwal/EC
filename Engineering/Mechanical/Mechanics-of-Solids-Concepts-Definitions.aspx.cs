using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Mechanical
{
    public partial class Mechanics_of_Solids_Concepts_Definitions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Mechanics of Solids - Concepts and Definitions - Mechanical Engineering - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Mechanical Engineering, Mechanical, Engineering College, Mtech in India, GATE Tutor, Mechanics of Solids, Concepts and Definitions, Lecture notes on Beams, Shear force, bending moment diagram, hooke law, shear stress,  shear strain, Young Modulus, Modulus of Rigidity, Poisson ratio, resilience, modulus of resilience,  Indian Engineering Services, UPSC, IES, GATE, GATE Mechanical, DRDO-SET Mechanical, Solved Problems, objective type papers, subjective papers,  numericals, tests from faculty, Mechanical engineering colleges, discuss questions, Question Bank, subjective Problems, mini projects,  free Mechanical practice tests.";
metaTag.Content="Mechanics of Solids - Concepts and Definitions, Mechanical Engineering articles, solved numericals,  questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
