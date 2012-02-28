using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.BHEL
{
    public partial class BHEL_exam_Eligibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="BHEL 2010 exam, BHEL eligibility, BHEL practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "BHEL 2010, BHEL 2010 Exam, BHEL practice papers, BHEL exam syllabus, BHEL exam eligibility,  BHEL Study Material, bhel papers electronics, bhel papers mechanical, bhel papers electrical, BHEL General Ability Test,  BHEL selection process, BHEL exam preparation, How to apply for BHEL 2010, BHEL 2010 FAQs";
metaTag.Content="BHEL 2010 Exam, BHEL papers, BHEL syllabus, BHEL exam date, BHEL exam eligibility,  BHEL Selection Process, BHEL mock tests";
this.Header.Controls.Add(metaTag);

        }
    }
}
