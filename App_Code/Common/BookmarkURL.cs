#region XD World Recipe V 3
// FileName: VookmarUrl.cs
// Author: Dexter Zafra
// Date Created: 8/24/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;

namespace EC.Common
{
    /// <summary>
    /// Object in this class manage bookmark URL.
    /// </summary>
    public static class Bookmark
    {
        /// <summary>
        /// Return Bookmarl URL.
        /// </summary>
        public static string URL
        {
            get
            {
                string BookmarkURL = HttpContext.Current.Request.Url.ToString();
                return BookmarkURL;
            }
        }
    }
}

