#region XD World Recipe V 3
// FileName: ArticleRepository.cs
// Author: Dexter Zafra
// Date Created: 6/30/2008
// Website: www.ex-designz.net
#endregion
using System;
using EC.Model;

namespace EC.BL
{
    /// <summary>
    /// Objects in this class manages Add, Update and Delete Recipe
    /// </summary>
    public class ArticleRepository : BaseArticleObj
    {
        /// <summary>
        /// Default Constructor
        /// </summary>
        public ArticleRepository()
        {
        }

        /// <summary>
        /// Perform Insert to Database
        /// </summary>
        /// <returns></returns>
        public override int Add(article article)
        {
            return Blogic.ActionProcedureDataProvider.AddArticle(article);
        }

        /// <summary>
        /// Perform Update
        /// </summary>
        /// <returns></returns>
        public override int Update(article article)
        {
            return Blogic.ActionProcedureDataProvider.UpdateArticle(article);
        }

        /// <summary>
        /// Perform Deactivate
        /// </summary>
        /// <returns></returns>
        public override int Deactivate(article article)
        {
            return Blogic.ActionProcedureDataProvider.AdminDeleteArticle(article);
        }

       

    }
}
