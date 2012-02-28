using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering
{
    public partial class Admission_notifications_Engineering_institutes_india_BE_Btech : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Admission notifications for BE Btech courses in engineering colleges in India - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Engineering, Engineering College, Mtech in India, PhD in India, ME, Indian Engineering Services, GATE,  admission notification, last date of application, apply for PhD, Electronics, Electrical, Communication, Mechanical, Metallurgical, Production, computer engineering, Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, electrical engineering colleges, discuss questions, free electrical practice tests.";
metaTag.Content="Admission notifications, details of all Engineering institutes in India, coaching classes, Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
