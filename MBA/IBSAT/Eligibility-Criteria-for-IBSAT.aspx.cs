using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.IBSAT
{
    public partial class Eligibility_Criteria_for_IBSAT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Eligibility Criteria for IBSAT 2008 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications IBSAT 2008, IBSAT 2009, ICFAI Business School Aptitude Test, IBSAT IMPORTANT DATES, Last Date for Registration, IBSAT exam date, ICFAI Business School, www.ibsat.org, MBA in India, MBA from ICFAI, IBS Campuses, GMAT score accepted, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009,  Ranking of MBA institutes, IBSAT dates, IBSAT syllabus, IBSAT preparation, sample questions, IBSAT practice tests, IBSAT eligibility, Executive PG Program, Work experience, bachelor degree, IBSAT online practice, IBSAT mock test, free MBA preparation, MBA mock tests.";
metaTag.Content="Free MBA exam preparation and MBA admissions IBSAT, SNAP, CAT, MAT, XAT, GMAT and others. Practice tests, Tips and Tricks for MBA preparation, Profile of MBA colleges, MBA admissions, Recommended books and study material";
this.Header.Controls.Add(metaTag);

        }
    }
}
