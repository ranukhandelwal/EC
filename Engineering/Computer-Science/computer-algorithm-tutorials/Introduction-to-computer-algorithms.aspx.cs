using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials
{
    public partial class Introduction_to_computer_algorithms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Introduction-to-Computer-Algorithms - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "algorithm, complexity, problem, bound, form, notation, time, step, right, input, constant, function, lower, analysis, size, given, user, performance, case, operation, upper, algorithms, computation, model, transform, computer, introduction, optimal,running";
metaTag.Content=" Introduction to Computer Algorithms ,Classic Multiplication Algorithm, Algorithm's Performance, Algorithm Analysis, Optimality, Reduction ";
this.Header.Controls.Add(metaTag);

        }
    }
}
