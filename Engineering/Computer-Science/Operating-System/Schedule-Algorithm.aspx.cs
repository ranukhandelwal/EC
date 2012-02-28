using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Schedule_Algorithm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Scheduling-Algorithms - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Scheduling, algorithm, algorithms, system, operating, queue, tutorials";
metaTag.Content="Operating System Tutorials-Introduction and types of Scheduling Algorithms.";
this.Header.Controls.Add(metaTag);

        }
    }
}
