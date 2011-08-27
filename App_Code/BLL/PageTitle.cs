#region XD World Recipe V 3
// FileName: pagetitle.cs
// Author: Dexter Zafra
// Date Created: 8/12/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;

namespace EC.BL
{
    /// <summary>
    /// Onject in this class manages page title with paging number
    /// </summary>
    public static class PageTitle
    {
        /// <summary>
        /// Return Page Title with paging number
        /// </summary>
        public static string Title(string strPageTitle, int iPage) 
        {
            string sPageTitle = "";

            if (string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["page"]))
            {
               sPageTitle = strPageTitle + " - page 1";
            }
            else
            {
               sPageTitle = strPageTitle + " - page " + iPage;
            }
            return sPageTitle;
        }
    }
}
