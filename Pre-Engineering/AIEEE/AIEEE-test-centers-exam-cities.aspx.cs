using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_test_centers_exam_cities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE exam cities test centers - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2010, AIEEE Test CENTERS, AIEEE exam cities,  AIEEE 2010 Eligibility, important dates for AIEEE 2010 exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, AIEEE Physics Papers, AIEEE Chemistry Papers, AIEEE Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="AIEEE Test CENTERS, AIEEE exam cities, AIEEE 2010, AIEEE PRACTICE Tests, books for AIEEE,  AIEEE preparation, AIEEE papers with solutions, important dates for AIEEE 2010";
this.Header.Controls.Add(metaTag);

        }
    }
}
