#region ExamCrazy Portal
// FileName: ProviderShowAllUsers.cs

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
    /// Object in this class returns all users.
    /// </summary>
    public sealed class ProviderShowAllUsers : pager
    {
        private int _OrderBy;
        private int _SortBy;
        private int _TotalCount;

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


        public ProviderShowAllUsers()
        {
        }

        public ProviderShowAllUsers(int OrderBy, int SortBy, int PageIndex, int PageSize)
        {
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
                IDataReader dr = Blogic.ActionProcedureDataProvider.ShowAllMembers(OrderBy, SortBy, Index, PageSize);
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

                if (dr["uname"] != DBNull.Value)
                {
                    item.UserName = (string)dr["uname"];
                }
                /*
                if (dr["FirstName"] != DBNull.Value)
                {
                    item.FirstName = (string)dr["FirstName"];
                }
                if (dr["LastName"] != DBNull.Value)
                {
                    item.LastName = (string)dr["LastName"];
                }
                
                if (dr["Hits"] != DBNull.Value)
                {
                    item.Hits = (int)dr["Hits"];
                }
                */

                list.Add(item);

            }
            
            dr.Close();

            return list;
        }
    }
}

