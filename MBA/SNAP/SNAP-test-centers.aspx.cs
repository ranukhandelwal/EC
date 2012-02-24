using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.SNAP
{
    public partial class SNAP_test_centers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Test Centers for SNAP 2008 exam - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications SNAP, Symbiosis National Aptitude Test 2008, IMPORTANT DATES, Last Date for Registration,  SNAP Test 2008, Symbiosis International University, Pune, SNAP Test for Symbiosis Postgraduate Programmes, www.snaptest.org, join MBA, MBA in India, MBA from Symbiosis, Distant education, Masters in India, MBA colleges, post engineering colleges in India, Management Courses,  Ranking of MBA institutes, SNAP dates, SNAP syllabus, SNAP preparation, sample questions, SNAP practice tests, SNAP online test, SNAP mock test, free SNAP test preparation, MBA mock tests.";
metaTag.Content="Free MBA exam preparation and MBA admissions SNAP, CAT, MAT, XAT, IBSAT, GMAT and others. Practice tests, Tips and Tricks for MBA preparation, Profile of MBA colleges, MBA admissions, Recommended books and study material";
this.Header.Controls.Add(metaTag);

        }
    }
}
