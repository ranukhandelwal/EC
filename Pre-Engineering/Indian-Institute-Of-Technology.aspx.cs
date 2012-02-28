using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering
{
    public partial class Indian_Institute_Of_Technology : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Every Thing about Indian Institute of Technology - IIT - India - Examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Indian Institute of Technology - Delhi, Indian Institute of Technology - Chennai, Indian Institute of Technology - Kanpur, Indian Institute of Technology - Kharagpur,Indian Institute of Technology - Guwahati, Indian Institute of Technology - Roorkee, Indian Institute of Technology - Powai-Bombay, Indian Institute of Technology - Bhubaneswar, Indian Institute of Technology - Gandhinagar, Indian Institute of Technology - Hyderabad, Indian Institute of Technology - Punjab, Indian Institute of Technology - Patna, Indian Institute of Technology - Rajasthan, IIT-JEE";
metaTag.Content="Find here every Detail of Indian Institute of Technology - IIT. How to take Admission in IIT, Advantage IIT, Courses in IIT's, Coaching Institute for IIT's, Cut off for IIT's etc - ExamCrazy.Com";
this.Header.Controls.Add(metaTag);

        }
    }
}
