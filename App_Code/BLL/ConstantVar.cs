#region ExamCrazy Portal
// FileName: ConstantVar.cs

// Date Created: 12/29/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Web;

namespace EC.BL
{

    /// <summary>
    /// Announcement Category String
    /// </summary>
    public struct sCategory
    {
        private int _ID;
        private string _Name;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
    }

    /// <summary>
    /// Job State String
    /// </summary>
    public struct sState
    {
        private int _ID;
        private string _Name;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
    }

    /// <summary>
    /// Publish String
    /// </summary>
    public struct sPublish
    {
        private int _ID;
        private string _Name;
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
    }

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
        public const string JobsPageBase = "~/Jobs-Interviews/";

        //Note StateMaxId and CityMaxID is used as hard coded values in Ajaxrequest.js
        //Couldnt get some value to read class constant in javascript. Please note these
        //values should always match
        public const int StateMaxID = 50000;
        public const int CityMaxID = 50000;

        public const int RecipeImageMaxSize = 30000;
        public const int UserImageMaxSize = 60000;

        public const int PageSize10 = 10;
        public const int PageSize20 = 20;
        public const int PageSize100 = 100;

        public const int ECMAX = 10;
        #region Category Dropdownlist
        /// <summary>
        /// Recipe Section - string = "Recipe"
        /// </summary>
        public const string Recipe = "Recipe";

        /// <summary>
        /// Article Section - string = "Article"
        /// </summary>
        public const string Article = "Article";

        /// <summary>
        /// UserImagePath  string = "User Image Path"
        /// </summary>
        public const string UserImagePath = "~/UserImages/";
   
        public static sCategory[] FeedCategory = new sCategory[] {
            new sCategory{ID = 0, Name = "Choose Category"}, 
            new sCategory{ID = 1, Name = "JOBS"}, 
            new sCategory{ID = 2, Name = "ANNOUNCE"},
            new sCategory{ID = 3, Name = "UPDATE"}
        };

        public static sPublish[] PublishArea = new sPublish[] {
            new sPublish{ID = 0, Name = "Default"},
            new sPublish{ID = 1, Name = "GATE"}, 
            new sPublish{ID = 2, Name = "IES"},
            new sPublish{ID = 3, Name = "COLLEGE"},
            new sPublish{ID = 4, Name = "JOBS"}
        };

        public static sState[] JobState = new sState[] {
            new sState{ID = 0, Name = "Choose State"}, 
            new sState{ID = 1, Name = "Valid"}, 
            new sState{ID = 2, Name = "Saved"},
            new sState{ID = 3, Name = "InValid"}
        };

        public static string[] JobCategory = new string[] {"Core Technical", "Govt Sector", "Research", "IT/Software", "Freshers" };
        public static string[] JobType = new string[] { "Full Time", "Contract", "Internship"};

        public const int MALE = 0;
        public const int FEMALE = 1;
        
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