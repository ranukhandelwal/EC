using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Round_Robin_Scheduling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Round-Robin-Scheduling- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Scheduling, time� round, robin, algorithm� system, process, quantum, operating, thread, algorithms� tutorials";
metaTag.Content="Operating System Tutorials-Introduction and types of Scheduling Algorithms.";
this.Header.Controls.Add(metaTag);

        }
    }
}
