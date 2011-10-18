using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamCrazy.Test
{
    public partial class HeaderTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LiteralControl l;
            Page.Header.DataBind();
            //HeaderCtr1.filter = "__usr__";
            
        }
    }
}
