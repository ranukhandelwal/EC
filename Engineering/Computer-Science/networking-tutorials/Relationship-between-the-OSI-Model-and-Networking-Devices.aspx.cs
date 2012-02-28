using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.networking_tutorials
{
    public partial class Relationship_between_the_OSI_Model_and_Networking_Devices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Relationship between the OSI Model and Networking Devices - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Most commonly used protocols , PPP Point-to-Point Protocol , SLIP Serial Line Internet Protocol , FTP File Transfer Protocol , Telnet, SMTP Simple Mail Transfer Protocol , HTTP Hyper Text Transport Protocol , SNMP Simple Network Management Protocol , UDP User Data gram Protocol, TCP Transmission�Control�Protocol , IP Internet Protocol, ARP Address Resolution�Protocol , NNTP Network News Transport Protocol , ";
metaTag.Content="Solved problems on Electrical moving iron versus dynamometer type instruments. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
