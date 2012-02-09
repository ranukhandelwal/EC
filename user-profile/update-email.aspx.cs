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
    public partial class update_email : BaseLoggedInPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;
            lblOldEmail.Text = UserIdentity.UserEmail;
            if (UserIdentity.isEmail1Verified)
                lblVerifStatus.Text = "Verified";
            else
                lblVerifStatus.Text = "Not Verified";
        }

        public void UpdateEmail(object s, EventArgs e)
        {
            Utility Util = new Utility();
            string EmailUploadMessage = "Email Updated, please relogin";
            if (Request.Form[Email.UniqueID].ToString() != UserIdentity.UserEmail)
            {
                if (Blogic.UpdateEmail(UserIdentity.UserID, Request.Form[Email.UniqueID]) != 0)
                {
                    JSLiteral.Text = "<br>Error: Email updation failed. Please retry";
                    EmailUploadMessage = "Password updation failed";
                    JavaScript.Alert(EmailUploadMessage);
                }
                else
                {
                    JavaScript.Alert(EmailUploadMessage);
                    Response.Redirect(ResolveUrl("~/User/") + UserIdentity.UserName);
                }
            }
            else
            {
                JavaScript.Alert("Same Email Id");
            }
            
        }
    }
}