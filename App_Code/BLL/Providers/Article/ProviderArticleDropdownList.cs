#region XD World Recipe V 3
// FileName: ProviderArticleDropdownList.cs
// Author: Dexter Zafra
// Date Created: 6/19/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Collections;
using EC.BL;
using EC.Common;
using EC.Model;

namespace EC.BL.Providers.Article
{
    /// <summary>
    /// Object in this class populate article category dropdownlist.
    /// </summary>
    public sealed class ProviderArticleCategoryDropdown
    {
        public ProviderArticleCategoryDropdown()
        {
        }

        private Hashtable _CategoryListArticle;

        /// <summary>
        /// Return a hashtable of article category
        /// </summary>
        public Hashtable categoryListArticle
        {
            get
            {
                if (_CategoryListArticle == null)
                    createCategoryListArticle();
                return _CategoryListArticle;
            }
        }

        /// <summary>
        /// Create a hashtable for Article Category dropdownlist
        /// </summary>
        private void createCategoryListArticle()
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.GetArticleCategoryList;

            try
            {
                Hashtable ht = new Hashtable();
                while (dr.Read())
                {
                    ht.Add(dr["CAT_ID"].ToString(), dr["CAT_NAME"].ToString());

                    _CategoryListArticle = ht;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            dr.Close();
        }
    }
}