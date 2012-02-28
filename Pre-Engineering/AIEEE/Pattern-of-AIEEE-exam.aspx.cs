using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class Pattern_of_AIEEE_exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Pattern of AIEEE papers - Free AIEEE practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2011, PATTERN OF AIEEE QUESTION PAPERs, Pattern of AIEEE exam, AIEEE 2011 Eligibility, AIEEE 2011 Syllabus, AIEEE Structure, AIEEE 2011 Important dates, AIEEE Results & admissions, AIEEE Participating colleges, AIEEE preparation, Recommened books for AIEEE, Strategy to attempt AIEEE, AIEEE PRACTICE Tests, Physics Papers, Chemistry Papers, Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="PATTERN OF AIEEE QUESTION PAPERs, AIEEE 2011, AIEEE PRACTICE Tests, books for AIEEE, AIEEE preparation,  AIEEE papers with solutions, important dates for AIEEE 2011";
this.Header.Controls.Add(metaTag);

        }
    }
}
