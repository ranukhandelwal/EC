using System;
using System.Collections.Generic;
using System.Web;
using EC.Model;

namespace EC.BL
{
    public class ArticleCategoryRepository : BaseArticleCategoryObj
    {
       /// <summary>
        /// Default Constructor
        /// </summary>
        public ArticleCategoryRepository()
        {
        }

        /// <summary>
        /// Perform Insert to Database
        /// </summary>
        /// <returns></returns>
        public override int Add(ArticleCategory Category)
        {
            return Blogic.ActionProcedureDataProvider.AdminAddNewArticleCategory(Category);
        }

        /// <summary>
        /// Perform Update
        /// </summary>
        /// <returns></returns>
        public override int Update(ArticleCategory Category)
        {
            return Blogic.ActionProcedureDataProvider.UpdateArticleCategory(Category);
        }

        /// <summary>
        /// Perform Deactivate
        /// </summary>
        /// <returns></returns>
        public override int Deactivate(ArticleCategory Category)
        {
            return Blogic.ActionProcedureDataProvider.DeactivateArticleCategory(Category);
        }

       
    }
}