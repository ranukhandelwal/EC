#region ExamCrazy Portal
// FileName: UserIdentity.cs


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
using System.IO;
using EC.BL;
using EC.BL.Providers.User;
using EC.Security;

namespace EC.BL.Providers.User
{
    /// <summary>
    /// Object in this class manages users partial identity susch as the userid, username and email.
    /// </summary>
    public static class UserIdentity
    {
        /// <summary>
        /// Returns int UserID. If the user is not login, this return 0.
        /// </summary>
        public static int UserID
        {
            get
            {
                int UID = 0;

                UID = Blogic.GetUserID(CookieLoginHelper.UserName, CookieLoginHelper.UserPassword);

                return UID;
            }
        }

        /// <summary>
        /// Returns logon username. This is only use after user is authenticated or have login.
        /// </summary>
        public static string UserName
        {
            get
            {
                string User_Name = "";

                User_Name = CookieLoginHelper.UserName;

                return User_Name;
            }
        }

        /// <summary>
        /// Returns user type. This is only use after user is authenticated or have login.
        /// </summary>
        public static string UserType
        {
            get
            {
                string User_Type = "__ano__";

                User_Type = CookieLoginHelper.UserType;

                return User_Type;
            }
        }

        /// <summary>
        /// Returns logon user email address. This is only use after user is authenticated or have login.
        /// </summary>
        public static string UserEmail
        {
            get
            {
                string UEmail = "";

                UEmail = CookieLoginHelper.UserEmail;

                return UEmail;
            }
        }


        /// <summary>
        /// Returns user photo. This requires username. User need not be logged in for this.
        /// </summary>
        public static string UserPhoto(string UName)
        {
            string photo = Blogic.GetUserPhoto(UName);
            return ((photo.ToString() != null) && (photo.ToString() != "")) ? constant.UserImagePath + photo : "~/UserImages/userwall.gif";
            
        }
        /// <summary>
        /// Returns user Role/Level.
        /// </summary>
        //The user level in the database is 3 and 1.
        //3 = Admin and 1 = Regular user. You can add another level i.e. 2 = Editor
        public static string UserRole
        {
            get
            {
                ProviderUserDetails User = new ProviderUserDetails();

                User.FillUp(UserID);

                int URole = 0;

                //Check if the cookies with name ECUserInfo exist on user's machine
                if (CookieLoginHelper.IsLoginCookieExists)
                {
                    URole = User.UserType;
                }

                //Get the user credential in session if user did not check remember me.
                if (CookieLoginHelper.IsLoginSessionExists)
                {
                    URole = User.UserType;
                }

                User = null;

                if (URole == 3)
                {
                    return "Administrator";
                }
                else
                {
                    return "Regular";
                }
            }
        }

        /// <summary>
        /// Returns username for the Admin section.
        /// </summary>
        public static string AdminUsername
        {
            get { return CookieLoginHelper.AdminLoginSessionUsername.ToString(); }
        }
    }
}
