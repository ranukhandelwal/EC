using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.BHEL
{
    public partial class BHEL_number_of_seats_requirements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="BHEL 2010 exam, BHEL number of seats, BHEL 2010 requirements - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "BHEL 2010, BHEL 2010 Exam, BHEL practice papers, BHEL exam syllabus, BHEL exam eligibility,  BHEL Study Material, bhel papers electronics, bhel papers mechanical, bhel papers electrical, BHEL General Ability Test,  BHEL selection process, BHEL exam preparation, How to apply for BHEL 2010, BHEL 2010 FAQs, BHEL number of seats, BHEL 2010 requirements, Number of vacancies for BHEL, BHEL Engineer Trainee";
metaTag.Content="BHEL 2010 Exam, BHEL papers, BHEL syllabus, BHEL exam date, BHEL exam eligibility,  BHEL Selection Process, BHEL mock tests";
this.Header.Controls.Add(metaTag);

        }
    }
}
