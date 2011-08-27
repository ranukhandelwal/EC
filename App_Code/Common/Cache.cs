#region XD World Recipe V 3
// FileName: Cache.cs
// Author: Dexter Zafra
// Date Created: 8/26/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;
using System.Collections;
using System.Collections.Generic;
using System.Web.Caching;

namespace EC.Common
{
    /// <summary>
    /// Object in this class manages cache data
    /// </summary>
    public static class Caching
    {
        /// <summary>
        /// Default cache setting is true. Change it to false if you don't want to cache certain sections of the site.
        /// </summary>
        // Sections that are currently Cached:
        // 1. Newest Article Right Side Panel Menu
        // 2. Article Category Right Side Panel Menu
        // 3. Homepage Main Course Category
        // 4. Homepage Ethnic Catgory
        // 5. Recipe Category Right Side Panel Menu
        // 6. Submit Recipe Category
        // 7. Newest Recipe Right Side Panel Menu
        // 8. Popular Recipe Right Side Panel Menu
        public static bool EnabledCaching
        {
            get { return true; } //Change it to false if you don't want to cache data
        }

        public static Cache Cache
        {
            get { return HttpContext.Current.Cache; }
        }

        /// <summary>
        /// Cache data will expired in 60 minutes
        /// </summary>
        public static void CahceData(string strKey, object data)
        {
            //If caching is enabled and data object not null, then insert cache
            if (EnabledCaching && data != null)
            {
                Cache.Insert(strKey, data, null, DateTime.Now.AddMinutes(60), TimeSpan.Zero);
            }
        }

        /// <summary>
        /// Remove from the ASP.NET cache all items whose key starts with the input prefix
        /// </summary>
        public static void PurgeCacheItems(string prefix)
        {
            prefix = prefix.ToLower();

            List<string> itemsToRemove = new List<string>();

            IDictionaryEnumerator enumerator = Cache.GetEnumerator();

            while (enumerator.MoveNext())
            {
                if (enumerator.Key.ToString().ToLower().StartsWith(prefix))
                    itemsToRemove.Add(enumerator.Key.ToString());
            }

            foreach (string itemToRemove in itemsToRemove)
                Cache.Remove(itemToRemove);
        }
    }
}
