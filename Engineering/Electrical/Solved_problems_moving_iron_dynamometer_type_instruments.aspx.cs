using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Electrical
{
    public partial class Solved_problems_moving_iron_dynamometer_type_instruments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Solved Problems on Moving type and dynamometer type instruments by Prof Sunil Kumar - Electrical Engineering - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Prof Sunil Kumar, IES College, Greater Noida, Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET Electrical, Solved Problems, Moving type instruments, dynamometer type instruments, energy meter, revolutions, torque, attraction type, repulsion type, wattmeter, ammeter, voltmeter, induction type wattmeter, moving coil instrument, principle of operation of attraction type instruments, free electrical practice tests.";
metaTag.Content="Solved problems on Electrical moving iron versus dynamometer type instruments. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
