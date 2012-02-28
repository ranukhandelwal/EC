using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Operating_Systems_Structure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Operating Systems Structure - Operating System Tutorials- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "operating systems structure, operating System Component details, Operating System Services details, System Calls,  Layered Approach operating System Design, OS Mechanism and Policy details";
metaTag.Content="Operating System Tutorials-Operating Systems Structure.";
this.Header.Controls.Add(metaTag);

        }
    }
}
