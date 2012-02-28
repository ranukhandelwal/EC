using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class IES1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="About IES Indian Engineering Services Exam - Examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About IES, IES 2009,Indian Engineering Services, UPSC, Union Public Service Commission, Electronics and telecommunications Engineering, Mechanical Engineering, electrical engineering, civil engineering,  IES Preparation, IES Eligibility, IES Important Dates, IES Exam Pattern, IES exam Syllabus, Age relaxation details, Books for IES exam,  Preparation Tips, IES coaching Institutes, Indian Railway Service, Central Engineering Service, Indian Defense Service of Engineers.";
metaTag.Content="Free online practice tests for Indian Engineering Services, IES 2009 important dates,  Tips and Tricks for IES exam preparation, IES syllabus, Civil, Mechanical, Electrical, Electronics & Telecommunication,  Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
