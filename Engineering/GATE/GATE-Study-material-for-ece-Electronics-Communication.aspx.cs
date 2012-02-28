using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class GATE_Study_material_for_ece_Electronics_Communication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="GATE Study Material for Electronics, GATE ECE Study Material, GATE Electronics Syllabus - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GATE 2011, GATE books, GATE Study Material, GATE Study Material for Electronics, GATE ECE Study Material,  GATE Test Series, GATE Preparation, GATE Electronics Syllabus, GATE books for ECE";
metaTag.Content="GATE exam preparation at Examcrazy. Electronics & Communication articles, gate questions, GATE mock test series,  GATE preparation, GATE 2011, GATE books, Gate study material";
this.Header.Controls.Add(metaTag);

        }
    }
}
