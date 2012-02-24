using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.SNAP
{
    public partial class SNAP_Important_Dates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Important Dates for SNAP 2008 Symbiosis program admissions - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, SNAP, Symbiosis National Aptitude Test, SNAP 2009, About SNAP, SNAP 2009 Important Dates, SNAP 2009 test structure,  Institutes accepting SNAP score, Group Discussion Tips/Tricks, SNAP 2009 test Centers, Register for SNAP 2009, SNAP practice tests, Symbiosis International University, Symbiosis Admissions, Last Date for registration, Announcement of Result, SNAP test ";
metaTag.Content="How to Register for SNAP Test 2009, Preparation material, SNAP 2009 Important Dates, Institutes accepting SNAP score,  Symbiosis National Aptitude Test. Tests for MBA exams JMET, CAT, MAT, XAT etc, Profile of all MBA institutes";
this.Header.Controls.Add(metaTag);

        }
    }
}
