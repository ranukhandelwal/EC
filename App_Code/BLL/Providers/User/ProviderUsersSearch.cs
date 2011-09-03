#region ExamCrazy Portal
// FileName: ProviderUsersSearch.cs

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
    /// Object in this class provides user basic search result.
    /// </summary>
    public sealed class ProviderUsersSearch : pager
    {
        /*
        private string _Input;
        private int _Condition;
        private int _TotalCount;

        private string Input
        {
            get { return _Input; }
            set { _Input = value; }
        }
        private int Condition
        {
            get { return _Condition; }
            set { _Condition = value; }
        }
        public int TotalCount
        {
            get { return _TotalCount; }
            set { _TotalCount = value; }
        }

        public ProviderUsersSearch(string Input, int Condition, int PageIndex, int PageSize)
        {
            this._Input = Input;
            this._Condition = Condition;
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
                IDataReader dr = Blogic.ActionProcedureDataProvider.SearchUser(Input, Condition, Index, PageSize);
                return dr;
            }
        }

        public ExtendedCollection<Users> GetUserSearchResult()
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
                    if (dr["UserName"] != DBNull.Value)
                    {
                        item.UserName = (string)dr["UserName"];
                    }
                    if (dr["FirstName"] != DBNull.Value)
                    {
                        item.FirstName = (string)dr["FirstName"];
                    }
                    if (dr["LastName"] != DBNull.Value)
                    {
                        item.LastName = (string)dr["LastName"];
                    }
                    if (dr["City"] != DBNull.Value)
                    {
                        item.City = (string)dr["City"];
                    }
                    if (dr["State"] != DBNull.Value)
                    {
                        item.State = (string)dr["State"];
                    }
                    if (dr["Country"] != DBNull.Value)
                    {
                        item.Country = (string)dr["Country"];
                    }
                    if (dr["UserImage"] != DBNull.Value)
                    {
                        item.Photo = (string)dr["UserImage"];
                    }

                    list.Add(item);

                }

                dr.Close();

            return list;
        }
         */
    }
}

