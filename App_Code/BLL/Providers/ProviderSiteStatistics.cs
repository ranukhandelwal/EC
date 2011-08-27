#region XD World Recipe V 3
// FileName: ProviderSiteStatistics.cs
// Author: Dexter Zafra
// Date Created: 5/29/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using EC.Model;
using EC.Common;

namespace EC.BL
{
    /// <summary>
    /// Object in this returns data for site statistics counter
    /// </summary>
    public sealed class ProviderSiteStatistics : SiteStatistics
    {
        public ProviderSiteStatistics()
        {
        }

        public override void fillup()
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.SiteStatisticsCounter;

            while (dr.Read())
            {
                if (dr["TotalRecipe"] != DBNull.Value)
                {
                    this._TotalRecipe = (int)dr["TotalRecipe"];
                }
                if (dr["TotalArticle"] != DBNull.Value)
                {
                    this._TotalArticle = (int)dr["TotalArticle"];
                }
                if (dr["TotalMembers"] != DBNull.Value)
                {
                    this._TotalMembers = (int)dr["TotalMembers"];
                }
                if (dr["TotalRecipeComments"] != DBNull.Value)
                {
                    this._TotalRecipeComments = (int)dr["TotalRecipeComments"];
                }
                if (dr["TotalArticleComments"] != DBNull.Value)
                {
                    this._TotalArticleComments = (int)dr["TotalArticleComments"];
                }
                if (dr["TotalSavedRecipesInCookBook"] != DBNull.Value)
                {
                    this._TotalSavedRecipesInCookBook = (int)dr["TotalSavedRecipesInCookBook"];
                }
                if (dr["TotalUsersWhoUseCookBook"] != DBNull.Value)
                {
                    this._TotalUsersWhoUseCookBook = (int)dr["TotalUsersWhoUseCookBook"];
                }
                if (dr["TotalUsersWhoUseFriendsList"] != DBNull.Value)
                {
                    this._TotalUsersWhoUseFriendsList = (int)dr["TotalUsersWhoUseFriendsList"];
                }
                if (dr["TotalPrivateMessage"] != DBNull.Value)
                {
                    this._TotalPrivateMessage = (int)dr["TotalPrivateMessage"];
                }
                if (dr["TotalUsersJoinedToday"] != DBNull.Value)
                {
                    this._TotalUsersJoinedToday = (int)dr["TotalUsersJoinedToday"];
                }
                if (dr["TotalUsersJoinedYesterday"] != DBNull.Value)
                {
                    this._TotalUsersJoinedYesterday = (int)dr["TotalUsersJoinedYesterday"];
                }
                if (dr["TotalUsersJoinedInAWeek"] != DBNull.Value)
                {
                    this._TotalUsersJoinedInAWeek = (int)dr["TotalUsersJoinedInAWeek"];
                }
                if (dr["TotalUsersJoinedInAMonth"] != DBNull.Value)
                {
                    this._TotalUsersJoinedInAMonth = (int)dr["TotalUsersJoinedInAMonth"];
                }
                if (dr["TotalUnActivatedAccount"] != DBNull.Value)
                {
                    this._TotalUnActivatedAccount = (int)dr["TotalUnActivatedAccount"];
                }
                if (dr["TotalSuspendedAccount"] != DBNull.Value)
                {
                    this._TotalSuspendedAccount = (int)dr["TotalSuspendedAccount"];
                }
            }

            dr.Close();
        }
    }
}
