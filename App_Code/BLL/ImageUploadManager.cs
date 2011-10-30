#region ExamCrazy Portal
// FileName: ImageUploadManager.cs


// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.IO;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace EC.BL
{
    /// <summary>
    /// Object in this class manages Image Upload.
    /// </summary>
    public static class ImageUploadManager
    {
        public static bool IsValidImageType(string ContentType, ref string Error)
        {
            if (!ContentType.Equals("image/gif") &&
                !ContentType.Equals("image/jpeg") &&
                !ContentType.Equals("image/jpg") &&
                !ContentType.Equals("image/x-png") &&
                !ContentType.Equals("image/png"))
                {
                    Error = "<br>File format is invalid. Only gif, jpg, jpeg or png files are allowed.";
                    return false;
            }
            return true;
        }

        public static int UploadImage(string ImageName, PlaceHolder Ph, string Directory, int MaxSize, string ImageControl)
        {
            FileUpload ImageUpload = (FileUpload)(Ph.FindControl(ImageControl));

            if (ImageUpload.HasFile) //Check if there is a file
            {
                //Constant variables
                int maxFileSize = MaxSize;

                int FileSize = ImageUpload.PostedFile.ContentLength; //Get the file length
                string contentType = ImageUpload.PostedFile.ContentType; // Get the file type
                string FileExist = Directory + ImageUpload.PostedFile.FileName; // Get the filename from the directory and compare
                string FileName = ImageName; //Use username as the image name. Username is unique so no problem with this.
                string FileExtention = Path.GetExtension(ImageUpload.PostedFile.FileName); //Get the posted file extension
                string FilePath;
                string FileNameWithExtension;

                //File type validation
                string Error = "";
                if(!IsValidImageType(contentType, ref Error))
                {
                    return 1;
                }
                // File size validation
                else if (FileSize > maxFileSize)
                {
                    return 1;
                }
                else
                {
                    //If the user updated the photo, just overwrite the old one.
                    //Get directory, the file name and the extension.
                    FilePath = string.Concat(Directory, FileName, "", FileExtention);

                    //Joined the filename and extension to insert into the database.
                    FileNameWithExtension = FileName + FileExtention;

                    try
                    {
                        //Save the recipe image to the specified directory
                        //Make sure the "RecipeImage" folder has write permission to upload image
                        ImageUpload.SaveAs(HttpContext.Current.Server.MapPath(FilePath));

                    }
                    catch
                    {
 
                    }
                }
            }
            else
            {
                //If there is no image to be uploaded, then assign an empty string to the property
                return 0;
            }

            return 0;

        }
    }
}
