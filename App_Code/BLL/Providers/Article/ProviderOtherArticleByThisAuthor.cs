#region XD World Recipe V 3
// FileName: ProviderOtherArticleByThisAuthor.cs
// Author: Dexter Zafra
// Date Created: 8/22/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using EC.BL;
using EC.Common;
using EC.Model;

namespace EC.BL.Providers.Article
{
    /// <summary>
    /// object in this class manages article submitted by author object List collection
    /// </summary>
    public sealed class ProviderOtherArticleByThisAuthor : article
    {
        private static readonly ProviderOtherArticleByThisAuthor Instance = new ProviderOtherArticleByThisAuthor();

        static ProviderOtherArticleByThisAuthor()
        {
        }

        ProviderOtherArticleByThisAuthor()
        {
        }

        public static ProviderOtherArticleByThisAuthor GetInstance()
        {
            return Instance;
        }

        public void Param(int UserID, int AID)
        {
            this._UID = UserID;
            this._ID = AID;

            IDataReader dr = GetData;

            while (dr.Read())
            {
                this._RecordCount = (int)dr["TotalCount"];
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
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetTop10OtherArticlesByThisAuthor(UID, ID);
                return dr;
            }
        }

        public ExtendedCollection<article> GetArticle()
        {
            ExtendedCollection<article> list = new ExtendedCollection<article>();

            IDataReader dr = GetData;

            while (dr.Read())
            {
                article item = new article();

                item.ID = (int)dr["ID"];

                if (dr["Title"] != DBNull.Value)
                {
                    item.Title = (string)dr["Title"];
                }
                if (dr["CAT_NAME"] != DBNull.Value)
                {
                    item.Category = (string)dr["CAT_NAME"];
                }
                if (dr["HITS"] != DBNull.Value)
                {
                    item.Hits = (int)dr["HITS"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
