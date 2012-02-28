using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Process_Control_Block : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Process Control Block - Operating System Tutorials- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Operating System Tutorials-Definition of Process, Process Creation,Process State,Process Operations";
metaTag.Content="Operating System Tutorials-Definition of Process, Process Creation,Process State,Process Operations .";
this.Header.Controls.Add(metaTag);

        }
    }
}
