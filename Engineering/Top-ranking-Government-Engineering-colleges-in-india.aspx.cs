using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering
{
    public partial class Top_ranking_Government_Engineering_colleges_in_india : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Top Government Engineering colleges in India ranking of engineering institutes - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Engineering College, Mtech in India, Private colleges, priavte engineering institutes, Indian Engineering Services, UPSC, IES, GATE, ranking of engineering colleges, government engineering institutes, government universities, NIT, IIT kanpur, kharagpur, delhi iit, iit mumbai, IIT Roorkee, IT BHU, nit trichy, nit jaipur, nsit, mnnit, nitkkr, nit warangal, nit hamirpur,  jntu hyderabad, University College of Engineering, University Engineering College, Engineering & Technology,  Solved Problems, objective type papers, subjective papers, numericals, tests from faculty, electrical engineering colleges, discuss questions, free electrical practice tests.";
metaTag.Content="Electrical Engineering articles, solved numericals, questions, objective type papers, GATE, IES practice tests. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
