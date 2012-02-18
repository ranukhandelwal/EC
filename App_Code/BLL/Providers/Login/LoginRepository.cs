using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EC.UI;
using EC.BL;
using EC.Common;
using EC.Security;
using EC.BL.Providers.User;

namespace EC.BL
{
    public static class LoginRepository
    {
        public static int Login(string uname, string upass)
        {
            //Autheticate the username and password against the database record.
            if (Authentication.Validate(uname, Encryption.Encrypt(upass)))
            {
                
                /*
                if (!Blogic.IsUserActive(uname, Encryption.Encrypt(upass)))
                {
                    CookieLoginHelper.RemoveCookie();
                    CookieLoginHelper.RemoveLoginSession();

                    this.Context.Response.Redirect("redirectionpage.aspx?mode=suspended&ReturnURL=" + this.Context.Request.Url.PathAndQuery);
                }
                 */

                if ((CookieLoginHelper.IsCookieSupported))
                {
                    CookieLoginHelper.CreateLoginCookie(uname, upass);
                }
                else
                {
                    //If the users browser does not support cookie, use session instead.
                    CookieLoginHelper.CreateLoginSession(uname, upass);
                }

                HttpContext.Current.Response.Redirect(SiteConfiguration.LoginRedirectPage());
                return 0;
            }
            else
            {
                return 1;
            }
        }


        public static void Logout()
        {
            CookieLoginHelper.RemoveCookie();
            CookieLoginHelper.RemoveLoginSession();

            HttpContext.Current.Response.Redirect("~");
        }
    }
}