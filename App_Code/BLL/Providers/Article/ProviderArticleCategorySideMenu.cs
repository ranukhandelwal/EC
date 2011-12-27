#region XD World Recipe V 3
// FileName: ProviderArticleCategorySideMenu.cs
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
    /// object in this class manages article category side menu object List collection
    /// </summary>
    public static class ArticleCategoryMenuProvider
    {
        /// <summary>
        /// Return Article Category
        /// </summary>
        public static ExtendedCollection<article> GetArticle()
        {
            ExtendedCollection<article> list = new ExtendedCollection<article>();

            string Key = "ArticleCategory_SideMenu";

            if (Caching.Cache[Key] != null)
            {
                list = (ExtendedCollection<article>)Caching.Cache[Key];
            }
            else
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetArticleCategoryList;

                while (dr.Read())
                {
                    article item = new article();

                    item.CatID = (int)dr["CAT_ID"];

                    if (dr["CAT_NAME"] != DBNull.Value)
                    {
                        item.Category = (string)dr["CAT_NAME"];
                    }
                    if (dr["REC_COUNT"] != DBNull.Value)
                    {
                        item.RecordCount = (int)(dr["REC_COUNT"]);
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
