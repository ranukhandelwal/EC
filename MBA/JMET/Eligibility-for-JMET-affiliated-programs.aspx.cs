using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.JMET
{
    public partial class Eligibility_for_JMET_affiliated_programs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Eligibility for JMET affiliated programs 2009 Joint Management Entrance Test - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications, JMET mock test, free MBA preparation, MBA mock tests, Ministry of HRD, Masters in India, MBA colleges, post engineering colleges in India, Management Courses, MBA admissions 2009, sample questions, MBA in India, Ranking of MBA institutes, XLRI Jamshedpur, GMAT score accepted, JMET 2008, JMET 2009, Joint Management Entrance Test , IIT management Admission Test, JMET IMPORTANT DATES, Last Date for Registration, JMET exam date, JMET Bulletin, Prospectus, JMET dates, JMET syllabus, JMET preparation, JMET practice tests, how to apply, JMET ELIGIBILITY, JMET online practice.";
metaTag.Content="Free MBA exam preparation and MBA admissions JMET, IBSAT, SNAP, CAT, XAT, FMS, GMAT and others. Practice tests, Tips and Tricks for MBA preparation, Profile of MBA colleges, MBA admissions, Recommended books and study JMETerial";
this.Header.Controls.Add(metaTag);

        }
    }
}
