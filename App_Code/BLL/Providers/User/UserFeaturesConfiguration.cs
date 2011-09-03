#region ExamCrazy Portal
// FileName: UserFeaturesConfiguration.cs

// Date Created: 2/29/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using EC.BL;
using EC.Common;
using EC.Model;
using EC.Security;
using EC.Common.Utilities;

namespace EC.BL.Providers.User
{
    /// <summary>
    /// Returns the number of records the user wants to display his/her 
    /// CookBook and Friends List in the user profile.
    /// </summary>
    public static class UserFeaturesConfiguration
    {
        private static int _NumRecordsFriendsListShow;
        private static int _NumRecordsCookBookShow;
        private static int _UserChoosePreferredLayoutPageSize;
        private static int _UserPreferredLayout;
        private static int _UserPreferredPageSize;
        private static int _ReceivePM;
        private static int _PMEmailNotification;

        private static int NumRecordsFriendsListShow
        {
            get { return _NumRecordsFriendsListShow; }
            set { _NumRecordsFriendsListShow = value; }
        }
        private static int NumRecordsCookBookShow
        {
            get { return _NumRecordsCookBookShow; }
            set { _NumRecordsCookBookShow = value; }
        }
        private static int UserChoosePreferredLayoutPageSize
        {
            get { return _UserChoosePreferredLayoutPageSize; }
            set { _UserChoosePreferredLayoutPageSize = value; }
        }

        private static int UserPreferredLayout
        {
            get { return _UserPreferredLayout; }
            set { _UserPreferredLayout = value; }
        }

        private static int UserPreferredPageSize
        {
            get { return _UserPreferredPageSize; }
            set { _UserPreferredPageSize = value; }
        }

        private static int ReceivePM
        {
            get { return _ReceivePM; }
            set { _ReceivePM = value; }
        }

        private static int PMEmailNotification
        {
            get { return _PMEmailNotification; }
            set { _PMEmailNotification = value; }
        }

        public static void Fetch(int UserID)
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.GetUsersFeaturesConfiguration(UserID);

            while (dr.Read())
            {
                if (dr["NumRecordsFriendsList"] != DBNull.Value)
                {
                    _NumRecordsFriendsListShow = (int)dr["NumRecordsFriendsList"];
                }
                if (dr["NumRecordsCookBookQuickView"] != DBNull.Value)
                {
                    _NumRecordsCookBookShow = (int)dr["NumRecordsCookBookQuickView"];
                }
                if (dr["PreferredLayout"] != DBNull.Value)
                {
                    _UserPreferredLayout = (int)dr["PreferredLayout"];
                }
                if (dr["PreferredPageSize"] != DBNull.Value)
                {
                    _UserPreferredPageSize = (int)dr["PreferredPageSize"];
                }
                if (dr["IsUserChoosePreferredLayout"] != DBNull.Value)
                {
                    _UserChoosePreferredLayoutPageSize = (int)dr["IsUserChoosePreferredLayout"];
                }
                if (dr["ReceivePM"] != DBNull.Value)
                {
                    _ReceivePM = (int)dr["ReceivePM"];
                }
                if (dr["PMEmailNotification"] != DBNull.Value)
                {
                    _PMEmailNotification = (int)dr["PMEmailNotification"];
                }
            }

            dr.Close();
        }

        /// <summary>
        /// Returns the number of Friends to display in the user profile.
        /// </summary>
        public static int GetNumRecordsFriendsListShow
        {
            get { return NumRecordsFriendsListShow; }
        }

        /// <summary>
        /// Returns the number of recipes to display in CookBook quick view in the user profile and side menu.
        /// </summary>
        public static int GetNumRecordsCookBookShow
        {
            get { return NumRecordsCookBookShow; }
        }

        /// <summary>
        /// Check wether CookBook quick view is public or private.
        /// </summary>
        public static bool IsPublicCookBookQuickView(int UserID)
        {
            return Blogic.IsShowUserCookBookInProfile(UserID);
        }

        /// <summary>
        /// Check wether Friends List quick view is public or private.
        /// </summary>
        public static bool IsPublicFriendsListQuickView(int UserID)
        {
            return Blogic.IsShowUserFriendsListInProfile(UserID);
        }

        /// <summary>
        /// Check whether user choose preferred layout and pagesize
        /// </summary>
        public static bool IsUserChoosePreferredLayoutPageSize
        {
            get
            {
                if (UserChoosePreferredLayoutPageSize == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        }

        /// <summary>
        /// Return user current settings - preferred layout and pagesize.
        /// </summary>
        public static int GetUserChoosePreferredLayoutPageSize
        {
            get { return UserChoosePreferredLayoutPageSize; }
        }

        /// <summary>
        /// Returns user preferred layout
        /// </summary>
        public static int GetUserPreferredLayout
        {
            get { return UserPreferredLayout; }
        }

        /// <summary>
        /// Returns user preferred pagesize
        /// </summary>
        public static int GetUserPreferredPageSize
        {
            get { return UserPreferredPageSize; }
        }

        /// <summary>
        /// Check whether user choose to receive a private message.
        /// </summary>
        public static bool IsUserChooseToReceivePM
        {
            get
            {
                if (ReceivePM == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        }

        /// <summary>
        /// Check whether user choose to receive an email alert when receiving a PM.
        /// </summary>
        public static bool IsUserChooseToReceiveEmailAlertReceivePM
        {
            get
            {
                if (PMEmailNotification == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        }
    }
}
