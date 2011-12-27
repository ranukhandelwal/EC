#region XD World Recipe V 3
// FileName: ProviderUnapprovedArticle.cs
// Author: Dexter Zafra
// Date Created: 2/26/2009
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;
using System.Data;
using EC.BL;
using EC.Common;
using EC.Model;

namespace EC.BL.Providers.Article
{
    /// <summary>
    /// object in this class returns unapproved articles
    /// </summary>
    public static class ProviderUnapprovedArticles
    {

        /// <summary>
        /// Return Recipe Category Data
        /// </summary>
        private static IDataReader GetData
        {
            get
            {
                //Get data
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetUnApprovedArticle;
                return dr;
            }
        }

        /// <summary>
        /// Return unapproved articles
        /// </summary>
        public static ExtendedCollection<article> GetUnApprovedArticles()
        {
            ExtendedCollection<article> list = new ExtendedCollection<article>();

            IDataReader dr = GetData;

            while (dr.Read())
            {
                article item = new article();

                if (dr["ID"] != DBNull.Value)
                {
                    item.ID = (int)(dr["ID"]);
                }
                if (dr["CAT_NAME"] != DBNull.Value)
                {
                    item.Category = (string)dr["CAT_NAME"];
                }
                if (dr["Title"] != DBNull.Value)
                {
                    item.Title = (string)dr["Title"];
                }
                if (dr["Post_Date"] != DBNull.Value)
                {
                    item.Date = (DateTime)dr["Post_Date"];
                }
                if (dr["Author"] != DBNull.Value)
                {
                    item.Author = (string)dr["Author"];
                }
                if (dr["UID"] != DBNull.Value)
                {
                    item.UID = (int)dr["UID"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
    }
}
