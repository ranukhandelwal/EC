using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Mechanical
{
    public partial class Machine_Design_Problems_Numericals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Question Bank - Numericals, objective subjective Problems & mini projects on Machine Design - Mechanical Engineering - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Mechanical Engineering, Mechanical, Engineering College, Mtech in India,  IEC College, Greater Noida, Uttar Pradesh, Prof SS Chauhan,  Indian Engineering Services, UPSC, IES, GATE, GATE Mechanical, DRDO-SET Mechanical, Solved Problems, objective type papers, subjective papers,  numericals, tests from faculty, Mechanical engineering colleges, discuss questions, Question Bank, subjective Problems, mini projects,  Machine Design, Spur Gears, Helical gears, Worm gears, Bevel gears, Antifriction bearing, Lubrication and Sliding Bearing, Engine parts,  free Mechanical practice tests.";
metaTag.Content="Mechanical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
