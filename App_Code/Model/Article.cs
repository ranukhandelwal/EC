#region XD World Recipe V 3
// FileName: article.cs
// Author: Dexter Zafra
// Date Created: 6/30/2008
// Website: www.ex-designz.net
#endregion
using System;

namespace EC.Model
{
    /// <summary>
    /// Objects in this class manages article properties and fields
    /// </summary>
    public class article : pager
    {
        ///<summary>Default Constructor</summary>
        public article()
        {
        }

#region Class Variables
        /// <summary>What Page We are dealing</summary>
        protected int _WhatPageID;

        /// <summary>Article Title</summary>
        protected int _ID;

        /// <summary>User ID</summary>
        protected int _UID;

        /// <summary>Article Title</summary>
        protected string _Title;

        /// <summary>Article Short Title</summary>
        protected string _ShortTitle;

        /// <summary>Author</summary>
        protected string _Author;

        /// <summary>No of Votes</summary>
        protected string _NoRates;

        /// <summary>No of Hits</summary>
        protected int _Hits;

        /// <summary>Rating</summary>
        protected string _Rating;

        /// <summary>Category</summary>
        protected string _Category;

        /// <summary>Category Description</summary>
        protected string _CategoryDescription;

        /// <summary>Content</summary>
        protected string _Content;

        /// <summary>Summary</summary>
        protected string _Summary;

        /// <summary>Summary</summary>
        protected string _Keyword;

        /// <summary>Category ID</summary>
        protected int _CatID;

        protected int _CountComments;

        /// <summary>Date</summary>
        protected DateTime _Date;

        /// <summary>Record Count</summary>
        protected int _RecordCount;

        protected int _Approved;

        protected int _OrderBy;

        protected int _SortBy;


#endregion

#region Properties - Get and Set Accessor
        public int WhatPageID
        {
            get { return _WhatPageID; }
            set { _WhatPageID = value; }
        }
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public int UID
        {
            get { return _UID; }
            set { _UID = value; }
        }
        public string Title
        {
            get { return _Title; }
            set { _Title = value; }
        }
        public string ShortTitle
        {
            get { return _ShortTitle; }
            set { _ShortTitle = value; }
        }
        public string Author
        {
            get { return _Author; }
            set { _Author = value; }
        }
        public string NoRates
        {
            get { return _NoRates; }
            set { _NoRates = value; }
        }
        public int Hits
        {
            get { return _Hits; }
            set { _Hits = value; }
        }
        public string Rating
        {
            get { return _Rating; }
            set { _Rating = value; }
        }
        public string Category
        {
            get { return _Category; }
            set { _Category = value; }
        }
        public string CategoryDescription
        {
            get { return _CategoryDescription; }
            set { _CategoryDescription = value; }
        }
        public string Content
        {
            get { return _Content; }
            set { _Content = value; }
        }
        public string Summary
        {
            get { return _Summary; }
            set { _Summary = value; }
        }
        public string Keyword
        {
            get { return _Keyword; }
            set { _Keyword = value; }
        }
        public int CatID
        {
            get { return _CatID; }
            set { _CatID = value; }
        }
        public int CountComments
        {
            get { return _CountComments; }
            set { _CountComments = value; }
        }
        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }
        public int RecordCount
        {
            get { return _RecordCount; }
            set { _RecordCount = value; }
        }
        public int Approved
        {
            get { return _Approved; }
            set { _Approved = value; }
        }
        public int OrderBy
        {
            get { return _OrderBy; }
            set { _OrderBy = value; }
        }
        public int SortBy
        {
            get { return _SortBy; }
            set { _SortBy = value; }
        }
#endregion
    }
}
