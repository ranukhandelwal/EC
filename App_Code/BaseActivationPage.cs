using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EC.UI;
using EC.Security;
using EC.BL.Providers.User;
using EC.Security;

namespace EC.UI
{
    public class BaseActivationPage : BaseLoggedInPage
    {
        private string __domain;
        private string __email;
        protected string __username;
        private string __userid;

        protected bool __isEmailLinkAuthenticate = false;
        protected bool __isPswdLinkAuthenticate = false;

        protected override void OnLoad(EventArgs e)
        {
            string action;
            __domain = Request.QueryString["class"];
            __email = Request.QueryString["bl"];
            __username = Request.QueryString["cl"];
            __userid = Request.QueryString["sl"];
            action = Request.QueryString["a"];
            if (__domain != null && __email != null && __username != null && __userid != null && action != null)
            {
                base.Activation = true;
                __domain = __domain.Replace(" ", "+");
                __email = __email.Replace(" ", "+");
                __username = __username.Replace(" ", "+");
                __userid = __userid.Replace(" ", "+");
                if (action == "vemail")
                {
                    UserActivationLink __verifyEmailLink = new UserActivationLink();
                    if (__verifyEmailLink.IsEmailLinkAuthenticate(Int32.Parse(Encryption.Decrypt(__userid)), Encryption.Decrypt(__username), Encryption.Decrypt(__email), Encryption.Decrypt(__domain)))
                        __isEmailLinkAuthenticate = true;
                    else
                        __isEmailLinkAuthenticate = false;

                    __verifyEmailLink = null;
                }
                else if (action == "pswd")
                {
                    UserActivationLink __verifyPasswordLink = new UserActivationLink();
                    if (__verifyPasswordLink.IsPasswordResetLinkAuthenticate(__userid, __username, __email, __domain, out __username))
                        __isPswdLinkAuthenticate = true;
                    else
                        __isPswdLinkAuthenticate = false;

                    __verifyPasswordLink = null;
                }

            }
            base.OnLoad(e);
        }


    }
}