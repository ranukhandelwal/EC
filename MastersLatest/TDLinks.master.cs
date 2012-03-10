using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ExamCrazy.Masters
{
    public partial class TDLinks : System.Web.UI.MasterPage
    {
      public int PAGEID = 7151;
      public string HeaderFilter; //default value;
       protected void Page_Load(object sender, EventArgs e)
        {
              if(this.PAGEID != 0)
                  Master.PAGEID = this.PAGEID;
              if(this.HeaderFilter != null)
                  Master.HeaderFilter = this.HeaderFilter;
              login.loginpanelno = 1;
        }
    }
}
