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
    public partial class update_password : BaseActivationPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;
            if (!base.Activation)
            {
                pnldefault.Visible = true;
                pnlActivation.Visible = true;
            }
            else if ((base.__isPswdLinkAuthenticate) && (base.Activation))
            {
                pnlActivation.Visible = true;
            }
            else
            {
                lblupdatepswd.Text = "Invalid Activation Link";
            }

        }

        public void UpdatePassword(object s, EventArgs e)
        {
            Utility Util = new Utility();
            if (Request.Form[Password1.UniqueID] == Request.Form[Password2.UniqueID])
            {
                string PwdUploadMessage = "Password Updated, please relogin";
                if (!base.Activation)
                {
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
                else
                {
                    if (Blogic.UpdatePassWord(base.__username, Encryption.Encrypt(Request.Form[Password1.UniqueID])) <= 0)
                    {
                        JSLiteral.Text = "<br>Error: Password updation failed. Please retry";
                        PwdUploadMessage = "Password updation failed";
                        JavaScript.Alert(PwdUploadMessage);
                    }
                    else
                    {
                        JavaScript.Alert(PwdUploadMessage);
                        LoginRepository.Logout();
                    }
                }
            }
        }
    }
}