using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using EC.Model;
using EC.Common;
using EC.BL;

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

        private IDataReader GetData
        {
            get
            {
                IDataReader dr = Blogic.ActionProcedureDataProvider.GetArticleCategoryList;
                return dr;
            }

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

        /// <summary>
        /// Gives Article Category list. Takes one int arg
        /// isActive = 1, only Active Category
        /// isActive = 0, only inactive Category
        /// isActive = -1, all category
        /// </summary>
        /// <returns></returns>
        public ExtendedCollection<ArticleCategory> GetArticleCategoryList(int isActive)
        {

            ExtendedCollection<ArticleCategory> list = new ExtendedCollection<ArticleCategory>();
            IDataReader dr = GetData;

            while (dr.Read())
            {

                ArticleCategory item = new ArticleCategory();
                if (dr["CAT_NAME"] != DBNull.Value)
                {
                    item.Category = (string)dr["CAT_NAME"];
                }
                if (dr["CAT_ID"] != DBNull.Value)
                {
                    item.CatID = (int)dr["CAT_ID"];
                }

                list.Add(item);
            }

            dr.Close();

            return list;
        }
       
    }
}