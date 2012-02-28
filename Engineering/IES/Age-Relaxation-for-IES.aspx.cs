using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class Age_Relaxation_for_IES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="IES Age relaxation categories - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "IES, About IES,IES 2008, IES 2009,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering, Mechanical Engineering,  electrical engineering, civil engineering, engineering Civil Services, IES papers, IES exam notification, IES exam dates, citizen of India, nationality, IES Eligibility, IES 2008 Eligibility, IES exam syllabus, IES 2008 syllabus, IES preparation,  sample IES questions, IES mock test, free IES practice tests, IES Age relaxation, categories, age relaxation Defence Services,  age relaxarion Ex-Servicemem, age relaxarion handicapped, upper age limit for IES, IES relaxation limit, .";
metaTag.Content="Everything for UPSC Engineering Services exam for Free. IES practice tests, IES 2009 dates, Tips and Tricks for exam preparation, IES syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
