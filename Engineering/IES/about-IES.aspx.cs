using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class about_IES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="About IES Indian Engineering Services - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "IES, About IES,IES 2008, IES 2009,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering, Mechanical Engineering,  electrical engineering, civil engineering, engineering Civil Services, IES papers, IES exam notification, IES exam dates, Indian Railway Service, Central Engineering Service, Indian Defense Service of Engineers, Indian Navy, Naval services, defense service,  Indian Inspection Service, geological survey, water engineering,  IES exam syllabus, IES 2008 syllabus, IES preparation, sample IES questions, IES mock test, free IES practice tests.";
metaTag.Content="Everything for UPSC Engineering Services exam for Free. IES practice tests, IES 2009 dates, Tips and Tricks for exam preparation, IES syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
