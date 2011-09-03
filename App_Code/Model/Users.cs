#region ExamCrazy Portal
// FileName: users.cs


// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using EC.BL;

namespace EC.Model
{
    /// <summary>
    /// Object in this class manages user entity and properties
    /// </summary>
    public class Users
    {
        //Defaut constructor
        public Users()
        {
        }

        #region Class Variables
        /*User Registration Info*/
        /// <summary>User ID</summary>
        protected int _UID;

        /// <summary>User Status</summary>
        protected int _isActive;
        protected int _UserType;
        protected int _isEmail1Verified;
        protected int _isEmail2Verified;
        protected int _isMobileVerified;
        

        /// <summary>User name</summary>
        protected string _UserName;

        /// <summary>User Password</summary>
        protected string _Password;

        /*User Personnel Info*/

        /// <summary>User Firstname</summary>
        protected string _FirstName;

        /// <summary>User Lastname</summary>
        protected string _LastName;

        /// <summary>User Address</summary>
        protected string _Address;

        /// <summary>User  City ID</summary>
        protected int _CityID;

        /// <summary>User  State ID</summary>
        protected int _StateID;

        /// <summary>User  Country ID</summary>
        protected int _CountryID;

        /// <summary>User  PIN</summary>
        protected int _PIN;

        /// <summary>User Email1</summary>
        protected string _Email1;

        /// <summary>User Email2</summary>
        protected string _Email2;

        /// <summary>User Date of Birth</summary>
        protected DateTime _DOB;

        /// <summary>User Sex</summary>
        protected int _Sex;

        /*User Education Info*/

        /// <summary>User Education ID</summary>
        protected int _EduID;

        /// <summary>User Specialization ID</summary>
        protected int _EduSpecID;

        /// <summary>User Edu Passout Year</summary>
        protected DateTime _EduYear;

        /*User Profession Info*/

        /// <summary>User Company ID</summary>
        protected int _WorkCompanyID;

        /*User Preference Info*/

        /// <summary>List of EC's User in interested in</summary>
        protected int[] _ECPreference = new int[constant.ECMAX];

        protected bool _canEmailSend;

        protected bool _canEmailSend_NewJob;

        protected bool _canEmailSend_NewFeatures;

        protected bool _canEmailSend_AdmissionNotif;

        protected bool _canEmailSend_Newsletter;
   
        /// <summary>User allow other user contact</summary>
        protected int _ContactMe;

        /*User Statistical Info*/

        protected DateTime _RegistrationDate;

        protected DateTime _LastLoginDate;

        protected DateTime _LastUpdated;

        protected int _LoginCount;

        protected int _TotalTestsAttempted;

        protected int _isCurrentemailSent;

        protected int _ProfileCompletionPercent;


        /*User Profile Details*/
        /// <summary>User AboutMe</summary>
        protected string _AboutMe;

        /// <summary>User Photo</summary>
        protected string _Photo;

        /// <summary>User Website</summary>
        protected string _Website;

        /// <summary>User profile hits - how many time this profile is visited by others</summary>
        protected int _Hits;

        /*
        /// <summary>User Posted Recipe Counter</summary>
        protected int _PostedRecipeCount;

        /// <summary>User Posted Article Counter</summary>
        protected int _PostedArticleCount;

        /// <summary>User saved recipe to cookbook counter</summary>
        protected int _SavedrecipeCount;

        /// <summary>User comment recipe counter</summary>
        protected int _CommentRecipeCount;

        /// <summary>User comment article counter</summary>
        protected int _CommentArticleCount;

        /// <summary>User friends list counter</summary>
        protected int _FriendsCount;
        */

        
        

        
/*
        /// <summary>User status</summary>
        
        protected string _GUID;

        protected int _Activation;

        protected string _UserRole;

        protected int _ShowFriendsListinProfile;

        protected int _ShowCookBookinProfile;

        protected int _NumRecordsCookBookQuickView;

        protected int _NumRecordsFriendsList;

        protected int _PreferredLayout;

        protected int _PreferredPageSize;

        protected int _IsUserChoosePreferredLayout;

        protected int _ReceivePM;

        protected int _PMEmailNotification;
 * */

        #endregion


        #region Properties
        public int UID
        {
            get { return _UID; }
            set { _UID = value; }
        }

        public int isActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }
        
        public int UserType
        {
            get { return _UserType; }
            set { _UserType = value; }
        }
        public int isEmail1Verified
        {
            get { return _isEmail1Verified; }
            set { _isEmail1Verified = value; }
        }
        public int isEmail2Verified
        {
            get { return _isEmail2Verified; }
            set { _isEmail2Verified = value; }
        }
        public int isMobileVerified
        {
            get { return _isMobileVerified; }
            set { _isMobileVerified = value; }
        }
        

        public string UserName
        {
            get { return _UserName; }
            set { _UserName = value; }
        }

        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        public string FirstName
        {
            get { return _FirstName; }
            set { _FirstName = value; }
        }

        
        public string LastName
        {
            get { return _LastName; }
            set { _LastName = value; }
        }

        
        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }

        public int CityID
        {
            get { return _CityID; }
            set { _CityID = value; }
        }

        public int StateID
        {
            get { return _StateID; }
            set { _StateID = value; }
        }

        public int CountryID
        {
            get { return _CountryID; }
            set { _CountryID = value; }
        }

        public int PIN
        {
            get { return _PIN; }
            set { _PIN = value; }
        }

        public string Email1
        {
            get { return _Email1; }
            set { _Email1 = value; }
        }
        public string Email2
        {
            get { return _Email2; }
            set { _Email2 = value; }
        }
        public DateTime DOB
        {
            get { return _DOB; }
            set { _DOB = value; }
        }

        public int Sex
        {
            get { return _Sex; }
            set { _Sex = value; }
        }

        public int EduID
        {
            get { return _EduID; }
            set { _EduID = value; }
        }

        public int EduSpecID
        {
            get { return _EduSpecID; }
            set { _EduSpecID = value; }
        }

        public DateTime EduYear
        {
            get { return _EduYear; }
            set { _EduYear = value; }
        }
        
        public int WorkCompanyID
        {
            get { return _WorkCompanyID; }
            set { _WorkCompanyID = value; }
        }

        public int[] ECPreference
        {
            get { return _ECPreference; }
            set { _ECPreference = value; }
        }

        public bool canEmailSend
        {
            get { return _canEmailSend; }
            set { _canEmailSend = value; }
        }

        public bool canEmailSend_NewJob
        {
            get { return _canEmailSend_NewJob; }
            set { _canEmailSend_NewJob = value; }
        }

        public bool canEmailSend_NewFeatures
        {
            get { return _canEmailSend_NewFeatures; }
            set { _canEmailSend_NewFeatures = value; }
        }

        public bool canEmailSend_AdmissionNotif
        {
            get { return _canEmailSend_AdmissionNotif; }
            set { _canEmailSend_AdmissionNotif = value; }
        }

        public bool canEmailSend_Newsletter
        {
            get { return _canEmailSend_Newsletter; }
            set { _canEmailSend_Newsletter = value; }
        }

        /*
        public string FavoriteFoods1
        {
            get { return _FavoriteFoods1; }
            set { _FavoriteFoods1 = value; }
        }

        public string FavoriteFoods2
        {
            get { return _FavoriteFoods2; }
            set { _FavoriteFoods2 = value; }
        }

        public string FavoriteFoods3
        {
            get { return _FavoriteFoods3; }
            set { _FavoriteFoods3 = value; }
        }

        public int NewsLetter
        {
            get { return _NewsLetter; }
            set { _NewsLetter = value; }
        }
        */

        
        public DateTime RegistrationDate
        {
            get { return _RegistrationDate; }
            set { _RegistrationDate = value; }
        }

        public DateTime LastLoginDate
        {
            get { return _LastLoginDate; }
            set { _LastLoginDate = value; }
        }

        public DateTime LastUpdated
        {
            get { return _LastUpdated; }
            set { _LastUpdated = value; }
        }

        public int LoginCount
        {
            get { return _LoginCount; }
            set { _LoginCount = value; }
        }

        public int TotalTestsAttempted
        {
            get { return _TotalTestsAttempted; }
            set { _TotalTestsAttempted = value; }
        }

        public int isCurrentemailSent
        {
            get { return _isCurrentemailSent; }
            set { _isCurrentemailSent = value; }
        }

        public int ProfileCompletionPercent
        {
            get { return _ProfileCompletionPercent; }
            set { _ProfileCompletionPercent = value; }
        }

        public string AboutMe
        {
            get { return _AboutMe; }
            set { _AboutMe = value; }
        }

        public string Photo
        {
            get { return _Photo; }
            set { _Photo = value; }
        }

        public string Website
        {
            get { return _Website; }
            set { _Website = value; }
        }

        public int Hits
        {
            get { return _Hits; }
            set { _Hits = value; }
        }

        /*
        public int PostedRecipeCount
        {
            get { return _PostedRecipeCount; }
            set { _PostedRecipeCount = value; }
        }

        public int PostedArticleCount
        {
            get { return _PostedArticleCount; }
            set { _PostedArticleCount = value; }
        }

        public int SavedrecipeCount
        {
            get { return _SavedrecipeCount; }
            set { _SavedrecipeCount = value; }
        }

        public int CommentRecipeCount
        {
            get { return _CommentRecipeCount; }
            set { _CommentRecipeCount = value; }
        }

        public int CommentArticleCount
        {
            get { return _CommentArticleCount; }
            set { _CommentArticleCount = value; }
        }

        public int FriendsCount
        {
            get { return _FriendsCount; }
            set { _FriendsCount = value; }
        }

        public DateTime LastLogin
        {
            get { return _LastLogin; }
            set { _LastLogin = value; }
        }

        public DateTime LastVisit
        {
            get { return _LastVisit; }
            set { _LastVisit = value; }
        }

        public DateTime LastUpdated
        {
            get { return _LastUpdated; }
            set { _LastUpdated = value; }
        }

        public int ContactMe
        {
            get { return _ContactMe; }
            set { _ContactMe = value; }
        }

        

        public string GUID
        {
            get { return _GUID; }
            set { _GUID = value; }
        }

        public int Activation
        {
            get { return _Activation; }
            set { _Activation = value; }
        }

        public string UserRole
        {
            get { return _UserRole; }
            set { _UserRole = value; }
        }

        public int ShowFriendsListinProfile
        {
            get { return _ShowFriendsListinProfile; }
            set { _ShowFriendsListinProfile = value; }
        }

        public int ShowCookBookinProfile
        {
            get { return _ShowCookBookinProfile; }
            set { _ShowCookBookinProfile = value; }
        }

        public int NumRecordsCookBookQuickView
        {
            get { return _NumRecordsCookBookQuickView; }
            set { _NumRecordsCookBookQuickView = value; }
        }

        public int NumRecordsFriendsList
        {
            get { return _NumRecordsFriendsList; }
            set { _NumRecordsFriendsList = value; }
        }

        public int PreferredLayout
        {
            get { return _PreferredLayout; }
            set { _PreferredLayout = value; }
        }

        public int PreferredPageSize
        {
            get { return _PreferredPageSize; }
            set { _PreferredPageSize = value; }
        }

        public int IsUserChoosePreferredLayout
        {
            get { return _IsUserChoosePreferredLayout; }
            set { _IsUserChoosePreferredLayout = value; }
        }

        public int ReceivePM
        {
            get { return _ReceivePM; }
            set { _ReceivePM = value; }
        }

        public int PMEmailNotification
        {
            get { return _PMEmailNotification; }
            set { _PMEmailNotification = value; }
        }
        */
        #endregion
    }
}