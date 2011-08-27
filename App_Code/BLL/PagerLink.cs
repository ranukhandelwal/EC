#region XD World Recipe V 3
// FileName: pagerlink.cs
// Author: Dexter Zafra
// Date Created: 8/22/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;
using System.Web.UI.WebControls;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;

namespace EC.BL
{
    /******************************************************
     * This class needs a little bit of refactoring so it 
     * would be easy  to understand and maintained. 
     *****************************************************/

    /// <summary>
    /// Object in this class manages paging link and counter
    /// </summary>
    public class PagerLinks : pager
    {
        private static readonly PagerLinks Instance = new PagerLinks();
 
        static PagerLinks() 
        {
        }

        PagerLinks() 
        { 
        }

        public static PagerLinks GetInstance()
        {
          return Instance;
        }

        public void PagerLinksParam(int Index, int PageSize, int RecordCount)
        {
            this._Index = Index;
            this._PageSize = PageSize;
            this._RcdCount = RecordCount;
        }


        public void PagerLinksParam(int Index, int PageSize, int RecordCount, int MaxSortPageSize)
        {
            this._Index = Index;
            this._PageSize = PageSize;
            this._RcdCount = RecordCount;
            this._MaxSortPageSize = MaxSortPageSize;
        }

        /// <summary>
        /// Return the default pagesize of 10 for paging
        /// </summary>
        public static int DefaultPageSize
        {
            get { return constant.PageSize10; }
        }

        #region Pager Counter - Display Showing Page: 1 of 12
        /// <summary>
        /// Return the top right corner pager counter - custom paging 
        /// </summary>
        public string GetTopRightPagerCounterCustomPaging
        {
            get
            {
                if (Index == 1)
                {
                    if ((RcdCount % PageSize) > 0)
                    {
                        myString = "Showing Page: <b>" + GetPageSize1 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                    else
                    {
                        myString = "Showing Page: <b>" + GetPageSize1 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                }
                else
                {
                    if ((RcdCount % PageSize) > 0)
                    {
                        myString = "Showing Page: <b>" + GetPageSize3 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                    else
                    {
                        myString = "Showing Page: <b>" + GetPageSize3 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                }

                return myString;
            }
        }

        /// <summary>
        /// Return bottom pager counter - custom paging 
        /// </summary>
        public string GetBottomPagerCounterCustomPaging
        {
            get
            {
                if (Index == 1)
                {
                    if ((RcdCount % PageSize) > 0)
                    {
                        myString = "Total Records:<b> " + RcdCount + "</b> - Showing Page: <b>" + GetPageSize1 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                    else
                    {
                        myString = "Total Records:<b> " + RcdCount + "</b> - Showing Page: <b>" + GetPageSize1 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                }
                else
                {
                    if ((RcdCount % PageSize) > 0)
                    {
                        myString = "Total Records:<b> " + RcdCount + "</b> - Showing Page: <b>" + GetPageSize3 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                    else
                    {
                        myString = "Total Records:<b> " + RcdCount + "</b> - Showing Page: <b>" + GetPageSize3 + "</b> of <b>" + GetPageSize2 + "</b>";
                    }
                }

                return myString;
            }
        }
        #endregion

        #region Pager Link

        ///<summary>
        /// Calculate low and high limits for numeric paging links
        ///</summary>
        private void CalculatePagerHighLowLimits(string PageIs)
        {
                this._intLow = Index - 1;
                this._intHigh = Index + 3;
                if (this._intLow < 1) this._intLow = 1;

                //Recipe does have different calculation.
                if (PageIs == "Recipe") //For Recipe paging
                {
                    //If it is greater than 5, then we subtract the pagezie by 2 because are not showing the last 2 paging links
                    //because we are appending the last 2 paging links that we build.
                    //Here we check for the pagesize. If less than 5, we show all links.
                    if (GetPageSize2 < 5)
                    {
                        if (this._intHigh > GetPageSize2) this._intHigh = GetPageSize2;
                        if (this._intHigh - this._intLow < 5) while ((this._intHigh < this._intLow + 4) && this._intHigh < GetPageSize2) this._intHigh++;
                    }
                    else
                    {
                        if (this._intHigh > GetPageSize2 - 2) this._intHigh = GetPageSize2 - 2;
                        if (this._intHigh - this._intLow < 5) while ((this._intHigh < this._intLow + 4) && this._intHigh < GetPageSize2 - 2) this._intHigh++;
                    }
                }
                //This is for other pages that needs pager, and does not required sepcial counting.
                else if (PageIs == "General") //For other page that required paging
                {
                    if (this._intHigh > GetPageSize2) this._intHigh = GetPageSize2;
                    if (this._intHigh - this._intLow < 5) while ((this._intHigh < this._intLow + 4) && this._intHigh < GetPageSize2) this._intHigh++;
                }

                if (this._intHigh - this._intLow < 5) while ((this._intLow > this._intHigh - 4) && this._intLow > 1) this._intLow--;
        }

        ///<summary>
        /// Returns numeric paging links for recipe
        ///</summary>
        public string DisplayNumericPagerLink(string ParamURL, int OrderBy, int SortBy, int Page, int Layout)
        {
            CalculatePagerHighLowLimits("Recipe");

            string strPagerLink = "";
            string strPrevDots = "";
            string strNextDots = "";
            string strPrevious;
            string strFirst;
            string strNext;
            string strLast;
            string strfirstPage = "";
            string strPage2 = "";
            string strlastPage;
            string strLastPage2;

            int i;

            //Check wether we are dealing with sort.aspx or other pages.
            if (!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["sid"])) //Check for last page of sort.aspx
            {
                if (GetPageSize2 > 5)
                {
                    strNextDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
                }
                if (Page >= 4)
                {
                    strPrevDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
                }
            }
            else //For other pages
            {
                if (Page >= 4)
                {
                    strPrevDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
                }
                else //Hide previous dots...
                {
                    strPrevDots = "";
                }

                if (GetPageSize2 > 5)
                {
                    strNextDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
                }
                else if (GetPageSize2 >= 5 || GetPageSize2 < 5)
                {
                    strPrevDots = "";
                }
            }

            //Check wether request querystring page is empty. If empty, then disabled pager link number 1
            //and display the rest of the pager links
            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == 1)
                    {   //If the user has not move to another page, then disbaled page 1 link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric paging links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&layout=" + Layout
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 2 + "&ps=" + PageSize + "&layout=" + Layout
                                         + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + 2
                                         + ">" + "Next &raquo;" + "</a></span></div>";

                strlastPage = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (GetPageSize2 - 1) + "&ps=" + PageSize + "&layout=" + Layout
                + '"' + "class='letter' title=" + "Jump&nbsp;to&nbsp;page:&nbsp;" + (GetPageSize2 - 1)
                + ">" + (GetPageSize2 - 1) + "</a></span></div>";

                //Check wether pagesize is greater than 5. If true, add the last page link, and if it is not equal to the parameter "page"
                //then enabled the last page link, else disabled it.
                if (GetPageSize2 > 5)
                {
                    if (Page != GetPageSize2)
                    {
                        strLastPage2 = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&layout=" + Layout
                        + '"' + "class='letter' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                        + ">" + GetPageSize2 + "</a></span></div>";
                    }
                    else
                    {
                        strLastPage2 = "<div class='pdead'><span class='me-page'>" + GetPageSize2 + "</span></div> ";
                    }
                }
                else
                {   //If pagezise less than 5 don't show the last 2 paging links
                    strlastPage = "";
                    strLastPage2 = "";
                }

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                    strlastPage = "";
                    strLastPage2 = "";
                    strNext = "";
                }

                //Build the paging links
                return string.Concat(strPagerLink, strNextDots, strlastPage, strLastPage2, strNext);

            }

            //If request querystring page is not empty, then we are navigating paging links
            else
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == Page)
                    {   //If the page index equal to the request page, then disbable the link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&layout=" + Layout
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                //If page index = 1, hide the previous link
                if (Page == 1)
                {
                    strPrevious = "";
                }
                else
                {
                    strPrevious = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page - 1) + "&ps=" + PageSize + "&layout=" + Layout
                                             + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;previous&nbsp;page:&nbsp;" + (Page - 1)
                                             + ">" + "&laquo; Previous" + "</a></span></div>";

                    if (Page >= 3)
                    {
                        strfirstPage = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=1" + "&ps=" + PageSize + "&layout=" + Layout
                        + '"' + "class='letter' title=" + "Back&nbsp;to&nbsp;first&nbsp;page:&nbsp;" + "1"
                        + ">" + "1" + "</a></span></div>";
                    }
                    else
                    {
                        strfirstPage = "";
                        strPage2 = "";
                    }

                    if (Page >= 4)
                    {
                        strPage2 = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=2" + "&ps=" + PageSize + "&layout=" + Layout
                        + '"' + "class='letter' title=" + "Back&nbsp;to&nbsp;page:&nbsp;" + "2"
                        + ">" + "2" + "</a></span></div>";
                    }
                    else
                    {
                        strPage2 = "";
                    }

                    if (GetPageSize2 <= 6)
                    {
                        strfirstPage = "";
                        strPage2 = "";
                    }
                }

                //Check wether the page has next and last page.
                if (HasNextAndLastPage)
                {
                    strNext = "";
                }
                else //Display the page has next and last pager link
                {
                    strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page + 1) + "&ps=" + PageSize + "&layout=" + Layout
                                             + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + (Page + 1)
                                             + ">" + "Next &raquo;" + "</a></span></div>";
                }

                if (Page != GetPageSize2 - 1)
                {
                    strlastPage = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (GetPageSize2 - 1) + "&ps=" + PageSize + "&layout=" + Layout
                    + '"' + "class='letter' title=" + "Jump&nbsp;to&nbsp;page:&nbsp;" + (GetPageSize2 - 1)
                    + ">" + (GetPageSize2 - 1) + "</a></span></div>";
                }
                else
                {
                    strlastPage = "<div class='pdead'><span class='me-page'>" + (GetPageSize2 - 1) + "</span></div> ";
                }

                if (Page != GetPageSize2)
                {
                    strLastPage2 = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&layout=" + Layout
                    + '"' + "class='letter' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                    + ">" + GetPageSize2 + "</a></span></div>";
                }
                else
                {
                    strLastPage2 = "<div class='pdead'><span class='me-page'>" + GetPageSize2 + "</span></div> ";
                }

                if (GetPageSize2 < 5)
                {
                    strlastPage = "";
                    strLastPage2 = "";
                    strfirstPage = "";
                    strPage2 = "";
                }

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                }

                return string.Concat(strPrevious, strfirstPage, strPage2, strPrevDots, strPagerLink, strNextDots, strlastPage, strLastPage2, strNext);
            }
        }

        ///<summary>
        /// Returns numeric pager with first, previous, next and last link for article category
        ///</summary>
        //Overload method use for article category paging
        public string DisplayNumericPagerLink(string ParamURL, int OrderBy, int SortBy, int Page)
        {
            CalculatePagerHighLowLimits("General");

            string strPagerLink = "";
            string strPrevDots = "";
            string strNextDots = "";
            string strPrevious;
            string strFirst;
            string strNext;
            string strLast;

            int i;

            if (Page >= 3)
            {
                strPrevDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else //Hide previous dots...
            {
                strPrevDots = "";
            }

            if (GetPageSize2 > 5)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else if (GetPageSize2 >= 5 || GetPageSize2 < 5)
            {
                strPrevDots = "";
            }

            //Check wether the page has next and last pager link
            if (HasNextAndLastPage)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'></span></div>";
            }

            //Check wether request querystring page is empty. If empty, then disabled pager link number 1
            //and display the rest of the pager links
            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == 1)
                    {   //If the user has not move to another page, then disbaled 1 page link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 2 + "&ps=" + PageSize
                                         + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + 2
                                         + ">" + "Next &raquo;" + "</a></span></div>";

                strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize
                                         + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                         + ">" + "Last &raquo;" + "</a></span></div>";

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                    strNext = "";
                    strLast = "";
                }

                return string.Concat(strPagerLink, strNextDots, strNext, strLast);

            }

            //If request querystring page is not empty, then we are navigating paging links
            else
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == Page)
                    {   //If the page index equal to the request page, then disbable the link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                //If page index = 1, hide the previous and first links
                if (Page == 1)
                {
                    strPrevious = "";
                    strFirst = "";
                }
                else
                {
                    strFirst = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 1 + "&ps=" + PageSize
                         + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;first&nbsp;page:&nbsp;" + 1
                         + ">" + "&laquo; First" + "</a></span></div>";

                    strPrevious = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page - 1) + "&ps=" + PageSize
                                             + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;previous&nbsp;page:&nbsp;" + (Page - 1)
                                             + ">" + "&laquo; Previous" + "</a></span></div>";
                }

                //Check wether the page has next and last page.
                if (HasNextAndLastPage)
                {
                    strNext = "";
                    strLast = "";
                }
                else //Display the page has next and last pager link
                {
                    strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page + 1) + "&ps=" + PageSize
                                             + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + (Page + 1)
                                             + ">" + "Next &raquo;" + "</a></span></div>";

                    strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize
                                                 + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                                 + ">" + "Last &raquo;" + "</a></span></div>";
                }

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                }

                return string.Concat(strFirst, strPrevious, strPrevDots, strPagerLink, strNextDots, strNext, strLast);
            }
        }

        ///<summary>
        /// Returns numeric pager with first, previous, next and last link for the Admin Membership manager pager
        ///</summary>
        //Overload method use for the Admin Membership manager pager.
        public string DisplayNumericPagerLink(string ParamURL, int OrderBy, int SortBy, int Page, string SearchParam, int Numdays)
        {
            CalculatePagerHighLowLimits("General");

            string strPagerLink = "";
            string strPrevDots = "";
            string strNextDots = "";
            string strPrevious;
            string strFirst;
            string strNext;
            string strLast;

            int i;

            if (Page >= 3)
            {
                strPrevDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else //Hide previous dots...
            {
                strPrevDots = "";
            }

            if (GetPageSize2 > 5)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else if (GetPageSize2 >= 5 || GetPageSize2 < 5)
            {
                strPrevDots = "";
            }

            //Check wether the page has next and last pager link
            if (HasNextAndLastPage)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'></span></div>";
            }

            //Check wether request querystring page is empty. If empty, then disabled pager link number 1
            //and display the rest of the pager links
            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == 1)
                    {   //If the user has not move to another page, then disbaled 1 page link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 2 + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                         + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + 2
                                         + ">" + "Next &raquo;" + "</a></span></div>";

                strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                         + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                         + ">" + "Last &raquo;" + "</a></span></div>";

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                    strNext = "";
                    strLast = "";
                }

                return string.Concat(strPagerLink, strNextDots, strNext, strLast);

            }

            //If request querystring page is not empty, then we are navigating paging links
            else
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == Page)
                    {   //If the page index equal to the request page, then disbable the link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                //If page index = 1, hide the previous and first links
                if (Page == 1)
                {
                    strPrevious = "";
                    strFirst = "";
                }
                else
                {
                    strFirst = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 1 + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                         + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;first&nbsp;page:&nbsp;" + 1
                         + ">" + "&laquo; First" + "</a></span></div>";

                    strPrevious = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page - 1) + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                             + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;previous&nbsp;page:&nbsp;" + (Page - 1)
                                             + ">" + "&laquo; Previous" + "</a></span></div>";
                }

                //Check wether the page has next and last page.
                if (HasNextAndLastPage)
                {
                    strNext = "";
                    strLast = "";
                }
                else //Display the page has next and last pager link
                {
                    strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page + 1) + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                             + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + (Page + 1)
                                             + ">" + "Next &raquo;" + "</a></span></div>";

                    strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&search=" + SearchParam + "&numdays=" + Numdays
                                                 + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                                 + ">" + "Last &raquo;" + "</a></span></div>";
                }

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                }

                return string.Concat(strFirst, strPrevious, strPrevDots, strPagerLink, strNextDots, strNext, strLast);
            }
        }

        ///<summary>
        /// Returns numeric pager with first, previous, next and last link for Private Message
        ///</summary>
        public string DisplayNumericPagerLinkPrivateMessage(string ParamURL, int OrderBy, int SortBy, int Page, string Folder)
        {
            CalculatePagerHighLowLimits("General");

            string strPagerLink = "";
            string strPrevDots = "";
            string strNextDots = "";
            string strPrevious;
            string strFirst;
            string strNext;
            string strLast;

            int i;

            if (Page >= 3)
            {
                strPrevDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else //Hide previous dots...
            {
                strPrevDots = "";
            }

            if (GetPageSize2 > 5)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'>...</span></div>";
            }
            else if (GetPageSize2 >= 5 || GetPageSize2 < 5)
            {
                strPrevDots = "";
            }

            //Check wether the page has next and last pager link
            if (HasNextAndLastPage)
            {
                strNextDots = "<div class='pagingdots'><span class='me-pagedots'></span></div>";
            }

            //Check wether request querystring page is empty. If empty, then disabled pager link number 1
            //and display the rest of the pager links
            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == 1)
                    {   //If the user has not move to another page, then disbaled 1 page link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&folder=" + Folder
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 2 + "&ps=" + PageSize + "&folder=" + Folder
                                         + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + 2
                                         + ">" + "Next &raquo;" + "</a></span></div>";

                strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&folder=" + Folder
                                         + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                         + ">" + "Last &raquo;" + "</a></span></div>";

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                    strNext = "";
                    strLast = "";
                }

                return string.Concat(strPagerLink, strNextDots, strNext, strLast);

            }

            //If request querystring page is not empty, then we are navigating paging links
            else
            {
                //Loop through the number of page and build the numeric pager links
                for (i = intLow; i < intHigh + 1; i++)
                {
                    if (i == Page)
                    {   //If the page index equal to the request page, then disbable the link
                        strPagerLink = strPagerLink + "<div class='pdead'><span class='me-page'>" + i + "</span></div> ";
                    }
                    else
                    {   //Enabled the rest of the numeric pager links
                        strPagerLink = strPagerLink + "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + i + "&ps=" + PageSize + "&folder=" + Folder
                                         + '"' + "class=\"letter\" title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + i
                                         + ">" + i + "</a></span></div>  ";
                    }
                }

                //If page index = 1, hide the previous and first links
                if (Page == 1)
                {
                    strPrevious = "";
                    strFirst = "";
                }
                else
                {
                    strFirst = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + 1 + "&ps=" + PageSize + "&folder=" + Folder
                         + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;first&nbsp;page:&nbsp;" + 1
                         + ">" + "&laquo; First" + "</a></span></div>";

                    strPrevious = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page - 1) + "&ps=" + PageSize + "&folder=" + Folder
                                             + '"' + "class='dt' title=" + "Back&nbsp;to&nbsp;previous&nbsp;page:&nbsp;" + (Page - 1)
                                             + ">" + "&laquo; Previous" + "</a></span></div>";
                }

                //Check wether the page has next and last page.
                if (HasNextAndLastPage)
                {
                    strNext = "";
                    strLast = "";
                }
                else //Display the page has next and last pager link
                {
                    strNext = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + (Page + 1) + "&ps=" + PageSize + "&folder=" + Folder
                                             + '"' + "class='dt' title=" + "Go&nbsp;to&nbsp;page:&nbsp;" + (Page + 1)
                                             + ">" + "Next &raquo;" + "</a></span></div>";

                    strLast = "<div class='paging'><span class='me-page'><a href=\"" + ParamURL + "&ob=" + OrderBy + "&sb=" + SortBy + "&page=" + GetPageSize2 + "&ps=" + PageSize + "&folder=" + Folder
                                                 + '"' + "class='dt' title=" + "Jump&nbsp;to&nbsp;last&nbsp;page:&nbsp;" + GetPageSize2
                                                 + ">" + "Last &raquo;" + "</a></span></div>";
                }

                // Check if the record count is less than the default page size. 
                // If true, hide the pager link, else show the pager link
                if (IsRecordCountLessThanOrEqualToPageSize)
                {
                    strPagerLink = "";
                }

                return string.Concat(strFirst, strPrevious, strPrevDots, strPagerLink, strNextDots, strNext, strLast);
            }
        }
        #endregion
    }
}

