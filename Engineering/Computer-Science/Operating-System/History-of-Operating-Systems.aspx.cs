using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class History_of_Operating_Systems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" History of Operating Systems - Operating System Tutorials - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Operating, system, systems, computer, generation� program, history, technique, generations, time, computers,  thread� multiprogram, programming, programs, spool, once, jobs, large, multiprogramming, personal� spooling, output, batch, 1950, register,  evolved, third, need, introduction, tutorials� device ";
metaTag.Content="Operating System Tutorials, History of Operating Systems and computer Generations.";
this.Header.Controls.Add(metaTag);

        }
    }
}
