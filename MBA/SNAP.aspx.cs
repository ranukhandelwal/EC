using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA
{
    public partial class SNAP1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Symbiosis National Aptitude Test SNAP -examcrazy.com ";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, SNAP, Symbiosis National Aptitude Test, SNAP 2009, About SNAP, SNAP 2009 Important Dates, SNAP 2009 test structure,  Institutes accepting SNAP score, How to apply for SNAP 2009, Group Discussion Tips/Tricks, SNAP 2009 test Centers,  Symbiosis International University, Symbiosis Admissions, Admission Requirements for Symbiosis, admissions to Symboisis Institutes SNAP practice tests, QUANTITATIVE SKILLS, VERBAL ABILITY, SNAP Test for Symbiosis Postgraduate Programmes";
metaTag.Content="Preparation material, free practice tests, SNAP 2009 Important Dates, Institutes accepting SNAP score,  Symbiosis National Aptitude Test. Tests for MBA exams JMET, CAT, MAT, XAT etc, Profile of all MBA institutes";
this.Header.Controls.Add(metaTag);

        }
    }
}
