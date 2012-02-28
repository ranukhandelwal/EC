using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Critical_Section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Critical-Section- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Read� process, thread, section, critica, code, communication, interprocess� codes� data, alter, shared, possibly� register, variables �tutorials, part, system, operating";
metaTag.Content="Operating System Tutorials-Introduction and types of Interprocess Communication .";
this.Header.Controls.Add(metaTag);

        }
    }
}
