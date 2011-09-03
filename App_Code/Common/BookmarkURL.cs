#region ExamCrazy Portal
// FileName: VookmarUrl.cs

// Date Created: 8/24/2008
// Website: www.examcrazy.com
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

