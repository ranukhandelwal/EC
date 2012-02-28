using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Layered_Approach_System_Design : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Layered Approach Design - Operating System Tutorials- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Operating System Tutorials, Layered Approach Design";
metaTag.Content="Operating System Tutorials, Layered Approach Design.";
this.Header.Controls.Add(metaTag);

        }
    }
}
