using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Deadlock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Deadlock- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Resource, deadlock� process� resources preemptable, system, example, nonpreemptable� deadlocks� operating, processes, register, printer� need, thread� drive� release, tutorials, systems";
metaTag.Content="Operating System Tutorials-Introduction,Types,advantage,Resources of the Deadlock .";
this.Header.Controls.Add(metaTag);

        }
    }
}
