using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class physics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Physics Tutorials for AIEEE, CBSE, IIT-JEE - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "";
metaTag.Content="Physics Tutorials for AIEEE, Free AIEEE practice tests, Syllabus for AIEEE 2010, Recommened books for AIEEE,  Strategy to attempt AIEEE, Old AIEEE papers, Engineering Colleges in India";
this.Header.Controls.Add(metaTag);

        }
    }
}
