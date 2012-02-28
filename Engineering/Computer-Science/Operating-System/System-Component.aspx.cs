using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class System_Component : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" System Components - Operating System Tutorials- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Operating, System, user, program� systems, programs, service, process, provide, error, file, computer, structure, involves, level� task, processes� manage, worry� memory, services� need� storage, secondary, tutorials, thread, operation, message, management� case� running, provides";
metaTag.Content="Operating System Tutorials- Operating Systems Structure.";
this.Header.Controls.Add(metaTag);

        }
    }
}
