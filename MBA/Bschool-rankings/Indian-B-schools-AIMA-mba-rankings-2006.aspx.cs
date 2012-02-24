using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.Bschool_rankings
{
    public partial class Indian_B_schools_AIMA_mba_rankings_2006 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Top-100 Indian BSchool AIMA MBA rankings 2006 MBA in India Management Education - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "MBA, Management, Master in Business Applications,  SNAP, Symbiosis National Aptitude Test, CAT, Common Admission Test, MAT, Management Aptitude test, XAT, Xavier admission test, JMET, Joint Management Entrance Test, IBSAT 2008, ICFAI Business School Aptitude Test, IIFT, FMS, Faculty of Management Studies,  Last Date for Registration, MBA entrance Tests 2008, Important dates, admission notifications, various MBA entrance exams, last date, exam notification, submission of application, application forms, Masters in India, MBA colleges, Management Courses,  Ranking of MBA institutes, MBA practice tests, CAT, MAT, XAT, SNAP, JMET, IBSAT, NMAT, FMS, ATMA, AIMS, mba online, free test preparation, MBA mock tests, AIMA, All India Management Association.";
metaTag.Content="Everything you need for MBA preparation/admission is available here for Free. SNAP, JMET, CAT, MAT, XAT and other MBA exam practice tests, exam dates, Tips and Tricks for preparation, Profile of all MBA institutes, admission requirements etc ";
this.Header.Controls.Add(metaTag);

        }
    }
}
