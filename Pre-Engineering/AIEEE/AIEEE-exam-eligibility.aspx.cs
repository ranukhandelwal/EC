using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_exam_eligibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Eligibility criteria for AIEEE exam - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2011, Eligibility criteria for AIEEE exam, QUALIFYING EXAMINATIONS for AIEEE AIEEE 2011 Eligibility, AIEEE 2011 Syllabus, AIEEE Structure, AIEEE 2011 Important dates,  AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions, Strategy to attempt AIEEE, AIEEE PRACTICE Tests, Physics Papers, Chemistry Papers, Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="Eligibility criteria for AIEEE exam, AIEEE 2011, AIEEE PRACTICE Tests, books for AIEEE, AIEEE preparation,  AIEEE papers with solutions, important dates for AIEEE 2011";
this.Header.Controls.Add(metaTag);

        }
    }
}
