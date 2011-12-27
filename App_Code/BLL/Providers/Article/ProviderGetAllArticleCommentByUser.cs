#region XD World Recipe V 3
// FileName: ProviderGetAllArticlebyAuthor.cs
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
    public sealed class ProviderGetAllArticleCommentByUser : article
    {
        private static readonly ProviderGetAllArticleCommentByUser Instance = new ProviderGetAllArticleCommentByUser();

        static ProviderGetAllArticleCommentByUser()
        {
        }

        ProviderGetAllArticleCommentByUser()
        {
        }

        public static ProviderGetAllArticleCommentByUser GetInstance()
        {
            return Instance;
        }

        public void Param(string Author, int OrderBy, int SortBy, int PageIndex, int PageSize)
        {
            this._Author = Author;
            this._OrderBy = OrderBy;
            this._SortBy = SortBy;
            this._Index = PageIndex;
            this._PageSize = PageSize;

            IDataReader dr = GetData;

            while (dr.Read())
            {
                this._RecordCount = (int)dr["RCount"];
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
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetAllArticleCommentedByUser(Author, OrderBy, SortBy, Index, PageSize);
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
                if (dr["Author"] != DBNull.Value)
                {
                    item.Author = (string)dr["Author"];
                }
                if (dr["Summary"] != DBNull.Value)
                {
                    item.Summary = (string)dr["Summary"];
                }
                if (dr["Rates"] != DBNull.Value)
                {
                    item.Rating = dr["Rates"].ToString();
                }
                if (dr["No_Rates"] != DBNull.Value)
                {
                    item.NoRates = dr["No_Rates"].ToString();
                }
                if (dr["Post_Date"] != DBNull.Value)
                {
                    item.Date = (DateTime)(dr["Post_Date"]);
                }
                if (dr["HITS"] != DBNull.Value)
                {
                    item.Hits = (int)dr["HITS"];
                }
                if (dr["UID"] != DBNull.Value)
                {
                    item.UID = (int)dr["UID"];
                }
                if (dr["Total_Comments"] != DBNull.Value)
                {
                    item.CountComments = (int)dr["Total_Comments"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
