using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Mechanism_and_Policy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" OS Mechanisms and Policies - Operating System Tutorials - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " System, operating, layer, structure�systems, tutorials, layered, approach, thread";
metaTag.Content="Operating System Tutorials, OS Mechanisms and Policies ";
this.Header.Controls.Add(metaTag);

        }
    }
}
