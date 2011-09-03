#region ExamCrazy Portal
// FileName: ProviderUserDetails.cs

// Date Created: 5/29/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using EC.BL;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;

namespace EC.BL.Providers.User
{
    /// <summary>
    /// Object in this class manages user
    /// </summary>
    public sealed class ProviderUserDetails : BaseUserObj
    {
        public ProviderUserDetails()
        {
        }

        /// <summary>
        /// Returns user
        /// </summary>
        public override void FillUp(int UID)
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.GetUsers(UID);
            /*

            while (dr.Read())
            {
                if (dr["UserLevel"] != DBNull.Value)
                {
                    this._UserLevel = (int)dr["UserLevel"];
                }
                if (dr["UserName"] != DBNull.Value)
                {
                    this._Username = (string)dr["UserName"];
                }
                if (dr["Password"] != DBNull.Value)
                {
                    this._Password = (string)dr["Password"];
                }
                if (dr["FirstName"] != DBNull.Value)
                {
                    this._FirstName = (string)dr["FirstName"];
                }
                if (dr["LastName"] != DBNull.Value)
                {
                    this._LastName = (string)dr["LastName"];
                }
                if (dr["City"] != DBNull.Value)
                {
                    this._City = (string)dr["City"];
                }
                else
                {
                    this._City = "NA";
                }

                if (dr["State"] != DBNull.Value)
                {
                    this._State = (string)dr["State"];
                }
                else
                {
                    this._State = "NA";
                }

                if (dr["Country"] != DBNull.Value)
                {
                    this._Country = (string)dr["Country"];
                }
                if (dr["Email"] != DBNull.Value)
                {
                    this._Email = (string)dr["Email"];
                }
                if (dr["DOB"] != DBNull.Value)
                {
                    this._DOB = (DateTime)dr["DOB"];
                }
                if (dr["AboutMe"] != DBNull.Value)
                {
                    this._AboutMe = (string)dr["AboutMe"];
                }
                else
                {
                    this._AboutMe = "NA";
                }

                if (dr["FavoriteFoods1"] != DBNull.Value)
                {
                    this._FavoriteFoods1 = (string)dr["FavoriteFoods1"];
                }
                else
                {
                    this._FavoriteFoods1 = "NA";
                }

                if (dr["FavoriteFoods2"] != DBNull.Value)
                {
                    this._FavoriteFoods2 = (string)dr["FavoriteFoods2"];
                }
                else
                {
                    this._FavoriteFoods2 = "NA";
                }

                if (dr["FavoriteFoods3"] != DBNull.Value)
                {
                    this._FavoriteFoods3 = (string)dr["FavoriteFoods3"];
                }
                else
                {
                    this._FavoriteFoods3 = "NA";
                }

                if (dr["NewsLetter"] != DBNull.Value)
                {
                    this._NewsLetter = (int)dr["NewsLetter"];
                }
                if (dr["DateJoined"] != DBNull.Value)
                {
                    this._DateJoined = (DateTime)dr["DateJoined"];
                }
                if (dr["Photo"] != DBNull.Value)
                {
                    this._Photo = (string)dr["Photo"];
                }
                if (dr["Website"] != DBNull.Value)
                {
                    this._Website = (string)dr["Website"];
                }
                else
                {
                    this._Website = "NA";
                }

                if (dr["Hits"] != DBNull.Value)
                {
                    this._Hits = (int)dr["Hits"];
                }
                if (dr["PostedRecipeCount"] != DBNull.Value)
                {
                    this._PostedRecipeCount = (int)dr["PostedRecipeCount"];
                }
                if (dr["PostedArticleCount"] != DBNull.Value)
                {
                    this._PostedArticleCount = (int)dr["PostedArticleCount"];
                }
                if (dr["SavedRecipeCount"] != DBNull.Value)
                {
                    this._SavedrecipeCount = (int)dr["SavedRecipeCount"];
                }
                if (dr["CommentsRecipeCount"] != DBNull.Value)
                {
                    this._CommentRecipeCount = (int)dr["CommentsRecipeCount"];
                }
                if (dr["CommentsArticleCount"] != DBNull.Value)
                {
                    this._CommentArticleCount = (int)dr["CommentsArticleCount"];
                }
                if (dr["FriendsCount"] != DBNull.Value)
                {
                    this._FriendsCount = (int)dr["FriendsCount"];
                }
                if (dr["LastVisit"] != DBNull.Value)
                {
                    this._LastLogin = (DateTime)dr["LastVisit"];
                }
                if (dr["LastUpdated"] != DBNull.Value)
                {
                    this._LastUpdated = (DateTime)dr["LastUpdated"];
                }
                if (dr["ContactMe"] != DBNull.Value)
                {
                    this._ContactMe = (int)dr["ContactMe"];
                }
                if (dr["isActive"] != DBNull.Value)
                {
                    this._isActive = (int)dr["isActive"];
                }
                if (dr["GUID"] != DBNull.Value)
                {
                    this._GUID = (string)dr["GUID"];
                }
                if (dr["Activation"] != DBNull.Value)
                {
                    this._Activation = (int)dr["Activation"];
                }
            }
            */
            dr.Close();
        }
    }
}
