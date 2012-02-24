using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.CAT
{
    public partial class CAT_important_dates_exam_centers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="CAT important dates, exam centers, test cities - MBA in India - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications, CAT mock test, free MBA preparation, MBA mock tests, Ministry of HRD, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009, sample questions, MBA in India, Ranking of MBA institutes, XLRI Jamshedpur, GMAT score accepted, CAT 2008, CAT 2009, CAT 2010, Common Admission Test, CAT IMPORTANT DATES, Last Date for Registration, CAT exam date,  CAT Bulletin, CAT Prospectus, CAT important dates, CAT syllabus, CAT preparation, CAT practice tests, how to apply, CAT ELIGIBILITY, CAT online practice, quantitative tests, verbal tests, CAT exam centers, exam cities.";
metaTag.Content="Free MBA exam preparation and MBA admissions CAT, CAT, IBSAT, SNAP, GMAT and others. Practice tests, Tips and Tricks  for MBA preparation, important dates for CAT, CAT exam centers, Profile of MBA colleges, MBA admissions, Recommended books and study CATerial";
this.Header.Controls.Add(metaTag);

        }
    }
}
