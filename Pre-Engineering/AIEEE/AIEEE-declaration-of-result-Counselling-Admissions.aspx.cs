using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_declaration_of_result_Counselling_Admissions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE declaration of result, AIEEE Counselling, Seat Allocation and Admissions - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2010, AIEEE 2010 result, AIEEE Evaluation and Declaration of Results, AIEEE Counselling, AIEEE 2010 Eligibility, important dates for AIEEE 2010 exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, Physics Papers, Chemistry Papers, Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="AIEEE 2010 result, AIEEE Counselling, AIEEE 2010, AIEEE PRACTICE Tests, books for AIEEE,  AIEEE preparation, AIEEE papers with solutions, important dates for AIEEE 2010";
this.Header.Controls.Add(metaTag);

        }
    }
}
