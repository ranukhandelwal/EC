using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ExamCrazy.Engineering.Mathematics
{
    public partial class Non_Linear_Programming : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
Page.Header.Title ="Non Linear Programming - Constrained Optimization Techniques by Alok Bhargava, RIET, Jaipur";
HtmlMeta metaTag = new HtmlMeta();
metaTag.Name =  "Non Linear Programming, Constrained Optimization Techniques";
metaTag.Content="Non Linear Programming - Constrained Optimization Techniques";
this.Header.Controls.Add(metaTag);

        }
    }
}
