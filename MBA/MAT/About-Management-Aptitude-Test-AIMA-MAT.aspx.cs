using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.MAT
{
    public partial class About_Management_Aptitude_Test_AIMA_MAT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Management Aptitude Test MAT 2009 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications, MAT mock test, free MBA preparation, MBA mock tests, Ministry of HRD, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009, sample questions, www.aima-ind.org, MBA in India, Centre for Management Services, CMS, IBS Campuses, GMAT score accepted, AIMA, All India Management Association, MAT 2008, MAT 2009, Management Aptitude Test, MAT IMPORTANT DATES, Last Date for Registration, MAT exam date, MAT Bulletin, Ranking of MBA institutes, MAT dates, MAT syllabus, MAT preparation, MAT practice tests, how to apply, MAT ELIGIBILITY, MAT online practice.";
metaTag.Content="Free MBA exam preparation and MBA admissions MAT, IBSAT, SNAP, CAT, XAT, GMAT and others. Practice tests, Tips and Tricks for MBA preparation, Profile of MBA colleges, MBA admissions, Recommended books and study material";
this.Header.Controls.Add(metaTag);

        }
    }
}
