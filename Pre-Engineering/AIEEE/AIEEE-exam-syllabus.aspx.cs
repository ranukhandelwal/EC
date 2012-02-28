using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class AIEEE_exam_syllabus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="AIEEE exam syllabus, Maths syllabus, physics syllabus, chemistry syllabus, aptitude syllabus - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About AIEEE exam, AIEEE 2011, AIEEE exam syllabus, AIEEE 2011 MATHMATICS Syllabus, AIEEE 2011 PHYSICS Syllabus, AIEEE 2011 CHEMISTRY Syllabus, AIEEE 2011 APTITUDE BARCH BPLANNING Syllabus,  AIEEE 2011 Eligibility, important dates for AIEEE 2011 exam, AIEEE preparation, Recommened books for AIEEE, AIEEE Results & admissions,  Strategy to attempt AIEEE, AIEEE PRACTICE Tests, AIEEE Physics Papers, AIEEE Chemistry Papers, AIEEE Mathematics Papers, Old AIEEE Papers.";
metaTag.Content="AIEEE exam syllabus 2011, AIEEE 2011, AIEEE PRACTICE Tests, books for AIEEE, AIEEE preparation,  AIEEE papers with solutions, important dates for AIEEE 2011";
this.Header.Controls.Add(metaTag);

        }
    }
}
