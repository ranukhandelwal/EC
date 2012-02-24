using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.MBA.JMET
{
    public partial class CAT_2007_paper_key : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "";
metaTag.Content="";
this.Header.Controls.Add(metaTag);

        }
    }
}
