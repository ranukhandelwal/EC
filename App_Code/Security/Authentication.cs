#region ExamCrazy Portal
// FileName: Authentication.cs

// Date Created: 2/14/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.BL.Providers.User;
using EC.Common.Utilities;
using EC.BL;
using EC.Security;

namespace EC.Security
{
    /// <summary>
    /// Object in this class handles cookie or session login 
    /// authentication by comparing the value against the database record.
    /// </summary>
    public static class Authentication
    {
        /// <summary>
        /// Validate username and password against database record.
        /// </summary>
        public static bool Validate(string username, string password)
        {
            return Blogic.UserLoginVerify(username, password);
        }

        /// <summary>
        /// Authenticate username and password from the cookie/session.
        /// </summary>
        //If the user passed authentication, then hide the login form.
        public static bool Authenticate
        {
            get
            {
                bool _bShowHideLogin = false;

                if ((CookieLoginHelper.UserName != null) && (CookieLoginHelper.UserPassword != null))
                {
                    //Check user status. If the user account is suspended, then redirect. 
                    //Decrypt the username stored in the cookie so it match to our database record.
                    if (!Blogic.IsUserActive(CookieLoginHelper.UserName, Encryption.Encrypt(CookieLoginHelper.UserPassword)))
                    {
                        CookieLoginHelper.RemoveCookie();
                        CookieLoginHelper.RemoveLoginSession();

                        HttpContext.Current.Response.Redirect("redirectionpage.aspx?mode=suspended&ReturnURL=" + HttpContext.Current.Request.Url.PathAndQuery);
                    }

                    //This property is called to hide/show the login form in the master page
                    //Index 0 is the username and index 1 is the password.
                    ////Decrypt the username stored in the cookie so it match to our database record.
                    _bShowHideLogin = Authentication.Validate(CookieLoginHelper.UserName, Encryption.Encrypt(CookieLoginHelper.UserPassword));
                }
                
                return _bShowHideLogin;
            }
        }

        /// <summary>
        /// Check whether user is login by comparing login cookie and/or session to the database record.
        /// </summary>
        public static bool IsUserLogin
        {
            get
            {
                bool AllowAccess = false;

                //Check if the cookies with name ECUserInfo exist on user's machine
                if (CookieLoginHelper.IsLoginCookieExists)
                {
                    //If the login credential cookie found on the users machine. 
                    //Let's decrypt so it match to our database record.
                    if (Blogic.UserLoginVerify(CookieLoginHelper.UserName, Encryption.Encrypt(CookieLoginHelper.UserPassword)))
                    {
                        AllowAccess = true;
                    }
                }

                //Get the user credential in session if user did not check remember me.
                if (CookieLoginHelper.IsLoginSessionExists)
                {
                    AllowAccess = true;
                }

                return AllowAccess;
            }
        }

        /// <summary>
        /// Check whether user is authenticated.
        /// If the user name and password does not exists in the database, the UserID is = 0.
        /// </summary>
        public static bool IsUserAuthenticated
        {
            get
            {
                //if (IsUserLogin && UserIdentity.UserID != 0)
                if (IsUserLogin )
                    return true;
                else
                    return false;
            }
        }

        /// <summary>
        /// Admin section username and password validation.
        /// </summary>
        public static void IsAdminAuthenticated()
        {
            Utility Util = new Utility();

            if (!CookieLoginHelper.IsLoginAdminSessionExists)
            {
                //Redirect to admin login page.
                Util.PageRedirect(6);
            }

            Util = null;           
        }
    }
}
