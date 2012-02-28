using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Electronics_Communication
{
    public partial class Introduction_of_Digital_Electronics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title =" Introduction of Digital Electronics- ExamCrazy.Com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "******.";
metaTag.Content="******.";
this.Header.Controls.Add(metaTag);

        }
    }
}
