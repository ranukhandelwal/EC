using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture
{
    public partial class Multimedia_Extensions_to_General_Purpose_Microprocessors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Multimedia Extensions to General Purpose Microprocessors- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Multimedia Extensions to General Purpose Microprocessors ";
metaTag.Content="Solved problems on Electrical moving iron versus dynamometer type instruments. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
