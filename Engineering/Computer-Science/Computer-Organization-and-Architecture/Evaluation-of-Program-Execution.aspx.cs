using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture
{
    public partial class Evaluation_of_Program_Execution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Evaluation of Program Execution- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  " Evaluation of Program Execution, What are Programs Doing Most of the Time";
metaTag.Content="Solved problems on Electrical moving iron versus dynamometer type instruments. Visit us for many more such articles for all engineering and MBA related exams.";
this.Header.Controls.Add(metaTag);

        }
    }
}
