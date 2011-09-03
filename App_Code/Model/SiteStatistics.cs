#region ExamCrazy Portal
// FileName: SiteStatistics.cs

// Date Created: 6/30/2008
// Website: www.examcrazy.com
#endregion
using System;

namespace EC.Model
{
    /// <summary>
    /// Object in this class manages site statistics counter
    /// </summary>
    public class SiteStatistics : DBObj
    {
        public SiteStatistics()
        {
        }

        protected int _TotalRecipe;
        protected int _TotalArticle;
        protected int _TotalMembers;
        protected int _TotalRecipeComments;
        protected int _TotalArticleComments;
        protected int _TotalSavedRecipesInCookBook;
        protected int _TotalUsersWhoUseCookBook;
        protected int _TotalFriendsList;
        protected int _TotalUsersWhoUseFriendsList;
        protected int _TotalPrivateMessage;
        protected int _TotalUsersJoinedToday;
        protected int _TotalUsersJoinedYesterday;
        protected int _TotalUsersJoinedInAWeek;
        protected int _TotalUsersJoinedInAMonth;
        protected int _TotalUnActivatedAccount;
        protected int _TotalSuspendedAccount;

        public int TotalRecipe
        {
            get { return _TotalRecipe; }
            set { _TotalRecipe = value; }
        }
        public int TotalArticle
        {
            get { return _TotalArticle; }
            set { _TotalArticle = value; }
        }
        public int TotalMembers
        {
            get { return _TotalMembers; }
            set { _TotalMembers = value; }
        }
        public int TotalRecipeComments
        {
            get { return _TotalRecipeComments; }
            set { _TotalRecipeComments = value; }
        }
        public int TotalArticleComments
        {
            get { return _TotalArticleComments; }
            set { _TotalArticleComments = value; }
        }
        public int TotalSavedRecipesInCookBook
        {
            get { return _TotalSavedRecipesInCookBook; }
            set { _TotalSavedRecipesInCookBook = value; }
        }
        public int TotalUsersWhoUseCookBook
        {
            get { return _TotalUsersWhoUseCookBook; }
            set { _TotalUsersWhoUseCookBook = value; }
        }
        public int TotalFriendsList
        {
            get { return _TotalFriendsList; }
            set { _TotalFriendsList = value; }
        }
        public int TotalUsersWhoUseFriendsList
        {
            get { return _TotalUsersWhoUseFriendsList; }
            set { _TotalUsersWhoUseFriendsList = value; }
        }
        public int TotalPrivateMessage
        {
            get { return _TotalPrivateMessage; }
            set { _TotalPrivateMessage = value; }
        }
        public int TotalUsersJoinedToday
        {
            get { return _TotalUsersJoinedToday; }
            set { _TotalUsersJoinedToday = value; }
        }
        public int TotalUsersJoinedYesterday
        {
            get { return _TotalUsersJoinedYesterday; }
            set { _TotalUsersJoinedYesterday = value; }
        }
        public int TotalUsersJoinedInAWeek
        {
            get { return _TotalUsersJoinedInAWeek; }
            set { _TotalUsersJoinedInAWeek = value; }
        }
        public int TotalUsersJoinedInAMonth
        {
            get { return _TotalUsersJoinedInAMonth; }
            set { _TotalUsersJoinedInAMonth = value; }
        }
        public int TotalUnActivatedAccount
        {
            get { return _TotalUnActivatedAccount; }
            set { _TotalUnActivatedAccount = value; }
        }
        public int TotalSuspendedAccount
        {
            get { return _TotalSuspendedAccount; }
            set { _TotalSuspendedAccount = value; }
        }
    }
}
