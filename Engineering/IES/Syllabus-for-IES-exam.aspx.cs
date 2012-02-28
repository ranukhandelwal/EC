using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.IES
{
    public partial class Syllabus_for_IES_exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Indian Engineering Services IES exam Syllabus - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "About IES, Indian Engineering Services, IES Preparation, IES Eligibility, IES Important Dates,  IES Exam Pattern, IES exam Syllabus, Age relaxation details, Books for IES exam, Preparation Tips, IES coaching Institutes,  IES General Ability Test Syllabus, IES Electrical Engineering Syllabus, ies electronics and communication engineering syllabus, IES Civil Engineering Paper Syllabus, IES Mechanical Syllabus, ies syllabus for ece .";
metaTag.Content="Free online practice tests for Indian Engineering Services, IES 2009 important dates, IES exam preparation,  IES exam syllabus, Civil, Mechanical, Electrical, Electronics & communication, ECE syllabus, IES Eligibility, Recommended books ";
this.Header.Controls.Add(metaTag);

        }
    }
}
