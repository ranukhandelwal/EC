using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class Syllabus_for_GATE_Physics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE Physics Syllabus, GATE 2010 Syllabus Physics (PH) - ExamCrazy.com ";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GATE 2010 Physics Syllabus, graduate aptitude test in engineering, GATE 2010,  M. Tech in India, GATE cutoff, admissions, GATE eligibility, GATE exam syllabus,  ENGINEERING MATHEMATICS, Linear Algebra, Calculus, Differential equations, Probability and Statistics, Complex Analysis, Mathematical Physics, Classical Mechanics, Nuclear and Particle Physics, Solid State Physics, Atomic and Molecular Physics,  Thermodynamics and Statistical Physics, Quantum Mechanics, Electromagnetic Theory.";
metaTag.Content="Syllabus for GATE 2010 Physics paper. Examcrazy.com offers online GATE Mock test series, Tips and Tricks for GATE preparation, List of M.Tech colleges, GATE syllabus, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
