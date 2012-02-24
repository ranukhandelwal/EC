using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.SNAP
{
    public partial class How_to_register_for_Symbiosis_National_Aptitude_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to Register for SNAP Test 2009 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, SNAP, Symbiosis National Aptitude Test, SNAP 2009, About SNAP, SNAP 2009 Important Dates, SNAP 2009 test structure,  Institutes accepting SNAP score, Group Discussion Tips/Tricks, SNAP 2009 test Centers, Register for SNAP 2009, SNAP practice tests, Symbiosis International University, Symbiosis Admissions, Symbiosis Institute of Business Management,  SICSR Pune, SIMC, SIIB, SCMHRD, SITM, SCIT, SIG, SIOM, SIHS, Symbiosis Institute of Business Management, SIBM Bangalore ";
metaTag.Content="How to Register for SNAP Test 2009, Preparation material, SNAP 2009 Important Dates, Institutes accepting SNAP score,  Symbiosis National Aptitude Test. Tests for MBA exams JMET, CAT, MAT, XAT etc, Profile of all MBA institutes";
this.Header.Controls.Add(metaTag);

        }
    }
}
