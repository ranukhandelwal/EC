#region ExamCrazy Portal
// FileName: pagerlink.cs

// Date Created: 7/10/2008
// Website: www.examcrazy.com
#endregion
using System;

namespace EC.Model
{
    /// <summary>
    /// Object in this class manages pager link properties
    /// </summary>
    public class pager
    {
        public pager()
        {
        }

#region Class Variables
        /// <summary>Page Index</summary>
        protected int _Index;

        /// <summary>Pagesize</summary>
        protected int _PageSize;

        /// <summary>Record Count</summary>
        protected int _RcdCount;

        /// <summary>String to build the pager counter</summary>
        protected string _myString = "";

        protected int _MaxSortPageSize;

        protected int _intLow;

        protected int _intHigh;

#endregion

#region Properties - Get and Set Accessor
        public int Index
        {
            get { return _Index; }
            set { _Index = value; }
        }
        public int PageSize
        {
            get { return _PageSize; }
            set { _PageSize = value; }
        }
        public int RcdCount
        {
            get { return _RcdCount; }
            set { _RcdCount = value; }
        }
        public int MaxSortPageSize
        {
            get { return _MaxSortPageSize; }
            set { _MaxSortPageSize = value; }
        }
        public int intLow
        {
            get { return _intLow; }
            set { _intLow = value; }
        }
        public int intHigh
        {
            get { return _intHigh; }
            set { _intHigh = value; }     
        }
        public string myString
        {
            get { return _myString; }
            set { _myString = value; }
        }
        public int GetPageSize
        {
            get { return Index; }
        }
        public int GetPageSize1
        {
            get { return (Index / PageSize + 1); }
        }
        public int GetPageSize2
        {
            get 
            {
                int MaxPageSize;

                if ((RcdCount % PageSize) > 0)
                {
                    MaxPageSize = ((RcdCount / PageSize) + 1);
                }
                else
                {
                    MaxPageSize = (RcdCount / PageSize);
                }

                return MaxPageSize;
            }
        }
        public int GetPageSize3
        {
            get { return ((Index + 1) - 1); }
        }
#endregion

#region Boolean - Compare PageSize and Record Count

        protected bool HasNextAndLastPage
        {
            get
            {
                //This will determine to either hide or show the next and last button.
                //If the pagesize match against the last pagesize, hide button, else show button
                if (GetPageSize == GetPageSize2)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        protected bool IsRecordCountLessThanOrEqualToPageSize
        {
            get
            {
                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (RcdCount <= PageSize)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
#endregion
    }
}
