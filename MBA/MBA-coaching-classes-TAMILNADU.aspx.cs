using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA
{
    public partial class MBA_coaching_classes_TAMILNADU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="MBA Coaching Institutes Classes in TAMILNADU India for CAT MAT XAT FMS SNAP management entrance exams - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Managamenet classes, MBA coaching classes, MBA in India, MBA admissions, MBA coaching institutes,  management training institutes, MBA coaching in india, MBA coaching in bangalore, MBA classes in delhi, MBA classes in Hyderabad, MBA coaching in Chennai,  MBA classes in Haryana, coaching in Karnataka, coaching in kolkata, classes in Mumbai, coaching classes in chandigarh, MBA coaching in pune, coaching in surat, IIM Bangalore, IIMC, IIMA, IIML, objective type papers, subjective papers, numericals, tests from faculty, group discussions, MBA interview preparation,  free MBA practice tests, verbal ability tests, quantatitative ability tests.";
metaTag.Content="Electrical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
