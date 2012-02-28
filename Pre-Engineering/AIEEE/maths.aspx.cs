using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Pre_Engineering.AIEEE
{
    public partial class maths : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Maths Tutorials for AIEEE, CBSE, IIT-JEE - examcrazy.com";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "";
metaTag.Content="Maths Tutorials for AIEEE, Free AIEEE practice tests, Syllabus for AIEEE 2010, Recommened books for AIEEE,  Strategy to attempt AIEEE, Old AIEEE papers, Engineering Colleges in India";
this.Header.Controls.Add(metaTag);

        }
    }
}
