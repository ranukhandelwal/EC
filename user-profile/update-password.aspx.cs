using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace ExamCrazy.user_profile
{
    public partial class update_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;

        }

        public void UpdatePassword(object s, EventArgs e)
        {
            Utility Util = new Utility();
            if (Request.Form[Password1.UniqueID] == Request.Form[Password2.UniqueID])
            {
                string PwdUploadMessage = "Password Updated, please relogin";
                if (Blogic.UpdatePassWord(UserIdentity.UserID, Encryption.Encrypt(Request.Form[OldPassword.UniqueID]), Encryption.Encrypt(Request.Form[Password1.UniqueID])) <= 0)
                {
                    JSLiteral.Text = "<br>Error: Password updation failed. Please retry";
                    PwdUploadMessage = "Password updation failed";
                    JavaScript.Alert(PwdUploadMessage);
                }
                else
                {
                    JavaScript.Alert(PwdUploadMessage);
                    Response.Redirect(ResolveUrl("~"));
                }
            }
        }
    }
}