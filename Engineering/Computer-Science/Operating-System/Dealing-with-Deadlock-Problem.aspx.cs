using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Dealing_with_Deadlock_Problem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Dealing-with-Deadlock-Problem- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Deadlock, problem, operating� system, thread, register, tutorials, dealing, resource";
metaTag.Content="Operating System Tutorials-Introduction,Types,advantage,Resources of the Deadlock .";
this.Header.Controls.Add(metaTag);

        }
    }
}
