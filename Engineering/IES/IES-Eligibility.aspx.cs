using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class IES_Eligibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="IES Eligibility details - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "IES, About IES,IES 2008, IES 2010,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering, Mechanical Engineering,  electrical engineering, civil engineering, engineering Civil Services, IES papers, IES exam notification, IES exam dates, citizen of India, nationality, IES Eligibility, IES 2008 Eligibility, IES exam syllabus, IES 2008 syllabus, IES preparation,  sample IES questions, IES mock test, free IES practice tests.";
metaTag.Content="IES practice tests, IES 2010 dates, Tips and Tricks for exam preparation, IES syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
