using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering
{
    public partial class NIT_REC_India_Engineering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Every Thing about National Institute of Technology - Regional Engineering College - India - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Motilal Nehru National Institute of Technology, Allahabad, Maulana Azad National Institute of Technology, Bhopal, National Institute of Technology, Calicut , National Institute of Technology, Durgapur, National Institute of Technology, Hamirpur, Malaviya National Institute of Technology, Jaipur, Dr B R Ambedkar National Institute of Technology, Jalandhar, National Institute of Technology, Jamshedpur, National Institute of Technology, Kurukshetra, Visvesvaraya National Institute of Technology, Nagpur, National Institute of Technology, Patna, National Institute of Technology, Raipur, National Institute of Technology, Rourkela, National Institute of Technology, Silchar, National Institute of Technology, Srinagar, S V National Institute of Technology, Surat, National Institute of Technology Karnataka, Surathkal, National Institute of Technology, Tiruchirapalli, National Institute of Technology, Warangal, National Institutes of Technology (NITs), Regional Engineering College(REC)";
metaTag.Content="Find here List and details of National Institute of Technology(NIT) formerly Regional Engineering College(REC).";
this.Header.Controls.Add(metaTag);

        }
    }
}
