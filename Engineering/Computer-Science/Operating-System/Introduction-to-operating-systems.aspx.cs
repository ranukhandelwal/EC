using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Operating_System
{
    public partial class Introduction_to_operating_systems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Introduction to Operating System - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " System, operating, user, systems, process, processes, resource� hardware, device service� computer, abstraction, form, kernel, manage� devices� program, control, view� interface, mach, introduction, functions� provide� virtual, machine, resources� programs, level, services� manager� software, privilege, point� definition� application� controls, file, different, need� views� operations� thread� input� output, generally� data, tutorials";
metaTag.Content="Operating System Tutorials-definition of an operating system .";
this.Header.Controls.Add(metaTag);

        }
    }
}
