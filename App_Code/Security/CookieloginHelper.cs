#region ExamCrazy Portal
// FileName: CookieLoginHelper.cs

// Date Created: 3/20/2009
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
using EC.BL;
using EC.Common;
using EC.Security;
using EC.BL.Providers.User;
using EC.UI;

namespace EC.Security
{
    /// <summary>
    /// Object in this class manages Login Cookie and Session
    /// </summary>
    public class CookieLoginHelper 
    {
        /// <summary>
        /// Returns login users cookie
        /// </summary>
        public static HttpCookie LoginCookie
        {
            get
            {
                if (HttpContext.Current.Request.Cookies["ECUserInfo"] != null)
                    return HttpContext.Current.Request.Cookies["ECUserInfo"];
                else
                    return null;
            }
        }

        /// <summary>
        /// Check if browser accepts cookies
        /// </summary>
        public static bool IsCookieSupported
        {
            get
            {
                // Check if browser supports cookies
                if ((HttpContext.Current.Request.Browser.Cookies) && (HttpContext.Current.Request.Cookies["SupportCookies"] != null))
                {
                    return true;
                }
                else
                    return false;
            }
        }
        
        /// <summary>
        /// Create an encrypted user login cookie.
        /// </summary>
        public static void CreateLoginCookie(string UserName, string Password)
        {
            HttpCookie UserInfo = new HttpCookie("ECUserInfo");

            //Encrypt cookie username value
            //When we retrieve the username cookie value we will have to decrypt.
            //The decyption is done in the Athentication class.
            UserInfo.Values["ECUsername"] = Encryption.Encrypt(UserName);

            //Encrypt cookie password value
            UserInfo.Values["ECUpass"] = Encryption.Encrypt(Password);

            UserInfo.Values["ECUType"] = Blogic.GetUserType(UserName, Encryption.Encrypt(Password));

            UserInfo.Values["ECUEmail"] = Encryption.Encrypt(Blogic.GetUserEmail(UserName, Encryption.Encrypt(Password)));

            UserInfo.Expires = DateTime.Now.AddDays(1);
            HttpContext.Current.Response.Cookies.Add(UserInfo);
        }

        /// <summary>
        /// Create session user login.
        /// </summary>
        public static void CreateLoginSession(string UserName, string Password)
        {
            HttpContext.Current.Session.Add("ECUsername", UserName);

            //Encrypt password session value so it match to the database.
            HttpContext.Current.Session.Add("ECUpass", Encryption.Encrypt(Password));
            HttpContext.Current.Session.Add("ECUType", Blogic.GetUserType(UserName, Encryption.Encrypt(Password)));
            HttpContext.Current.Session.Add("ECUEmail", Blogic.GetUserEmail(UserName, Encryption.Encrypt(Password)));
        }

        /// <summary>
        /// Create Admin user login session.
        /// </summary>
        public static void CreateAdminLoginSession(string UserName, string Password)
        {
            HttpContext.Current.Session.Add("adminuserid", UserName);
            HttpContext.Current.Session.Add("adminpassword", Password);
        }

        /// <summary>
        /// Check whether login cookie exists in users computer if user checked the remember me checkbox
        /// </summary>
        public static bool IsLoginCookieExists
        {
            get
            {
                if (HttpContext.Current.Request.Cookies["ECUserInfo"] != null)
                    return true;
                else
                    return false;
            }
        }

        /// <summary>
        /// Check whether login session exists if user did not checked the remember me checkbox.
        /// </summary>
        public static bool IsLoginSessionExists
        {
            get
            {
                if ((HttpContext.Current.Session["ECUsername"] != null) && (HttpContext.Current.Session["ECUpass"] != null))
                    return true;
                else
                    return false;
            }
        }

        /// <summary>
        /// Check if Admin login session exists. Use for back-end login.
        /// </summary>
        public static bool IsLoginAdminSessionExists
        {
            get
            {
                if ((HttpContext.Current.Session["adminuserid"] != null) && (HttpContext.Current.Session["adminpassword"] != null))
                    return true;
                else
                    return false;
            }
        }

        /// <summary>
        /// Check if Admin login session exists. Use for back-end login.
        /// </summary>
        public static string AdminLoginSessionUsername
        {
            get
            {
                if (IsLoginAdminSessionExists)
                    return HttpContext.Current.Session["adminuserid"].ToString();
                else
                    return string.Empty;
            }
        }

        /// <summary>
        /// Returns the user login username stored in session if user did not check remember me checkbox.
        /// </summary>
        public static string UserName
        {
            get
            {
                if (IsLoginSessionExists)
                    return HttpContext.Current.Session["ECUsername"].ToString();
                else if (IsLoginCookieExists)
                    return Encryption.Decrypt(LoginCookie["ECUsername"].ToString());
                else
                    return string.Empty;
            }
        }

        /// <summary>
        /// Returns the user login password stored in session if user did not check remember me checkbox.
        /// </summary>
        public static string UserPassword
        {
            get
            {
                if (IsLoginSessionExists)
                    return Encryption.Decrypt(HttpContext.Current.Session["ECUpass"].ToString());
                else if (IsLoginCookieExists)
                    return Encryption.Decrypt(LoginCookie["ECUpass"].ToString());
                else
                    return string.Empty;
            }
        }

        /// <summary>
        /// Returns the user type stored in session if user did not check remember me checkbox.
        /// </summary>
        public static string UserType
        {
            get
            {
                if (IsLoginSessionExists)
                    return HttpContext.Current.Session["ECUType"].ToString();
                else if (IsLoginCookieExists)
                    return LoginCookie["ECUType"].ToString();
                else
                    return string.Empty;
            }
        }


        /// <summary>
        /// Returns the user type stored in session if user did not check remember me checkbox.
        /// </summary>
        public static string UserEmail
        {
            get
            {
                if (IsLoginSessionExists)
                    return HttpContext.Current.Session["ECUEmail"].ToString();
                else if (IsLoginCookieExists)
                    return Encryption.Decrypt(LoginCookie["ECUEmail"].ToString());
                else
                    return string.Empty;
            }
        }
        /// <summary>
        /// Remove login cookie if exists.
        /// </summary>
        public static void RemoveCookie()
        {
            if (IsLoginCookieExists)
            {
                //Expire the cookie
                HttpCookie UserInfo = new HttpCookie("ECUserInfo");
                UserInfo.Expires = DateTime.Now.AddDays(-31d);
                HttpContext.Current.Response.Cookies.Add(UserInfo);
            }
        }

        /// <summary>
        /// Abandon login session if exists.
        /// </summary>
        public static void RemoveLoginSession()
        {
            if (IsLoginSessionExists)
            {
                //End user session
                HttpContext.Current.Session.Abandon();
            }
        }
    }
}