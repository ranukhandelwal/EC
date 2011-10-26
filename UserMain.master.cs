using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.BL.Providers.User;

namespace ExamCrazy
{
    public partial class UserMain : System.Web.UI.MasterPage
    {
        public string Uname;
        public string UEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfoCtrl.UName = Uname;
            if(Uname == UserIdentity.UserName)
                UserInfoCtrl.UEmail = UserIdentity.UserEmail;

        }
    }
}
