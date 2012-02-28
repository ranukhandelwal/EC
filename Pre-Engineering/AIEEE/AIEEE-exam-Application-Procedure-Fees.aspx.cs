using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_exam_Application_Procedure_Fees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE exam Application Procedure - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2010, AIEEE exam Application Procedure, AIEEE website, Pattern of AIEEE exam, AIEEE 2010 Eligibility, AIEEE 2010 Syllabus, AIEEE Structure, AIEEE 2010 Important dates, AIEEE Application Fees, AIEEE application Online submission, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions, Strategy to attempt AIEEE, AIEEE PRACTICE Tests, Physics Papers, Chemistry Papers, Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="AIEEE exam Application Procedure, AIEEE 2010, AIEEE PRACTICE Tests, books for AIEEE, AIEEE preparation,  AIEEE papers with solutions, important dates for AIEEE 2010";
this.Header.Controls.Add(metaTag);

        }
    }
}
