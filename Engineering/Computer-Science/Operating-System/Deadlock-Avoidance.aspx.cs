using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Deadlock_Avoidance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Deadlock-Avoidance- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Deadlock, unit� banker, nits� units� safe, algorithm, state� customers, system, request� operating, occur, resource, unsafe, resources, imply� post, thread, available, granted register, necessary, occurs, process, avoid� tutorials, figure, deadlocks";
metaTag.Content="Operating System Tutorials-Introduction,Types,advantage,Resources of the Deadlock .";
this.Header.Controls.Add(metaTag);

        }
    }
}
