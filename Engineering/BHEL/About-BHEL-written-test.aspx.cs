using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.BHEL
{
    public partial class About_BHEL_written_test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="About BHEL 2010 exam, bhel jobs for freshers, bhel et recruitment 2010 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "BHEL ET 2010, BHEL ET 2010 Dates , BHEL ET Recruitment, BHEL ET 2010 exam Pattern, BHEL ET 2010 exam Sections,  BHEL practice papers, BHEL ET Syllabus, BHEL 2010 eligibility, BHEL selection process, BHEL 2010 How to Apply, BHEL important FAQs, BHEL Study Material, bhel papers electronics, bhel papers mechanical, bhel papers electrical, BHEL exam preparation, BHEL jobs for freshers";
metaTag.Content="BHEL 2010 Exam, BHEL papers, BHEL syllabus, BHEL exam date, BHEL exam eligibility,  BHEL Selection Process, BHEL mock tests";
this.Header.Controls.Add(metaTag);

        }
    }
}
