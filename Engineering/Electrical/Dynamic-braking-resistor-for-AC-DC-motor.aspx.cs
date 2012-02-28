using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Electrical
{
    public partial class Dynamic_braking_resistor_for_AC_DC_motor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Dynamic braking, braking resistor for AC and DC motor by GATE Tutor - Electrical Engineering - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Prof Sunil Kumar, IES College, Greater Noida,  Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET Electrical, GATE Tutor, synchronous speed, regenerative braking, Dynamic braking, braking resistor, AC motor, DC motor, electrical generator, DC injection braking, free electrical practice tests.";
metaTag.Content="Dynamic braking, braking resistor for AC and DC motor by GATE Tutor. Visit us for many more such articles for  all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
