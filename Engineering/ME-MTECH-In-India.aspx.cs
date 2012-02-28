using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class ME_MTECH_In_India : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Engineering exam preparations and admissions GATE, Enginneering Services (IES), JTO, DRDO, PSUs - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics, Electronics and communications Engineering, Computers, Computers Science Engineering, Mechanical Engineering, Chemical Engineering, electrical engineering, aerospace engineering, agriculture engineering, civil engineering, Geology and Geophysics, instrumentation, mathematics, mining engineering, metallurgical engineering, physics, production and industrial engineering, pharmaceutical science, textile engineering and fibre science, GATE engineering science engineering, life science engineering, Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, engineering colleges, discuss questions, engineering colleges in India, Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET, graduate aptitude test in engineering, GATE 2008, GATE 2009, GATE cutoff, admissions, GATE eligibility, GATE dates, GATE exam syllabus, Gate 2007 syllabus, free practice tests, gate preparation, sample gate questions, gate practice papers, gate tutorials, gate test series, gate mock test, free gate test series, GATE Committee, M. Tech in India, M. Tech Entrance, M.tech, Masters degree, Masters in India, M. Tech colleges, Department of Education, Ministry of Human Resources Development, Doctoral programmes in Engineering, MHRD, Indian Institute of Science Bangalore, IISC Bangalore, Indian Institute of Technology Bombay, IITB, Indian Institute of Technology Delhi, IITD, Indian Institute of Technology Guwahati, IITG, Indian Institute of Technology Kanpur, IITK, Indian Institute of Technology Kharagpur, IITKGP, Indian Institute of Technology Madras, IITM, Indian Institute of Technology Roorkee, IITR.";
metaTag.Content="Everything for all Engineering exams and admissions is available here for Free. GATE, IES, Engineering Services, UPSC, DRDO-SET, NTPC, BSNL JTO, PSU recruitment exams, practice tests, List of M.Tech colleges, GATE syllabus, GATE cutoff and admissions, Recommended books and much more";
this.Header.Controls.Add(metaTag);

        }
    }
}
