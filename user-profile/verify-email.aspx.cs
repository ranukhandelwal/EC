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
    public partial class verify_email : BaseActivationPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;
            if (base.Activation)
            {
                pnlActivation.Visible = true;
                pnlDefault.Visible = false;
                if (base.__isEmailLinkAuthenticate)
                {
                    lblmessage.Text = "Email Verification Passed";
                }
                else
                {
                    lblmessage.Text = "Oops!! Email Verification Failed";
                }
            }
            else
            {
                pnlDefault.Visible = true;
                pnlActivation.Visible = false;
                if (UserIdentity.isEmail1Verified)
                {
                    lblmessage.Text = "Email Already Verified";
                    BtnEmailVerification.Visible = false;
                }
                else
                {
                    lblmessage.Text = "Email Verification is necessary. With out this many features will not be availaible<br><br><br>";
                    BtnEmailVerification.Visible = true;
                }
            }
        }

        public void SendEmailVerificationLink(object s, EventArgs e)
        {
            Utility Util = new Utility();
            string EmailUploadMessage = "Email Verification Link Sent @ <b>" + UserIdentity.UserEmail + "</b>";
            EmailUploadMessage = EmailUploadMessage + "<br>Please click on the link to verify your email id";
            string EmailVerificationLink;
            EmailRepository SendEmail = new EmailRepository();
            UserActivationLink EmailActivationLink = new UserActivationLink();
            EmailVerificationLink = EmailActivationLink.GenerateActivationLink();
            EmailVerificationLink = ResolveUrl(SiteConfiguration.EmailVerificationPage()) + EmailVerificationLink;
            SendEmail.ReadEmailTemplate("EmailVerification.xml");
            SendEmail.ReplaceString("$$EmailVerificationLink$$", EmailVerificationLink);
            SendEmail.SendEmail(UserIdentity.UserEmail);

            SendEmail = null;
            Response.Redirect(SiteConfiguration.LoginRedirectPage());
        }

        public void VerifyEmailVerificationLink()
        {
        }
    }
}