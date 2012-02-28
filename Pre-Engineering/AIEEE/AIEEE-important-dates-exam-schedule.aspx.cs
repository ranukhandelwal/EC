using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_important_dates_exam_schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE exam schedule and other important dates - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2011, Dates of AIEEE Exams, AIEEE Admit Card, syllabus for AIEEE 2011 exam, AIEEE 2011 Eligibility, important dates for AIEEE 2011 exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, AIEEE Physics Papers, AIEEE Chemistry Papers, AIEEE Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="Dates of AIEEE Exams, AIEEE Admit Card, AIEEE 2011, AIEEE PRACTICE Tests, books for AIEEE, AIEEE preparation,  AIEEE papers with solutions, important dates for AIEEE 2011";
this.Header.Controls.Add(metaTag);

        }
    }
}
