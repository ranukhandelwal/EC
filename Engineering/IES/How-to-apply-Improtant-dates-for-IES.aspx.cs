using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class How_to_apply_Improtant_dates_for_IES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to apply & Important dates for IES - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "IES, About IES,IES 2010, IES 2011,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics, Electronics and telecommunications Engineering, Computers, Computers Science Engineering, Mechanical Engineering,  electrical engineering, civil engineering, engineering Civil Services, IES papers, IES exam notification, IES exam dates, citizen of India, nationality, IES Eligibility, IES 2010 Eligibility, IES exam syllabus, IES 2010 syllabus, IES preparation,  sample IES questions, IES mock test, free IES practice tests, UPSC application form, IES application form, post office, Date of Notification, Last date of receipt of Applications, Day of IES exam, Duration of IES Examination.";
metaTag.Content="Everything for UPSC Engineering Services exam for Free. IES practice tests, IES 2011 dates, Tips and Tricks for exam preparation, IES syllabus, Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
