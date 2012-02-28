using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class Syllabus_for_IES_Electrical_Engineering_paper_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Syllabus for IES Electrical Engineering Paper I - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "IES, About IES,IES 2008, IES 2009,Indian Engineering Services, UPSC, Union Public Service Commission, IES General Ability Test, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering,  Mechanical Engineering, electrical engineering, civil engineering, engineering Civil Services, General English, General english, IES exam notification, IES exam dates, IES exam syllabus, IES 2008 syllabus, Category, Section, Subject, Duration,  IES preparation, sample IES questions, IES mock test, free IES practice tests, IES papers, tips for IES exam, IES tips,  citizen of India, nationality, IES Eligibility, IES 2008 Eligibility, IES Examination Pattern, books for IES, IES study material, IES Age relaxation, categories, age relaxation Defence Services, age relaxarion Ex-Servicemem, age relaxarion handicapped,  upper age limit for IES, IES relaxation limit, .";
metaTag.Content="Everything for UPSC Engineering Services exam for Free. IES practice tests, IES 2009 dates, Tips and Tricks for exam preparation, IES syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
