using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.XAT
{
    public partial class About_Xavier_Admission_Test_XLRI_XAT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Xavier Admission Test XLRI XAT - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications, XAT mock test, free MBA preparation, MBA mock tests, Ministry of HRD, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009, sample questions, MBA in India, Ranking of MBA institutes, XLRI Jamshedpur, GMAT score accepted, XAT 2008, XAT 2009, Xavier Admission Test, XAT IMPORTANT DATES, Last Date for Registration, XAT exam date,  XAT Bulletin, XLRI Prospectus, XAT dates, XAT syllabus, XAT preparation, XAT practice tests, how to apply, XAT ELIGIBILITY, XAT online practice.";
metaTag.Content="Free MBA exam preparation and MBA admissions XAT, IBSAT, SNAP, CAT, XAT, GXAT and others. Practice tests, Tips and Tricks for MBA preparation, Profile of MBA colleges, MBA admissions, Recommended books and study XATerial";
this.Header.Controls.Add(metaTag);

        }
    }
}
