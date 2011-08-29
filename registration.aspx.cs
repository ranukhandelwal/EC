﻿#region XD World Recipe V 2.8
// FileName: registration.cs
// Author: Dexter Zafra
// Date Created: 2/14/2009
// Website: www.ex-designz.net
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;

public partial class registration : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Countries Drop Down List Generation*/
        CountryRepository CntryList = new CountryRepository();
        ExtendedCollection<Country> LC = CntryList.GetCountryList();
        
        Country[] Countries = new Country[LC.Count]; 
        LC.CopyTo(Countries,0);
        for (int i = 0; i < Countries.GetLength(0); i++)
        {
            Cntry.Items.Add(Countries[i].Name);
        }
               
        /*State List - Sample Code*/
        StateRepository StateList = new StateRepository();
        ExtendedCollection<State> LS = StateList.GetStateList(97);

        /*City List - Sample Code*/
        CityRepository CityList = new CityRepository();
        ExtendedCollection<City> LCity = CityList.GetCityList(8);

        /*ExamCategory Repeater Bind */
        ExamCategoryRepository ECList = new ExamCategoryRepository();
        ExamCategoryList.DataSource = ECList.GetECList();
        ExamCategoryList.DataBind();

        HideFormIfLogin.Visible = true;

        //Check whether user is login, if login, hide the registration form.
        //We don't want to allow users who are logon to register.
        //if they want to regsiter a new a count, they must logout first.
        if (Authentication.IsUserAuthenticated)
        {
            HideFormIfLogin.Visible = false;
            lblWarningMessage.Visible = true;
            lblWarningMessage.Text = "Sorry! You cannot register a new account when you are logon.<br>If you want to register for a new account, you must logout first.";
        }
    }

    public void Add_User(object s, EventArgs e)
    {
        Utility Util = new Utility();

        if (!Page.IsValid)
        {
            
            UserRepository User = new UserRepository();

            User.UserName = Util.FormatTextForInput(Request.Form[Username.UniqueID]);
            User.Password = Encryption.Encrypt(Util.FormatTextForInput(Request.Form[Password1.UniqueID]));
            User.Email1 = Util.FormatTextForInput(Request.Form[Email.UniqueID]);
            User.FirstName = Util.FormatTextForInput(Request.Form[Firstname.UniqueID]);
            User.LastName = Util.FormatTextForInput(Request.Form[Lastname.UniqueID]);
            User.CityID = Int16.Parse(Request.Form[City.UniqueID]);
            User.StateID = Int16.Parse(Request.Form[State.UniqueID]);
            //User.CountryID = Int16.Parse(Request.Form[Cntry.UniqueID]);
            //User.DOB = DateTime.Parse(Date1.CalendarDateString);
            //User.NewsLetter = Int32.Parse(Util.FormatTextForInput(Request.Form[Newsletter.UniqueID]));
            //User.ContactMe = Int32.Parse(Util.FormatTextForInput(Request.Form[ContactMe.UniqueID]));
            User.Website = Util.FormatTextForInput(Request.Form[Website.UniqueID]);
            User.AboutMe = Util.FormatTextForInput(Request.Form[AboutMe.UniqueID]);
            //User.GUID = Guid.NewGuid().ToString("N");

            //Prevent username and email duplication. Ensure that all username and email in the database are unique.
            //This initialize the value.
            UserNameAndEmailValidation.Param(User.UserName, User.Email1);

            #region Form Input Validation
            //Handles validation of username and email. This prevent duplication.
            if (!UserNameAndEmailValidation.IsValid)
            {
                lbvalenght.Text = UserNameAndEmailValidation.ErrMsg;
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (!Validator.IsAlphaNumericOnly(User.UserName))
            {
                lbvalenght.Text = "<br>Error: Username must be at least 6 characters long and 15 characters maximun, and should only contain AlphaNumeric.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            //Let's decrypt the password for validation.
            if (!Validator.IsAlphaNumericOnly(Encryption.Decrypt(User.Password)))
            {
                lbvalenght.Text = "<br>Error: Password must be at least 6 characters long and 12 characters maximun, and should only contain AlphaNumeric.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            //Let's decrypt the password for validation.
            if (Util.FormatTextForInput(Request.Form[Password1.UniqueID]) != Util.FormatTextForInput(Request.Form[Password2.UniqueID]))
            {
                lbvalenght.Text = "<br>Error: Password did not matach. Please re-enter a password and make sure they both match.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (!Validator.IsValidEmail(User.Email1))
            {
                lbvalenght.Text = "<br>Error: Invalid email address. Email address must be a valid format.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (!Validator.IsValidName(User.FirstName))
            {
                lbvalenght.Text = "<br>Error: Firstname should be alphabet and not contain illegal characters.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (!Validator.IsValidName(User.LastName))
            {
                lbvalenght.Text = "<br>Error: Firstname should be alphabet and not contain illegal characters.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            
            if (User.CountryID == null)
            {
                lbvalenght.Text = "<br>Error: You must select a country.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (User.AboutMe.Length > 500)
            {
                lbvalenght.Text = "<br>Error: About me text is too long. Maximum of 500 characters.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (User.Website.Length > 75)
            {
                lbvalenght.Text = "<br>Error: Website URL is too long. Maximum of 75 characters.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            #endregion

            if (UserImageFileUpload.HasFile)
            {
                int FileSize = UserImageFileUpload.PostedFile.ContentLength;
                string contentType = UserImageFileUpload.PostedFile.ContentType;

                //File type validation
                if (!contentType.Equals("image/gif") &&
                    !contentType.Equals("image/jpeg") &&
                    !contentType.Equals("image/jpg") &&
                    !contentType.Equals("image/png"))
                {
                    lbvalenght.Text = "<br>File format is invalid. Only gif, jpg, jpeg or png files are allowed.";
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

            //ImageUploadManager.UploadUserImage(User, PlaceHolder1, GetUserImage.ImagePathForUserPhoto, constant.UserImageMaxSize);

            if (User.Add(User) != 0)
            {
                JSLiteral.Text = "Error occured while processing your submit.";
                return;
            }

            //EmailAccountActivationLink(User);

            User = null;
            //Ajay
            //Response.Redirect("redirectionpage.aspx?email=" + Request.Form[Email.UniqueID]);
        }
        else
        {
            
            JSLiteral.Text = Util.JSAlert("Invalid security code. Make sure you type it correctly.");
            return;

            lblinvalidsecode.Text = "Invalid security code. Make sure you type it correctly.";
            lblinvalidsecode.Visible = true;
             
        }

        Util = null;
    }

    private void EmailAccountActivationLink(UserRepository User)
    {
        EmailTemplate SendeMail = new EmailTemplate();
        SendeMail.RecipientEmail = User.Email1;
        /*SendeMail.SendActivationLink(User.Username, User.GUID);*/
        SendeMail = null;
    }
}
