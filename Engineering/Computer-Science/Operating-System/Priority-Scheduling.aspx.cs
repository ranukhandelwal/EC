using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Priority_Scheduling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Priority-Scheduling- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Priority, algorithm, process� scheduling, system, preemptive, operating, external� schedule, internal� thread, requirements, defined� priorities� tutorials, algorithms, compute";
metaTag.Content="Operating System Tutorials-Introduction and types of Scheduling Algorithms.";
this.Header.Controls.Add(metaTag);

        }
    }
}
