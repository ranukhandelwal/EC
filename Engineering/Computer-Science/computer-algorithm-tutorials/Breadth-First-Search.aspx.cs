using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials
{
    public partial class Breadth_First_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Breadth-First-Search- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " ****** ";
metaTag.Content=" ****** ";
this.Header.Controls.Add(metaTag);

        }
    }
}
