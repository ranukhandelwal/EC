#region XD World Recipe V 3
// FileName: ConstantVar.cs
// Author: Dexter Zafra
// Date Created: 12/29/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;

namespace EC.BL
{
    /// <summary>
    /// Object in this class manage constant variables.
    /// </summary>
    public static class constant
    {
        //These constant variables are use to flag when fetching database,previewing/viewing,
        //inserting cookie, getting dynamic keywords based on the value passed.

        /// <summary>
        /// Domain name
        /// </summary>
        //You need to change this to your own domain name.
        //You can also use HTTP request to extract the domain.
        public const string DomainName = "ExamCrazy.com";

        public const int RecipeImageMaxSize = 30000;
        public const int UserImageMaxSize = 60000;

        public const int PageSize10 = 10;
        public const int PageSize20 = 20;
        public const int PageSize100 = 100;

        public const int ECMAX = 10;
        #region Categopry Dropdownlist
        /// <summary>
        /// Recipe Section - string = "Recipe"
        /// </summary>
        public const string Recipe = "Recipe";

        /// <summary>
        /// Article Section - string = "Article"
        /// </summary>
        public const string Article = "Article";
        #endregion

        #region Indentify what page the rating occured
        /// <summary>
        /// Recipe Section - int = 1
        /// </summary>
        public const int intRecipe = 1;

        /// <summary>
        /// Article Section - int = 2
        /// </summary>
        public const int intArticle = 2;
        #endregion

        #region Recipe Details, Admin Viewing and Editing Section int
        /// <summary>
        /// Recipe details int = 1
        /// </summary>
        public const int intRecipeDetails = 1;

        /// <summary>
        /// Recipe Approved int = 1
        /// </summary>
        public const int ApprovedRecipe = 1;

        /// <summary>
        /// Recipe UnApproved int = 0
        /// </summary>
        public const int UnApprovedRecipe = 0;

        /// <summary>
        /// Recipe admin viewing - int = 2
        /// </summary>
        public const int intRecipeAdminViewing = 2;

        /// <summary>
        /// Recipe admin editing - int = 3
        /// </summary>
        public const int intRecipeAdminEditing = 3;
        #endregion

        #region Recipe Dynamic Keywords Section int
        /// <summary>
        /// Recipe dynamic keyword category page int = 1
        /// </summary>
        public const int intRecipeDynamicKeywordCategory = 1;

        /// <summary>
        /// Recipe dynamic keyword sort page - int = 2
        /// </summary>
        public const int intRecipeDynamicKeywordSortPage = 2;

        /// <summary>
        /// Recipe dynamic keywrod recipe details - int = 3
        /// </summary>
        public const int intRecipeDynamicKeywordDetails = 3;
        #endregion

        #region Article Details, Admin Preview and Editing Section int
        /// <summary>
        /// Returns approved article only.
        /// </summary>
        public const int Approved = 1;

        /// <summary>
        /// Returns approved and unapproved article.
        /// </summary>
        public const int UnApproved = 0;
        #endregion
    }
}