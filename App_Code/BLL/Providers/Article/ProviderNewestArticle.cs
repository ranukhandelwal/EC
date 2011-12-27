#region XD World Recipe V 3
// FileName: ProviderNewestArticle.cs
// Author: Dexter Zafra
// Date Created: 8/26/2008
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
    /// object in this class manages newst recipe side menu object List collection
    /// </summary>
    public static class NewestArticleMenuProvider
    {
        /// <summary>
        /// Return Newest Recipe Side Panel
        /// </summary>
        public static ExtendedCollection<article> GetArticle(int Top)
        {
            ExtendedCollection<article> list = new ExtendedCollection<article>();

            string Key = "Newest_Articles";

            if (Caching.Cache[Key] != null)
            {
                list = (ExtendedCollection<article>)Caching.Cache[Key];
            }
            else
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetNewestArticleSidePanel(Top);

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
                    if (dr["Post_Date"] != DBNull.Value)
                    {
                        item.Date = (DateTime)(dr["Post_Date"]);
                    }
                    if (dr["HITS"] != DBNull.Value)
                    {
                        item.Hits = (int)dr["HITS"];
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
