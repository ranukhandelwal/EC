using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class DRDO_SET1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Defence Research and Development Organisation Scientific Entry Test DRDO-SET - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "DRDO-SET, About DRDO-SET,DRDO-SET 2008, DRDO-SET 2009,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering, Mechanical Engineering, electrical engineering,  civil engineering, engineering Civil Services, DRDO-SET papers, DRDO-SET exam notification, DRDO-SET exam dates, Indian Railway Service,  Aero engineering, Chemical engineering, Instrumentation engineering, Metallurgy engineering, Chemistry, Physics, Maths, Operations Research,  Statistics, Central Engineering Service, DRDO-SET exam syllabus, DRDO-SET 2009 syllabus, DRDO-SET 2009 preparation, sample DRDO-SET questions,  DRDO-SET mock test, free DRDO-SET practice tests.";
metaTag.Content="Everything you need for DRDO-SET is available here for Free. DRDO-SET practice tests, DRDO-SET 2009 dates, Tips and Tricks for exam preparation, DRDO-SET syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
