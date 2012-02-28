using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class Recommended_Books_For_AIEEE_Exam_Preparation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Recommended Books, study material For AIEEE Exam Preparation - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2010, Recommended Books for AIEEE, study material For AIEEE Exam, AIEEE Exam Preparation,  Book for AIEEE Physics, Book for AIEEE Chemistry, Book for AIEEE Mathematics,  AIEEE 2010 Eligibility, important dates for AIEEE exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, AIEEE Physics Papers, AIEEE Chemistry Papers, AIEEE Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="Recommended Books for AIEEE, study material For AIEEE Exam, AIEEE 2010, AIEEE PRACTICE Tests, books for AIEEE,  AIEEE preparation, AIEEE papers with solutions, important dates for AIEEE 2010";
this.Header.Controls.Add(metaTag);

        }
    }
}
