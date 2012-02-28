using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class Computer_Science1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Computer Science & Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Computer Engineering, Computer, Engineering College, Mtech in India, Indian Engineering Services, UPSC, IES, GATE, GATE Computer, DRDO-SET Computer, Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, Computer engineering colleges, discuss questions, free Computer practice tests.";
metaTag.Content="Computer Science Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
