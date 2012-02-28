using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.GATE
{
    public partial class GATE_Important_dates_how_to_apply_2011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="How to apply for GATE 2011 and Important dates - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "GATE,GATE2011,GATE Dates, application,gateonline,gateoffline, gate online, gate offline, gate forms, gateforms";
metaTag.Content="How to apply for GATE 2011, Important Date for GATE 2011, availability of GATE 2011 forms, Last Date of GATE 2011, Date for GATE 2011 Exam, Date for GATE result, apply for GATE 2011, how to apply for gate 2011...";
this.Header.Controls.Add(metaTag);

        }
    }
}
