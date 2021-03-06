#region ExamCrazy Portal
// FileName: ProviderShowAllUsersAdmin.cs

// Date Created: 5/29/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using EC.Model;
using EC.BL;
using EC.Common;

namespace EC.BL.Providers.User
{
    /// <summary>
    /// Object in this class returns all users for Admin Membership.
    /// </summary>
    public sealed class ProviderShowAllUsersAdmin : pager
    {
        private string _SearchInput;
        private int _NumDays;
        private int _OrderBy;
        private int _SortBy;
        private int _TotalCount;

        private string SearchInput
        {
            get { return _SearchInput; }
            set { _SearchInput = value; }
        }
        private int NumDays
        {
            get { return _NumDays; }
            set { _NumDays = value; }
        }
        private int OrderBy
        {
            get { return _OrderBy; }
            set { _OrderBy = value; }
        }
        private int SortBy
        {
            get { return _SortBy; }
            set { _SortBy = value; }
        }
        public int TotalCount
        {
            get { return _TotalCount; }
            set { _TotalCount = value; }
        }

        public ProviderShowAllUsersAdmin()
        {
        }

        public ProviderShowAllUsersAdmin(string SearchInput, int NumDays, int OrderBy, int SortBy, int PageIndex, int PageSize)
        {
            this._SearchInput = SearchInput;
            this._NumDays = NumDays;
            this._OrderBy = OrderBy;
            this._SortBy = SortBy;
            this._Index = PageIndex;
            this._PageSize = PageSize;

            IDataReader dr = GetData;

            while (dr.Read())
            {
                //Get total record count
                this._TotalCount = (int)dr["TotalCount"];
            }

            dr.Close();
        }

        /// <summary>
        /// Return Data
        /// </summary>
        /// <returns></returns>
        private IDataReader GetData
        {
            get
            {
                //Get data
                IDataReader dr = Blogic.ActionProcedureDataProvider.ShowAllMembersAdmin(SearchInput, NumDays, OrderBy, SortBy, Index, PageSize);
                return dr;
            }
        }

        public ExtendedCollection<Users> GetAllUsers()
        {
            ExtendedCollection<Users> list = new ExtendedCollection<Users>();

            IDataReader dr = GetData;

            while (dr.Read())
            {
                Users item = new Users();

                if (dr["UID"] != DBNull.Value)
                {
                    item.UID = (int)dr["UID"];
                }
                if (dr["uname"] != DBNull.Value)
                {
                    item.UserName = (string)dr["uname"];
                }
                if (dr["pswd"] != DBNull.Value)
                {
                    item.Password = (string)dr["pswd"];
                }
                if (dr["Email1"] != DBNull.Value)
                {
                    item.Email1 = (string)dr["Email1"];
                }
                if (dr["fName"] != DBNull.Value)
                {
                    item.FirstName = (string)dr["fName"];
                }
                if (dr["lName"] != DBNull.Value)
                {
                    item.LastName = (string)dr["lName"];
                }
                /*
                if (dr["CityID"] != DBNull.Value)
                {
                    item.CityID = (int)dr["CityID"];
                }
                if (dr["StateID"] != DBNull.Value)
                {
                    item.StateID = (int)dr["StateID"];
                }
                if (dr["CountryID"] != DBNull.Value)
                {
                    item.CountryID = (int)dr["CountryID"];
                }
                
                if (dr["UserImage"] != DBNull.Value)
                {
                    item.Photo = (string)dr["UserImage"];
                }*/
                if (dr["isActive"] != DBNull.Value)
                {
                    item.isActive = (Int16)dr["isActive"];
                }
                if (dr["RegistrationDate"] != DBNull.Value)
                {
                    item.RegistrationDate = (DateTime)dr["RegistrationDate"];
                }
                /*
                if (dr["Activation"] != DBNull.Value)
                {
                    item.isActive = (int)dr["Activation"];
                }
                
                if (dr["Hits"] != DBNull.Value)
                {
                    item.Hits = (int)dr["Hits"];
                }
                if (dr["TotalSavedRecipe"] != DBNull.Value)
                {
                    item.SavedrecipeCount = (int)dr["TotalSavedRecipe"];
                }
                if (dr["TotalFriends"] != DBNull.Value)
                {
                    item.FriendsCount = (int)dr["TotalFriends"];
                }
                if (dr["TotalSubmittedRecipe"] != DBNull.Value)
                {
                    item.PostedRecipeCount = (int)dr["TotalSubmittedRecipe"];
                }
                if (dr["TotalSubmittedArticle"] != DBNull.Value)
                {
                    item.PostedArticleCount = (int)dr["TotalSubmittedArticle"];
                }
                 * */
                if (dr["lastlogin"] != DBNull.Value)
                {
                    item.LastLoginDate = (DateTime)dr["lastlogin"];
                }
                if (dr["LastUpdated"] != DBNull.Value)
                {
                    item.LastUpdated = (DateTime)dr["LastUpdated"];
                }
                if (dr["UserType"] != DBNull.Value)
                {
                    item.UserType = (Int16)dr["UserType"];
                }
                /*
                if (dr["ShowFriendsListinProfile"] != DBNull.Value)
                {
                    item.ShowFriendsListinProfile = (int)dr["ShowFriendsListinProfile"];
                }
                if (dr["ShowCookBookinProfile"] != DBNull.Value)
                {
                    item.ShowCookBookinProfile = (int)dr["ShowCookBookinProfile"];
                }
                if (dr["NumRecordsCookBookQuickView"] != DBNull.Value)
                {
                    item.NumRecordsCookBookQuickView = (int)dr["NumRecordsCookBookQuickView"];
                }
                if (dr["NumRecordsFriendsList"] != DBNull.Value)
                {
                    item.NumRecordsFriendsList = (int)dr["NumRecordsFriendsList"];
                }
                if (dr["PreferredLayout"] != DBNull.Value)
                {
                    item.PreferredLayout = (int)dr["PreferredLayout"];
                }
                if (dr["PreferredPageSize"] != DBNull.Value)
                {
                    item.PreferredPageSize = (int)dr["PreferredPageSize"];
                }
                if (dr["IsUserChoosePreferredLayout"] != DBNull.Value)
                {
                    item.IsUserChoosePreferredLayout = (int)dr["IsUserChoosePreferredLayout"];
                }
                if (dr["ReceivePM"] != DBNull.Value)
                {
                    item.ReceivePM = (int)dr["ReceivePM"];
                }
                if (dr["PMEmailNotification"] != DBNull.Value)
                {
                    item.PMEmailNotification = (int)dr["PMEmailNotification"];
                }
                if (dr["TotalCommentRecipe"] != DBNull.Value)
                {
                    item.CommentRecipeCount = (int)dr["TotalCommentRecipe"];
                }
                if (dr["TotalCommentArticle"] != DBNull.Value)
                {
                    item.CommentArticleCount = (int)dr["TotalCommentArticle"];
                }
                */
                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}

