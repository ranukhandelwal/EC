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

namespace ExamCrazy.user_profile
{
    public partial class update_profile : BaseLoggedInPage
    {
        ProviderUserDetails user = new ProviderUserDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Uname = UserIdentity.UserName;
            if (!IsPostBack)
            {
                user.FillUp(UserIdentity.UserID);
                lbluname.Text = UserIdentity.UserName;
                lblemail.Text = UserIdentity.UserEmail;
                lblfirstname.Text = user.FirstName;
                lbllastname.Text = user.LastName;
                /*Countries Drop Down List Generation*/
                CountryRepository CntryList = new CountryRepository();
                ExtendedCollection<Country> LC = CntryList.GetCountryList();

                Country[] Countries = new Country[LC.Count];
                LC.CopyTo(Countries, 0);
                Cntry.ClearSelection();
                for (int i = 0; i < Countries.GetLength(0); i++)
                {
                    if (user.CountryID != Countries[i].ID)
                    {
                        Cntry.Items.Add(new ListItem(Countries[i].Name.ToString(), Countries[i].ID.ToString()));
                    }
                    else
                    {
                        ListItem l = new ListItem(Countries[i].Name.ToString(), Countries[i].ID.ToString());
                        l.Selected = true;
                        Cntry.Items.Add(l);
                    }
                }

                /*State List */
                if (user.CountryID > 0)
                {
                    StateRepository StateList = new StateRepository();
                    ExtendedCollection<State> LState = StateList.GetStateList(user.CountryID);
                    State[] States = new State[LState.Count];
                    LState.CopyTo(States, 0);
                    ddlstate.ClearSelection();
                    for (int i = 0; i < States.GetLength(0); i++)
                    {
                        if (user.StateID != States[i].ID)
                        {
                            ddlstate.Items.Add(new ListItem(States[i].Name.ToString(), States[i].ID.ToString()));
                        }
                        else
                        {
                            ListItem l = new ListItem(States[i].Name.ToString(), States[i].ID.ToString());
                            l.Selected = true;
                            ddlstate.Items.Add(l);
                        }
                        ddlstate.Enabled = true;
                    }
                }

                /*City List */
                if (user.StateID > 0)
                {
                    CityRepository CityList = new CityRepository();
                    ExtendedCollection<City> LCity = CityList.GetCityList(user.StateID);
                    City[] Cities = new City[LCity.Count];
                    LCity.CopyTo(Cities, 0);
                    ddlcity.ClearSelection();
                    for (int i = 0; i < Cities.GetLength(0); i++)
                    {
                        if (user.CityID != Cities[i].ID)
                        {
                            ddlcity.Items.Add(new ListItem(Cities[i].Name.ToString(), Cities[i].ID.ToString()));
                        }
                        else
                        {
                            ListItem l = new ListItem(Cities[i].Name.ToString(), Cities[i].ID.ToString());
                            l.Selected = true;
                            ddlcity.Items.Add(l);
                        }
                        ddlcity.Enabled = true;
                    }
                }

                /*ExamCategory Repeater Bind */
                ExamCategoryRepository ECList = new ExamCategoryRepository();
                ExtendedCollection<ExamCategory> EC = ECList.GetECList();
                ExamCategory[] ECs = new ExamCategory[EC.Count];
                EC.CopyTo(ECs, 0);
                string[] temp = user.ECPreference.Split(',');
                for (int i = 0; i < ECs.GetLength(0); i++)
                {
                    ExamCategoryList.Items.Add(new ListItem(ECs[i].ExamName.ToString(), ECs[i].ECID.ToString()));
                    foreach (string ecid in temp)
                    {
                        int id = Int32.Parse(ecid);
                        if (id == ECs[i].ECID)
                        {
                            ExamCategoryList.Items[i].Selected = true;
                        }
                    }
                }

                Address.InnerText = user.Address;

                AboutMe.InnerText = user.AboutMe;

                Mobile.Value = user.Mobile;
                Website.Value = user.Website;
                RadioButtonSex.Items.Add(new ListItem("Male", constant.MALE.ToString()));
                RadioButtonSex.Items.Add(new ListItem("Female", constant.FEMALE.ToString()));
                RadioButtonSex.Items[user.Sex].Selected = true;
                if (user.canEmailSend)
                    Newsletter.Items[0].Selected = true;
                else
                    Newsletter.Items[1].Selected = true;
            }
            if (Page.IsPostBack)
            {
                /*Handle case for error in registration form. Since State and City list are populated
                 by client script, same status need to be managed again. So populate dropdown and mark if
                 some selection was made by user*/
                int CountryID, StateID, CityID;

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

                if (CountryID > 0)
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
        }
        public void Update_User(object s, EventArgs e)
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

            UserRepository User = new UserRepository();

            User.UID = UserIdentity.UserID;

            User.Sex = Int32.Parse(Request.Form[RadioButtonSex.UniqueID]);
            try
            {
                User.CityID = Int16.Parse(Request.Form[ddlcity.UniqueID]);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: You must select a city.";
                lbvalenght.Visible = true;
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
                return;
            }
            /*
            try
            {
                User.DOB = DateTime.Parse(Date1.CalendarDateString);
            }
            catch
            {
                lbvalenght.Text = "<br>Error: Date Selected is wrong.";
                lbvalenght.Visible = true;
                return;
            }*/
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
            if (User.Update(User) != 0)
            {
                JSLiteral.Text = "Error occured while processing your submit.";
                return;
            }
        }

        
    }
}