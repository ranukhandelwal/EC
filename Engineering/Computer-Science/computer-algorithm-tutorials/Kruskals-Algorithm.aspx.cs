using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials
{
    public partial class Kruskals_Algorithm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Kruskals-Algorithm- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " ****** ";
metaTag.Content=" Greedy Algorithms Introduction, Greedy Approach, Characteristics and Features of Problems solved by Greedy Algorithms, Structure Greedy Algorithm, Definitions of feasibility�., ";
this.Header.Controls.Add(metaTag);

        }
    }
}
