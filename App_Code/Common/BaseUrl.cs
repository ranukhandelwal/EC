#region ExamCrazy Portal
// FileName: BaseUrl.cs

// Date Created: 7/25/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Web;

namespace EC.Common
{
/// <summary>
/// Object in this class manage the base URL.
/// </summary>
    public static class BaseUrl
    {
        /// <summary>
        /// Return the domain name
        /// </summary>
        public static string GetBaseUrl
        {
            get
            {
                string GetURLBase;

                GetURLBase = HttpContext.Current.Request.Url.Scheme + "://"
                           + HttpContext.Current.Request.Url.Authority
                           + HttpContext.Current.Request.ApplicationPath.TrimEnd('/') + '/';

                return GetURLBase;
            }
        }
    }
}
