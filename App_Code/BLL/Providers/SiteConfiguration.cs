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