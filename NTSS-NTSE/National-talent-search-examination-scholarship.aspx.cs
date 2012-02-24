using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.NTSS_NTSE
{
    public partial class National_talent_search_examination_scholarship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="National Talent Search Examination - NCERT - Indian Schools - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Indian Universities, University System in India, Admissions, Rajasthan University, College Admissions, University Admissions, Domicile Requirement";
metaTag.Content="Know about Indian Universities. Types of Indian Universities, Deemed Universities, Types of colleges in Indian Universities, Admission in colleges under Indian Universities, Domicile requirements of various Indian Universities";
this.Header.Controls.Add(metaTag);

        }
    }
}
