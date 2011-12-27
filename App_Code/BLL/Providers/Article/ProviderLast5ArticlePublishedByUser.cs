#region XD World Recipe V 3
// FileName: ProviderLast5ArticlePublishedByUser.cs
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
    /// object in this class returns a list of the last 5 published article by user.
    /// </summary>
    public sealed class ProviderLast5ArticlePublishedByUser : article
    {
        private static readonly ProviderLast5ArticlePublishedByUser Instance = new ProviderLast5ArticlePublishedByUser();

        static ProviderLast5ArticlePublishedByUser()
        {
        }

        ProviderLast5ArticlePublishedByUser()
        {
        }

        public static ProviderLast5ArticlePublishedByUser GetInstance()
        {
            return Instance;
        }

        public void Param(int UserID)
        {
            this._UID = UserID;
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
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetLast5ArticleByUser(UID);
                return dr;
            }
        }

        public ExtendedCollection<article> GetArticle()
        {
             ExtendedCollection<article> list = new ExtendedCollection<article>();

             string Key = "Last5_ArticlePublishedByUser_" + UID;

             if (Caching.Cache[Key] != null)
             {
                 list = (ExtendedCollection<article>)Caching.Cache[Key];
             }
             else
             {

                 IDataReader dr = GetData;

                 while (dr.Read())
                 {
                     article item = new article();

                     item.ID = (int)dr["ID"];

                     if (dr["Title"] != DBNull.Value)
                     {
                         item.Title = (string)dr["Title"];
                     }
                     if (dr["ShortTitle"] != DBNull.Value)
                     {
                         item.ShortTitle = (string)dr["ShortTitle"];
                     }
                     if (dr["CAT_NAME"] != DBNull.Value)
                     {
                         item.Category = (string)dr["CAT_NAME"];
                     }

                     list.Add(item);

                     Caching.CahceData(Key, list);
                 }

                 dr.Close();
             }

            return list;
        }
    }
}
