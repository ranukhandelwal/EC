using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering
{
    public partial class BE_BTECH_In_India : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Bachelor of Engineering(B.E.) and Bachelor of Technology In India - ExamCrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "B.Tech Admissions, B.E. Admissions, Pre engineering Tests, Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering, Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering, Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering, pharmaceutical science, textile engineering and fibre science, engineering science, life science engineering, physics, chemistry, mathematics, AIEEE 2008, AIEEE 2009, AIEEE 2007, AIEEE 2006, join BTech., BTech in India, BTech Entrance, Btech, engineering colleges in India, deemed university, Bachelor degree, Bachelors in India, BTech colleges, master programmes in Engineering, AIEEE cutoff, admissions, AIEEE eligibility, AIEEE dates, AIEEE exam syllabus, AIEEE 2007 syllabus, AIEEE preparation, sample AIEEE questions, AIEEE practice papers, AIEEE tutorials, AIEEE Committee, AIEEE test series, AIEEE mock test, free AIEEE test series, physics practice tests, chemistry tests, mathematics tests, AIEEE 2008 solved paper, physics tutorials, chemistry tutorials, mathematics problems, solved examples, numerical problems, Department of Education, MHRD, Ministry of Human Resources Development, CBSE, Central board of secondary education, Indian Institute of Technology Bombay, IITB, Indian Institute of Technology Delhi, IITD, Indian Institute of Technology Guwahati, IITG, Indian Institute of Technology Kanpur, IITK, Indian Institute of Technology Kharagpur, IITKGP, Indian Institute of Technology Madras, IITM, Indian Institute of Technology Roorkee, IITR.";
metaTag.Content="Everything you need for Bachelor of Enginerring(B.E.) and Bachelor of Technology(B.Tech.) in India is available here for Free. Regulatory Authorities for B.E./B.Tech. Admission Procedures for B.E./B.Tech. All India and State Wise Pre Enginerring Tests. AIEEE practice tests, IIT practice Tests, Pre-Engineering Practice Tests(PET) Tips and Tricks for AIEEE preparation";
this.Header.Controls.Add(metaTag);

        }
    }
}
