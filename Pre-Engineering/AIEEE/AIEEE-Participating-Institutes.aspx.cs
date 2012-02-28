using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_Participating_Institutes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE 2010 Participating Institutes colleges - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2010, AIEEE Participating Institutes, National Institutes of Technology,  AIEEE 2010 Eligibility, important dates for AIEEE exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, AIEEE Physics Papers, AIEEE Chemistry Papers, AIEEE Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="AIEEE Participating Institutes, AIEEE 2010, AIEEE PRACTICE Tests, books for AIEEE,  AIEEE preparation, AIEEE papers with solutions, important dates for AIEEE 2010";
this.Header.Controls.Add(metaTag);

        }
    }
}
