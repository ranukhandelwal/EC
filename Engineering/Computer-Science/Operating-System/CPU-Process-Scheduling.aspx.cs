using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class CPU_Process_Scheduling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" CPU-Process-Scheduling- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Process, scheduling, preemptive� system, time, scheduler� nonpreemptive, jobs, goals, fair, able, processes, processor, response, wait, follow, operating, called, algorithm, policy, register , safety, fairness, tutorials� part, discipline, processors� following, thread, post";
metaTag.Content="Operating System Tutorials- Introduction and details of CPU/Process Scheduling.";
this.Header.Controls.Add(metaTag);

        }
    }
}
