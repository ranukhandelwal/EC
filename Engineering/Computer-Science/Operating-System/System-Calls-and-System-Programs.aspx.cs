using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class System_Calls_and_System_Programs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" System Calls and System Programs - Operating System Tutorials- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " System, operating� call� program, calls, process� systems, read, programs, structure� thread, tutorials� need";
metaTag.Content="Operating System Tutorials- Operating Systems Structure.";
this.Header.Controls.Add(metaTag);

        }
    }
}
