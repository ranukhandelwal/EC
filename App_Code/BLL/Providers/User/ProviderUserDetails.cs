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
            
            while (dr.Read())
            {
                if (dr["Email1"] != DBNull.Value)
                {
                    this.Email1 = (string)dr["Email1"];
                }
                if (dr["fName"] != DBNull.Value)
                {
                    this.FirstName = (string)dr["fName"];
                }
                if (dr["lName"] != DBNull.Value)
                {
                    this.LastName = (string)dr["lName"];
                }
                if (dr["Sex"] != DBNull.Value)
                {
                    this.Sex = Int32.Parse(dr["Sex"].ToString());
                }
                if (dr["CityID"] != DBNull.Value)
                {
                    this.CityID = (int)dr["CityID"];
                }
                if (dr["StateID"] != DBNull.Value)
                {
                    this.StateID = (int)dr["StateID"];
                }

                if (dr["CountryID"] != DBNull.Value)
                {
                    this.CountryID = (int)dr["CountryID"];
                }

                if (dr["Country_Name"] != DBNull.Value)
                {
                    this.CountryName = (string)dr["Country_Name"];
                }
                else
                {
                    this.CountryName = "NA";
                }

                if (dr["State_Name"] != DBNull.Value)
                {
                    this.StateName = (string)dr["State_Name"];
                }
                else
                {
                    this.StateName = "NA";
                }

                if (dr["City_Name"] != DBNull.Value)
                {
                    this.CityName = (string)dr["City_Name"];
                }
                else
                {
                    this.CityName = "NA";
                }
                
                if (dr["Email1"] != DBNull.Value)
                {
                    this.Email1 = (string)dr["Email1"];
                }

                if (dr["isEmail1Verified"] != DBNull.Value)
                {
                    this.isEmail1Verified = Int32.Parse(dr["isEmail1Verified"].ToString());
                }
                if (dr["DOB"] != DBNull.Value)
                {
                    this.DOB = (DateTime)dr["DOB"];
                }
                if (dr["AboutMe"] != DBNull.Value)
                {
                    this.AboutMe = (string)dr["AboutMe"];
                }
                else
                {
                    this.AboutMe = "NA";
                }
                if (dr["Address"] != DBNull.Value)
                {
                    this.Address = (string)dr["Address"];
                }
                else
                {
                    this.Address = "NA";
                }
                if (dr["mobile"] != DBNull.Value)
                {
                    this.Mobile = (string)dr["mobile"];
                }
                else
                {
                    this.Mobile = "NA";
                }
                if (dr["ECPreference"] != DBNull.Value)
                {
                    this.ECPreference = (string)dr["ECPreference"];
                }
                else
                {
                    this.ECPreference = "NA";
                }
                if (dr["Website"] != DBNull.Value)
                {
                    this.Website = (string)dr["Website"];
                }
                else
                {
                    this.Website = "NA";
                }
                if (dr["canEmailSend"] != DBNull.Value)
                {
                    if (Int32.Parse(dr["canEmailSend"].ToString()) == 1)
                        this.canEmailSend = true;
                    else
                        this.canEmailSend = false;
                }
                else
                {
                    this.canEmailSend = true;
                }
                /*
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
                 * */
            }
            
            dr.Close();
        }
    }
}
