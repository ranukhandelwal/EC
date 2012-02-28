using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Mutual_Exclusion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Mutual-Exclusion- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Process� processes� mutual� exclusion, shared, communication, interprocess� section� critical, wait, conditions, need, variable� tutorials� system, operating, thread� waiting, data� executing� register, form";
metaTag.Content="Operating System Tutorials-Introduction and types of Interprocess Communication .";
this.Header.Controls.Add(metaTag);

        }
    }
}
