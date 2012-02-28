using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Interprocess_Communication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Interprocess-Communication- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Process� read, communication, condition, interprocess, share, interrupt, thread, operating, system, processes, race� conditions, need, systems, tutorials, shared� data, interrupts �register, mutual";
metaTag.Content="Operating System Tutorials-Introduction and types of Interprocess Communication .";
this.Header.Controls.Add(metaTag);

        }
    }
}
