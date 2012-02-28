using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class Electronics_Communication1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Electronics & Communication Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electronics Engineering, Electronics, Engineering College, Mtech in India, Indian Engineering Services, UPSC, IES, GATE, GATE Electronics, DRDO-SET Electronics, Electronics & Communication, Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, Electronics engineering colleges, discuss questions, free Electronics practice tests.";
metaTag.Content="Electronics & Communication articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
