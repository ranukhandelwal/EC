using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Electronics_Communication
{
    public partial class Applications_of_Diodes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Applications of Diodes - Electronics & Communication tutorials - ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Electrical Engineering, Electrical, Prof Sunil Kumar, IES College, Greater Noida, Indian Engineering Services, UPSC, IES, GATE, GATE Electrical, DRDO-SET Electrical, Solved Problems, 3-phase, induction motor, , motor speed, generator, revolutions, torque, wattmeter, ammeter, voltmeter, free electrical practice tests.";
metaTag.Content="Applications of Diodes - Electronics & Communication tutorials. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
