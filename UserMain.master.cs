using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamCrazy
{
    public partial class UserMain : System.Web.UI.MasterPage
    {
        public string Uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfoCtrl.UName = Uname;

        }
    }
}
