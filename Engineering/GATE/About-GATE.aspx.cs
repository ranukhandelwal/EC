using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class About_GATE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Graduate Aptitude Test in Engineering GATE 2011 - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering,  Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering,  Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering,  pharmaceutical science, textile engineering and fibre science, GATE engineering science engineering, life science engineering,  graduate aptitude test in engineering, GATE 2008, GATE 2011, GATE 2007, GATE 2006, join M. Tech., M. Tech in India, M. Tech Entrance, M.tech,  Masters degree, Masters in India, M. Tech colleges, GATE cutoff, admissions, GATE eligibility, GATE dates, GATE exam syllabus, Gate 2007 syllabus,  gate preparation, sample gate questions, gate practice papers, gate tutorials, gate test series, gate mock test, free gate test series, engineering colleges in India, GATE Committee, Department of Education, Ministry of Human Resources Development, Doctoral programmes in Engineering,  MHRD, Indian Institute of Science Bangalore, IISC Bangalore, Indian Institute of Technology Bombay, IITB, Indian Institute of Technology Delhi, IITD,  Indian Institute of Technology Guwahati, IITG, Indian Institute of Technology Kanpur, IITK, Indian Institute of Technology Kharagpur, IITKGP,  Indian Institute of Technology Madras, IITM, Indian Institute of Technology Roorkee, IITR.";
metaTag.Content="This website offer Free online GATE test series, Tips and Tricks for GATE preparation, How to solve GATE objective paper, List of M.Tech colleges, GATE syllabus, Changes in GATE 2011, GATE cutoff and admissions, Recommended books for GATE";
this.Header.Controls.Add(metaTag);

        }
    }
}
