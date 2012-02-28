using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Electrical
{
    public partial class Synchronous_speed_of_AC_induction_motor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Synchronous speed of an AC induction motor by GATE Tutor - Electrical Engineering - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Prof Sunil Kumar, IES College, Greater Noida, Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET Electrical, GATE Tutor, Synchronous speed of an AC induction motor, instruments, energy meter, revolutions, torque, attraction type, repulsion type, wattmeter, ammeter, voltmeter, induction type wattmeter, moving coil instrument, principle of operation of attraction type instruments, free electrical practice tests.";
metaTag.Content="Synchronous speed of an AC induction motor by GATE Tutor. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
