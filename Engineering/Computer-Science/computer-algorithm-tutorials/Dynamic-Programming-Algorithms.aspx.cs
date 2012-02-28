using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials
{
    public partial class Dynamic_Programming_Algorithms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Dynamic-Programming-Algorithms - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " ****** ";
metaTag.Content=" Dynamic Programming Algorithms, The Principle of Optimality, Dynamic programming Algorithms, Compatible Activities, Dynamic-Programming Algorithm, Analysis, Fractional knapsack problem, 0-1 knapsack problem ";
this.Header.Controls.Add(metaTag);

        }
    }
}
