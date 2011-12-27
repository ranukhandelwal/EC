using System;
using System.Collections.Generic;
using System.Web;

namespace EC.Model
{
    public class ArticleCategory
    {
        #region Class Variables
        /// <summary>Category</summary>
        private string _Category;

        /// <summary>Category Description</summary>
        private string _CategoryDescription;

        /// <summary>Category ID</summary>
        private int _CatID;

        /// <summary>Is Category Active</summary>
        private int _isActive;

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

        public int CatID
        {
            get { return _CatID; }
            set { _CatID = value; }
        }

        public int isActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }
        #endregion


    }


}