#region XD World Recipe V 2.8
// FileName: registration.cs

// Date Created: 2/14/2009
// Website: www.examcrazy.com
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
using System.IO;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

public partial class registration : BasePage
{
    private string securecode;
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.PAGEID = 1;
        Page.Header.DataBind();
        Page.Header.Title = "ExamCrazy.com New Registration page";
        HtmlMeta metaTag = new HtmlMeta();
        metaTag.Name = "Keywords";
        metaTag.Content = "ExamCrazy, Registration, Books, Online tests";
        this.Header.Controls.Add(metaTag);
        if (!Page.IsPostBack)
        {
            /*Countries Drop Down List Generation*/
            CountryRepository CntryList = new CountryRepository();
            ExtendedCollection<Country> LC = CntryList.GetCountryList();

            Country[] Countries = new Country[LC.Count];
            LC.CopyTo(Countries, 0);
            for (int i = 0; i < Countries.GetLength(0); i++)
            {
                Cntry.Items.Add(new ListItem(Countries[i].Name.ToString(), Countries[i].ID.ToString()));
            }

            /*City List - Sample Code*/
            CityRepository CityList = new CityRepository();
            ExtendedCollection<City> LCity = CityList.GetCityList(8);

            /*ExamCategory Repeater Bind */
            ExamCategoryRepository ECList = new ExamCategoryRepository();
            ExtendedCollection<ExamCategory> EC = ECList.GetECList();
            ExamCategory[] ECs = new ExamCategory[EC.Count];
            EC.CopyTo(ECs, 0);
            for (int i = 0; i < ECs.GetLength(0); i++)
            {
                ExamCategoryList.Items.Add(new ListItem(ECs[i].ExamName.ToString(), ECs[i].ECID.ToString()));
            }
            RadioButtonSex.Items.Add(new ListItem("Male", constant.MALE.ToString()));
            RadioButtonSex.Items.Add(new ListItem("Female", constant.FEMALE.ToString()));
        }
        HideFormIfLogin.Visible = true;
        if (Page.IsPostBack)
        {
            /*Handle case for error in registration form. Since State and City list are populated
             by client script, same status need to be managed again. So populate dropdown and mark if
             some selection was made by user*/
            int CountryID, StateID, CityID;
            securecode = HttpContext.Current.Session["randomstruserreg"].ToString();

            try
            {
                CountryID = Int16.Parse(Request.Form[Cntry.UniqueID]);
            }
            catch
            {
                CountryID = 0;
            }

            try
            {
                StateID = Int16.Parse(Request.Form[ddlstate.UniqueID]);
            }
            catch
            {
                StateID = 0;
            }

            try
            {
                CityID = Int16.Parse(Request.Form[ddlcity.UniqueID]);
            }
            catch
            {
                CityID = 0;
            }

            if(CountryID > 0)
            {
                /*State List - for the country selected before postback*/
                StateRepository StateList = new StateRepository();
                ExtendedCollection<State> LState = StateList.GetStateList(CountryID);
                State[] States = new State[LState.Count];
                LState.CopyTo(States, 0);

                ddlstate.ClearSelection();
                ddlstate.Items.Clear();
                ddlstate.Enabled = true;
                for (int i = 0; i < States.GetLength(0); i++)
                {
                    if (States[i].ID != StateID)
                        ddlstate.Items.Add(new ListItem(States[i].Name.ToString(), States[i].ID.ToString()));
                    else
                    {
                        ListItem l = new ListItem(States[i].Name.ToString(), States[i].ID.ToString());
                        l.Selected = true;
                        ddlstate.Items.Add(l);
                    }
                }

                if (StateID > 0)
                {
                    /*City List - For the state selected*/
                    CityRepository CityList = new CityRepository();
                    ExtendedCollection<City> LCity = CityList.GetCityList(StateID);
                    City[] Cities = new City[LCity.Count];
                    LCity.CopyTo(Cities, 0);

                    ddlcity.ClearSelection();
                    ddlcity.Items.Clear();
                    ddlcity.Enabled = true;
                    
                    for (int i = 0; i < Cities.GetLength(0); i++)
                    {
                        if (Cities[i].ID != CityID)
                            ddlcity.Items.Add(new ListItem(Cities[i].Name.ToString(), Cities[i].ID.ToString()));
                        else
                        {
                            ListItem l = new ListItem(Cities[i].Name.ToString(), Cities[i].ID.ToString());
                            l.Selected = true;
                            ddlcity.Items.Add(l);
                        }
                    }
                }
            }
        }

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
    /* Render function was written to override render function as state list is changed on client side
     * Control validation was failing due to this.
     * */
    /*
    protected override void Render(HtmlTextWriter writer)
    {
        StateRepository StateList = new StateRepository();
        if (Cntry.SelectedValue != "none")
        {
            int cntryid = Convert.ToInt32(Cntry.SelectedValue.ToString());
            //ExtendedCollection<State> LS = StateList.GetStateList(Int16.Parse(Request.Form[Cntry.UniqueID]));
            ExtendedCollection<State> LS = StateList.GetStateList(cntryid);
            State[] States = new State[LS.Count];
            LS.CopyTo(States, 0);
            ddlstate.Items.Clear();
            for (int i = 0; i < States.GetLength(0); i++)
            {
                Page.ClientScript.RegisterForEventValidation(ddlstate1.UniqueID, States[i].Name);

            }
        }
        base.Render(writer);
        
    }
    */

    /*This is not used because if selected index change event is handled for this
     * then it will require a page load. Ajax soultion is better.
     * */

 /*   protected void ddlCntry_SelectedIndexChanged(object sender, EventArgs e)
    {
        StateRepository StateList = new StateRepository();
        int cntryid = Convert.ToInt32(Cntry.SelectedValue);
        //ExtendedCollection<State> LS = StateList.GetStateList(Int16.Parse(Request.Form[Cntry.UniqueID]));
        ExtendedCollection<State> LS = StateList.GetStateList(cntryid);
        State[] States = new State[LS.Count];
        LS.CopyTo(States, 0);
        ddlstate.Items.Clear();
        for (int i = 0; i < States.GetLength(0); i++)
        {
            ddlstate.Items.Add(States[i].Name);
        }
    }*/

    public void Add_User(object s, EventArgs e)
    {
        Utility Util = new Utility();

        /*Page validation will fail because of change id list by client script
         This validation failure need to be corrected.
         To Do: A new class which will be derived from DropDownList and used for 
         State DropDownList need to be used. attribute for validation are not set.
         * This should be very simple implementation but was giving compilation error.
         * Below links detail it.
         * http://johanleino.wordpress.com/2009/11/17/cascadingdropdown-casues-invalid-postback-or-callback-argument-error/
         http://johanleino.wordpress.com/2011/04/09/revisedcascadingdropdown-casues-invalid-postback-or-callback-argument-error/
         * 
         */
        // if (Page.IsValid)
        if(Request.Form[txtsecfield.UniqueID].ToString() == this.securecode)
        {
            
            UserRepository User = new UserRepository();

            User.UserName = Util.FormatTextForInput(Request.Form[Username.UniqueID]);
            User.Password = Encryption.Encrypt(Util.FormatTextForInput(Request.Form[Password1.UniqueID]));
            User.Email1 = Util.FormatTextForInput(Request.Form[Email.UniqueID]);
            User.FirstName = Util.FormatTextForInput(Request.Form[Firstname.UniqueID]);
            User.LastName = Util.FormatTextForInput(Request.Form[Lastname.UniqueID]);
            User.Sex = Int32.Parse(Request.Form[RadioButtonSex.UniqueID]);
            try
            {
                User.CityID = Int16.Parse(Request.Form[ddlcity.UniqueID]);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: You must select a city.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            try
            {
                User.StateID = Int16.Parse(Request.Form[ddlstate.UniqueID]);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: You must select a state.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            try
            {
                User.CountryID = Int16.Parse(Request.Form[Cntry.UniqueID]);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: You must select a country.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            try
            {
                User.DOB = DateTime.Parse(Date1.CalendarDateString);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: Date Selected is wrong.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }
            if (Int32.Parse(Request.Form[Newsletter.UniqueID]) == 1)
            {
                User.canEmailSend = true;
            }
            else
                User.canEmailSend = false;

            User.ECPreference = "";
            for (int i = 0; i < ExamCategoryList.Items.Count; i++)
            {
                if (ExamCategoryList.Items[i].Selected)
                {
                    if (User.ECPreference.Length > 0)
                        User.ECPreference += ",";
                    User.ECPreference += ExamCategoryList.Items[i].Value;
                }
            }
            User.Mobile = Util.FormatTextForInput(Request.Form[Mobile.UniqueID]);
            User.Address = Util.FormatTextForInput(Request.Form[Address.UniqueID]);
            //User.ContactMe = Int32.Parse(Util.FormatTextForInput(Request.Form[ContactMe.UniqueID]));
            User.Website = Util.FormatTextForInput(Request.Form[Website.UniqueID]);
            User.AboutMe = Util.FormatTextForInput(Request.Form[AboutMe.UniqueID]);
            User.Photo = "";
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

            if (!Validator.IsValidUserName(User.UserName))
            {
                lbvalenght.Text = "<br>Error: Username must be at least 6 characters long and 15 characters maximun, and should only contain AlphaNumeric.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            //Let's decrypt the password for validation.
            if (!Validator.IsValidPassword(Encryption.Decrypt(User.Password)))
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

            if (User.Mobile.Length > 11 || User.Mobile.Length < 10)
            {
                lbvalenght.Text = "<br>Error: Mobile Number is not valid";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (User.CountryID == 0)
            {
                lbvalenght.Text = "<br>Error: You must select a country.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (User.StateID == 0)
            {
                lbvalenght.Text = "<br>Error: You must select a state.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            if (User.CityID == 0)
            {
                lbvalenght.Text = "<br>Error: You must select a city.";
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
            
            if (Request.Form[txtsecfield.UniqueID] != this.securecode)
            {
                lbvalenght.Text = "<br>Error: Security Code Does not Match.";
                lbvalenght.Visible = true;
                txtsecfield.Text = "";
                return;
            }

            #endregion

            if (UserImageFileUpload.HasFile)
            {
                int FileSize = UserImageFileUpload.PostedFile.ContentLength;
                string contentType = UserImageFileUpload.PostedFile.ContentType;
                User.Photo = User.UserName + Path.GetExtension(UserImageFileUpload.PostedFile.FileName);

                //File type validation
                string Error = "";
                if(!ImageUploadManager.IsValidImageType(contentType, ref Error))
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

            if (ImageUploadManager.UploadImage(User.UserName, PlaceHolder1, GetUserImage.ImagePathForUserPhoto, constant.UserImageMaxSize, "UserImageFileUpload") != 0)
            {
                JSLiteral.Text = "Error occured while uploading your image.";
                return;
            }

            if (User.Add(User) != 0)
            {
                JSLiteral.Text = "Error occured while processing your submit.";
                return;
            }

            //Create login session variable. During registration we never create login in cookies as we have not asked his permission
            CookieLoginHelper.CreateLoginSession(Util.FormatTextForInput(Request.Form[Username.UniqueID]), Util.FormatTextForInput(Request.Form[Password1.UniqueID]));

            EmailRepository SendEmail = new EmailRepository();
            SendEmail.ReadEmailTemplate("RegistrationEmail.xml");
            SendEmail.SendEmail(UserIdentity.UserEmail);

            string EmailVerificationLink;
            UserActivationLink EmailActivationLink = new UserActivationLink();
            EmailVerificationLink = EmailActivationLink.GenerateActivationLink();
            EmailVerificationLink = ResolveUrl(SiteConfiguration.EmailVerificationPage()) + EmailVerificationLink;
            SendEmail.ReadEmailTemplate("EmailVerification.xml");
            SendEmail.ReplaceString("$$EmailVerificationLink$$", EmailVerificationLink);
            SendEmail.SendEmail(UserIdentity.UserEmail);

            EmailActivationLink = null;
            SendEmail = null;
            User = null;

            Response.Redirect("/User/" + Util.FormatTextForInput(Request.Form[Username.UniqueID]));
        }
        else
        {
            
            JSLiteral.Text = Util.JSAlert("Invalid security code. Make sure you type it correctly.");
            
            lblinvalidsecode.Text = "Invalid security code. Make sure you type it correctly.";
            lblinvalidsecode.Visible = true;
             
        }

        Util = null;
    }

    
}
