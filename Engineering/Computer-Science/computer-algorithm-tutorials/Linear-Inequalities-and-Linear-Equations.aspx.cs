using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials
{
    public partial class Linear_Inequalities_and_Linear_Equations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Linear-Inequalities-and-Linear-Equations- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " ****** ";
metaTag.Content=" Mathematics for Algorithmic,Sets, Functions and Relations , Vectors and Matrices, Linear Inequalities and Linear Equations ";
this.Header.Controls.Add(metaTag);

        }
    }
}
