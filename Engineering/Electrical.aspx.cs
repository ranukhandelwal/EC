using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class Electrical1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Electrical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Solved problems on Electrical Instruments,  Solved examples on 3-phase Induction Motor, Synchronous speed of an AC induction motor, Dynamic braking resistor for AC and DC motor, Electrical Engineering Practice tests, Basic Electrical test, Electrical motors, Transformers, Prof Sunil Kumar, IEC College Greater Noida,  Engineering Colleges in India, GATE of coaching Institutes, Everything about GATE, About IES exam, DRDO-SET exam.";
metaTag.Content="Electrical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
