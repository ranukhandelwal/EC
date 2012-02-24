using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Expert_speak
{
    public partial class Presenting_a_Seminar_in_college : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Presenting a Seminar in college";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Presenting a Seminar, present a paper, Powerpoint presentation, public speaking, Outline your speech, making notes, Deepa Gupta, Lecturer, Amity University Noida, Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering, Mechanical Engineering, Chemical Engineering,  electrical engineering, civil engineering, instrumentation, mathematics, physics, production and industrial engineering, pharmaceutical science,  GATE life science, graduate aptitude test in engineering, B.tech, engineering, GATE, M.tech, Masters degree, Masters in India, M. Tech colleges";
metaTag.Content="Presenting a Seminar in college";
this.Header.Controls.Add(metaTag);

        }
    }
}
