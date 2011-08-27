#region XD World Recipe V 3
// FileName: GetUserImage.cs
// Author: Dexter Zafra
// Date Created: 2/15/2009
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;

namespace EC.BL
{
    /// <summary>
    /// Object in this class manages user image and path.
    /// </summary>
    public static class GetUserImage
    {
       /// <summary>
        /// Returns user image path.
        /// </summary>
        public static string ImagePathForUserPhoto
        {
            get
            {
                return "UserImages/";
            }
        }

        /// <summary>
        /// Return the recipe image
        /// </summary>
        public static string GetImage(string FileName)
        {
            if (!string.IsNullOrEmpty(FileName))
            {
                FileName = "UserImages/" + FileName;
            }
            else
            {
                FileName = "UserImages/nophotoavailable.gif";
            }

            return FileName;
        }

        /// <summary>
        /// Returns user image path.
        /// </summary>
        public static string ImagePathForUserPhotoForAdmin
        {
            get
            {
                return "../UserImages/";
            }
        }

        /// <summary>
        /// Return the recipe image
        /// </summary>
        public static string GetImageForAdmin(string FileName)
        {
            if (!string.IsNullOrEmpty(FileName))
            {
                FileName = "../UserImages/" + FileName;
            }
            else
            {
                FileName = "../UserImages/nophotoavailable.gif";
            }

            return FileName;
        }
    }
}
