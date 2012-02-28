using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Deadlock_Prevention : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Deadlock-Prevention- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Resource, resources� process, request, condition, deadlock, order, strategy, need, wait, drive� hold, require� read� processes, elimination� second, operating, post, printer, denied� indefinite, drives, deadlocks, tape, held, requests, thread, types, release, ordering, additional� available, once, tutorials, share, mutual";
metaTag.Content="Operating System Tutorials-Introduction,Types,advantage,Resources of the Deadlock .";
this.Header.Controls.Add(metaTag);

        }
    }
}
