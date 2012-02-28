using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class BSNL_JTO1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="BSNL-JTO exam, Junior Telecom Officer for Bharat Sanchar Nigam Ltd - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "BSNL JTO 2009 Examination, free practice tests, syllabus, last date of application, data of examination,  date of result, number of seats, vacancies, Bharat Sanchar Nigam Ltd, Junior Telecom Officers,  civil engineering, electrical engineering, Telecom, General Ability Test, BSNL JTO forms, how to apply for JTO,";
metaTag.Content="BSNL JTO 2009 Examination, free practice tests, syllabus, last date of application, data of examination, date of result, number of seats, vacancies, Bharat Sanchar Nigam Ltd, Junior Telecom Officers";
this.Header.Controls.Add(metaTag);

        }
    }
}
