using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Solaris_2_Operating_Systems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Solaris-2-Operating-Systems- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Thread, level, threads, kernel, system, operating, need, solaris, needs, lwps� process� resource, systems, switch, block, register� support, scheduling, require� switching, efficient, task, introduction, tutorials, start";
metaTag.Content="Operating System Tutorials-Introduction and types of Solaris-2 Operating Systems.";
this.Header.Controls.Add(metaTag);

        }
    }
}
