using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Deadlock_Detection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Deadlock-Detection- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Deadlock, process, system, resource, detection, operating, thread, start, need, register, tutorials, algorithm, processes, check� resources";
metaTag.Content="Operating System Tutorials-Introduction,Types,advantage,Resources of the Deadlock .";
this.Header.Controls.Add(metaTag);

        }
    }
}
