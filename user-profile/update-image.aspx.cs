using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace ExamCrazy.user_profile
{
    public partial class update_image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;

        }

        public void UpdateImage(object s, EventArgs e)
        {
            UserRepository User = new UserRepository();
            if (!UserImageFileUpload.HasFile)
            {
                JavaScript.Alert("Error: Image not provided");
                JSLiteral.Text = "Error: Image uploadation failed";
            }
            else
            {
                int FileSize = UserImageFileUpload.PostedFile.ContentLength;
                string contentType = UserImageFileUpload.PostedFile.ContentType;
                User.UserName = UserIdentity.UserName;
                User.Photo = User.UserName + Path.GetExtension(UserImageFileUpload.PostedFile.FileName);

                //File type validation
                string Error = "";
                if (!ImageUploadManager.IsValidImageType(contentType, ref Error))
                {
                    lbvalenght.Text = Error;
                    lbvalenght.Visible = true;
                    return;
                }
                // File size validation
                if (FileSize > constant.UserImageMaxSize)
                {
                    lbvalenght.Text = "<br>File size exceed the maximun allowed 60000 bytes";
                    lbvalenght.Visible = true;
                    return;

                }
            }
            if (ImageUploadManager.UploadImage(UserIdentity.UserName, PlaceHolder1, GetUserImage.ImagePathForUserPhoto, constant.UserImageMaxSize, "UserImageFileUpload") != 0)
            {
                JSLiteral.Text = "Error occured while uploading your image.";
                JavaScript.Alert("Error: Image Uploadation Failed");
                return;
            }

            if (Blogic.UpdateUserImage(UserIdentity.UserID, User.Photo) == 0)
            {
                JavaScript.Alert("Image Uploaded Successfully");
                Response.Redirect(ResolveUrl("~/User/" + UserIdentity.UserName));
            }
        }
    }
}