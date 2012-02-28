using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Multilevel_Queue_Scheduling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Multilevel-Queue-Scheduling- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Queue, process� scheduling� algorithm, processes, queues, system� priority, time� multilevel� operating� schedule� algorithms, tutorials, register";
metaTag.Content="Operating System Tutorials-Introduction and types of Scheduling Algorithms.";
this.Header.Controls.Add(metaTag);

        }
    }
}
