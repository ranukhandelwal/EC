using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Achieving_Mutual_Exclusion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Proposals-for-Achieving-Mutual-Exclusion- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Process, critical, section� buffer� lock, system, consumer, call, enter, sleep, producer� problem� solution� proposal� wakeup, turn, interrupts� communication� interprocess, conclusion, variable, bounded� processes, exclusion� mutual� data, calls, condition, producers, thread, operating, wants, consumers, protocol, waiting� testing� race� wakes, start, tutorials, systems, share, goes, full, allowed� register, suspend, just� time, post, approach";
metaTag.Content="Operating System Tutorials-Introduction and types of Interprocess Communication .";
this.Header.Controls.Add(metaTag);

        }
    }
}
