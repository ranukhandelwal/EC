#region ExamCrazy Portal
// FileName: SiteConfiguration.cs

// Date Created: 2/29/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using EC.BL;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace EC.BL
{
    /// <summary>
    /// Objects in this class manages admin site configuration.
    /// </summary>
    public sealed class SiteConfiguration : Configuration
    {
        private static readonly SiteConfiguration Instance = new SiteConfiguration();

        static SiteConfiguration()
        {
        }

        SiteConfiguration()
        {
        }

        public static SiteConfiguration GetInstance()
        {
            return Instance;
        }

        /// <summary>
        /// Get Login Redirect Page
        /// </summary>
        public static string LoginRedirectPage()
        {
            string RedirectPage = "/User/";
            if (Authentication.IsUserAuthenticated)
            {
                if (UserIdentity.UserType == "__client__")
                {
                }
                //Last rule is for user so that if nothing matches they are normal user
                else
                {
                    RedirectPage = "/User/" + "UserIdentity.UserName";
                }
            }
            else
            {
                RedirectPage = "/User/"; //display list of users
            }

            return RedirectPage;
        }

        /// <summary>
        /// Get Email Verification Page
        /// </summary>
        public static string EmailVerificationPage()
        {
            return BaseUrl.GetBaseUrl + "user-profile/verify-email.aspx";
        }

        /// <summary>
        /// Get Header Filter
        /// </summary>
        public static string GetHeader()
        {
            string HeaderFilter = "/User/";
            if (Authentication.IsUserAuthenticated)
            {
                if (UserIdentity.UserType == "__client__")
                {
                }
                //Last rule is for user so that if nothing matches they are normal user
                else
                {
                    HeaderFilter = "__usr__";
                }
            }
            else
            {
                HeaderFilter = "__ano__";
            }
            return HeaderFilter;
        }

        /// <summary>
        /// Get User Info Filter
        /// </summary>
        public static string GetUserInfoFilter(string PageName)
        {
            string UserInfoFilter = "__ano__";
            if (Authentication.IsUserAuthenticated)
            {
                if (PageName != UserIdentity.UserName)
                {
                    UserInfoFilter = "__other__";
                }
                else
                    UserInfoFilter = UserIdentity.UserType;
            }
            else
            {
                if(PageName == "Register@ExamCrazy")
                {
                    UserInfoFilter = "__listnologin__";
                }
                else
                    UserInfoFilter = "__ano__";
            }
            return UserInfoFilter;
        }
        /// <summary>
        /// Get data
        /// </summary>
        private void FillUp()
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.GetSiteConfiguration;

            while (dr.Read())
            {
                if (dr["HideShowComment"] != DBNull.Value)
                {
                    this._ShowHideRecipeComment = (int)dr["HideShowComment"];
                }
                if (dr["HideShowArticleComment"] != DBNull.Value)
                {
                    this._ShowHideArticleComment = (int)dr["HideShowArticleComment"];
                }
                if (dr["NumberOfrecipeInCookBook"] != DBNull.Value)
                {
                    this._NumberOfrecipeInCookBook = (int)dr["NumberOfrecipeInCookBook"];
                }
                if (dr["NumberOfFriendsInFriendsList"] != DBNull.Value)
                {
                    this._NumberOfFriendsInFriendsList = (int)dr["NumberOfFriendsInFriendsList"];
                }
                if (dr["PublicPrivateProfile"] != DBNull.Value)
                {
                    this._PublicPrivateProfile = (int)dr["PublicPrivateProfile"];
                }
                if (dr["AdminToEmail"] != DBNull.Value)
                {
                    this._AdminToEmail = (string)dr["AdminToEmail"];
                }
                if (dr["AdminFromEmail"] != DBNull.Value)
                {
                    this._AdminFromEmail = (string)dr["AdminFromEmail"];
                }
                if (dr["MinuteSpan"] != DBNull.Value)
                {
                    this._LastViewedNumberOfHoursSpan = (int)dr["MinuteSpan"];
                }
            }

            dr.Close();
            dr = null;
        }

        public static SiteConfiguration GetConfiguration
        {
            get
            {
                SiteConfiguration Configuration = SiteConfiguration.GetInstance();
                Configuration.FillUp();
                return Configuration;
            }
        }
    }
}