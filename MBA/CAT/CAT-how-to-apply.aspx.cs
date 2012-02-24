using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.CAT
{
    public partial class CAT_how_to_apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to apply for CAT 2009 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Cat 2009 registration, MBA, Management, Master in Business Applications, CAT mock test, free MBA preparation, MBA mock tests, Ministry of HRD, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009, sample questions, MBA in India, Ranking of MBA institutes, XLRI Jamshedpur, GMAT score accepted, CAT 2008, CAT 2009, CAT 2010, Common Admission Test, CAT IMPORTANT DATES, Last Date for Registration, CAT exam date,  CAT Bulletin, CAT Prospectus, CAT dates, CAT syllabus, CAT preparation, CAT practice tests, how to apply, CAT ELIGIBILITY, CAT online practice, quantitative tests, verbal tests, .";
metaTag.Content="CAT 2009 Registration help. Know each and every detail for CAT 2009 registration";
this.Header.Controls.Add(metaTag);

        }
    }
}
