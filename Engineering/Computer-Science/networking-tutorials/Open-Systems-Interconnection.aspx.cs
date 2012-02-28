using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.networking_tutorials
{
    public partial class Open_Systems_Interconnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Computer Networks - The OSI model - Open Systems Interconnection- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Application Layer, Presentation Layer, Session Layer, Transport Layer, Network Layer, Datalink Layer, Physical Layer, ";
metaTag.Content="Solved problems on Electrical moving iron versus dynamometer type instruments. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
