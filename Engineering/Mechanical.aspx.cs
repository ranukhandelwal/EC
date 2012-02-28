using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class Mechanical1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Mechanical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Mechanical Engineering, Mechanical Engineering Articles, Machine Design Problems & Numericals, Mechanics of Solids Concepts and Definitions, Design of Helical Springs Tutorial, Lecture notes on Beams, Shear force and bending moment diagram, Machine Design objective test, Prof S S Chauhan, IEC College Greater Noida, Engineering Colleges in India, Directory of coaching Institutes, Everything about GATE, About IES exam, About DRDO-SET exam.";
metaTag.Content="Mechanical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
