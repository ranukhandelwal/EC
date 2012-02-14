using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.BL;
using EC.Common;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;
using EC.Model;
//using EC.BL.Providers.PrivateMessages;
//using EC.BL.Providers.Events;

namespace ExamCrazy.AjaxRequest
{
    public partial class AjaxRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.Clear();

            if (!string.IsNullOrEmpty(Request.QueryString["mode"]))
            {
                string mode = Request.QueryString["mode"];

                switch (mode)
                {
                    case "checkusername":
                        CheckIfUserNameExists();
                        break;

                    case "checkemail":
                        CheckIfEmailExists();
                        break;

                    case "recoverpass":
                        RecoverLostPassword();
                        break;

                    case "getstates":
                        GetStateList();
                        break;

                    case "getcities":
                        GetCityList();
                        break;
                    /*
                case "markpmold":
                    MarkPrivateMessageAsOldMessage();
                    break;

                case "markpmoldIconImg":
                    MarkPMAsOldMessageOnImageIconClick();
                    break;

                case "movetotrash":
                    MovePrivateMessageToTrash();
                    break;

                case "movetoinbox":
                    MovePrivateMessageBackToInbox();
                    break;

                case "delcookbook":
                    DeleteUserRecipeInCookBook();
                    break;

                case "delfriend":
                    DeleteAFriend();
                    break;

                case "delinboxpm":
                    DeleteInBoxPM();
                    break;

                case "delsentpm":
                    DeleteSentPM();
                    break;

                case "emptytrash":
                    EmptyPMTrash();
                    break;

                case "pubeventdetails":
                    GetPublicEventDetails();
                    break;
                     * */
                }
            }

            Response.End();

        }

        private void CheckIfEmailExists()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["email"]) && Utility.IsQueryStringSecure(Request.QueryString["email"]))
            {
                string Email;
                Email = Request.QueryString["email"];

                if (Blogic.IsEmailExists(Email))
                {
                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='/images/takenuname.gif'> " + Email + " is already in used.</span>");
                }
                else
                {
                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='/images/availuname.gif'> " + Email + " is OK.</span>");
                }
            }
            else
            {
                Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Invalid email format.</span>");
            }
        }

        private void CheckIfUserNameExists()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["uname"]) && Utility.IsQueryStringSecure(Request.QueryString["uname"]))
            {
                string Username;
                Username = Request.QueryString["uname"];

                if (Blogic.IsUsernameAvailable(Username))
                {
                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/availuname.gif'> " + Username + " is available.</span>");
                }
                else
                {
                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> " + Username + " is not available.</span>");
                }
            }
            else
            {
                Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Invalid username format.</span>");
            }
        }

        private void RecoverLostPassword()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["email"]) && Utility.IsQueryStringSecure(Request.QueryString["email"]))
            {
                string Email;
                Email = Request.QueryString["email"];

                if (Blogic.IsEmailExists(Email))
                {
                    /*EmailTemplate SendCredential = new EmailTemplate();

                    lostpassword.GetUserCredential(Email);

                    SendCredential.SendPassword(Email, lostpassword.GetFirstname, lostpassword.GetUserName, Encryption.Decrypt(lostpassword.GetUserPass));

                    SendCredential = null;*/

                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 6px;'><img src='images/takenuname.gif'> Your login credential has been sent to " + Email + ".</span>");
                }
                else
                {
                    Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 6px;'><img src='images/takenuname.gif'> There is no user with this email " + Email + ".</span>");
                }
            }
            else
            {
                Response.Write("<span class='content12' style='border: solid 1px #800000; padding: 3px;'>Invalid email format.</span>");
            }
        }

        private void GetStateList()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["cntry"]) && Utility.IsQueryStringSecure(Request.QueryString["cntry"]))
            {
                string Cntry;
                Cntry = Request.QueryString["cntry"];

                StateRepository StateList = new StateRepository();
                int cntryid = Convert.ToInt32(Cntry);
                ExtendedCollection<State> LS = StateList.GetStateList(cntryid);
                State[] States = new State[LS.Count];
                LS.CopyTo(States, 0);
                string states = "";
                for (int i = 0; i < States.GetLength(0); i++)
                {
                    if (i != 0)
                        states += "|";
                    states += States[i].ID.ToString() + "," + States[i].Name.ToString();
                }
                Response.Write(states);
                
            }
                
        }

        private void GetCityList()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["state"]) && Utility.IsQueryStringSecure(Request.QueryString["state"]))
            {
                string State;
                State = Request.QueryString["state"];

                CityRepository CityList = new CityRepository();
                int stateid = Convert.ToInt32(State);
                ExtendedCollection<City> LC = CityList.GetCityList(stateid);
                City[] Cities = new City[LC.Count];
                LC.CopyTo(Cities, 0);
                string cities = "";
                for (int i = 0; i < Cities.GetLength(0); i++)
                {
                    if (i != 0)
                        cities += "|";
                    cities += Cities[i].ID.ToString() + "," + Cities[i].Name.ToString();
                }
                Response.Write(cities);

            }

        }
        /*
            private void MarkPrivateMessageAsOldMessage()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["pmid"]))
                    {
                        Blogic.ActionProcedureDataProvider.MarkPMasOldMsgViaAjax(int.Parse(Request.QueryString["pmid"]), UserIdentity.UserID);

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void MarkPMAsOldMessageOnImageIconClick()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && !string.IsNullOrEmpty(Request.QueryString["uid"]) && !string.IsNullOrEmpty(Request.QueryString["val"]))
                    {
                        if (Utility.IsNumeric(Request.QueryString["uid"]) && Utility.IsNumeric(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["val"]))
                        {
                            Blogic.MarkMessageUnreadOrRead(int.Parse(Request.QueryString["uid"]), int.Parse(Request.QueryString["pmid"]), int.Parse(Request.QueryString["val"]));
                        }

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void MovePrivateMessageToTrash()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["pmid"]))
                    {
                        Blogic.MovePMToTrash(UserIdentity.UserID, int.Parse(Request.QueryString["pmid"]));

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void MovePrivateMessageBackToInbox()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["pmid"]))
                    {
                        Blogic.MovePMBackToInbox(UserIdentity.UserID, int.Parse(Request.QueryString["pmid"]));

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void DeleteInBoxPM()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["pmid"]))
                    {
                        PrivateMessageRepository Message = new PrivateMessageRepository();
                        Message.RecipientUserID = UserIdentity.UserID;
                        Message.ID = int.Parse(Request.QueryString["pmid"]);

                        Message.Delete(Message);

                        Message = null;

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void DeleteSentPM()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["pmid"]) && Utility.IsNumeric(Request.QueryString["pmid"]))
                    {
                        PrivateMessageRepository SentMessage = new PrivateMessageRepository();
                        SentMessage.SenderUserID = UserIdentity.UserID;
                        SentMessage.ID = int.Parse(Request.QueryString["pmid"]);

                        SentMessage.DeleteSentPM(SentMessage);

                        SentMessage = null;

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void EmptyPMTrash()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    Blogic.DeleteAllPMInTrash(UserIdentity.UserID);

                    Response.Write(" ");
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void DeleteUserRecipeInCookBook()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["rid"]) && Utility.IsNumeric(Request.QueryString["rid"]))
                    {
                        Blogic.DeleteIndividualRecipeInCookBook(UserIdentity.UserID, int.Parse(Request.QueryString["rid"]));

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void DeleteAFriend()
            {
                if (Authentication.IsUserAuthenticated)
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["fid"]) && Utility.IsNumeric(Request.QueryString["fid"]))
                    {
                        Blogic.DeleteFriend(UserIdentity.UserID, int.Parse(Request.QueryString["fid"]));

                        Response.Write(" ");
                    }
                }
                else
                {
                    Response.Write("Not Authorized.");
                }
            }

            private void GetPublicEventDetails()
            {
                if (!string.IsNullOrEmpty(Request.QueryString["id"]) && Utility.IsNumeric(Request.QueryString["id"]))
                {
                    int ID = int.Parse(Request.QueryString["id"]);

                    ProviderGetPublicEventDetail PubEventDetail = new ProviderGetPublicEventDetail();
                    PubEventDetail.FillUp(ID);

                    int NumDaysDiff = Utility.DateDiff(PubEventDetail.StartDate, PubEventDetail.EndDate);

                    StringBuilder mySB = new StringBuilder();

                    if (NumDaysDiff > 1)
                    {
                        mySB.Append("<div style='padding: 4px; background-color: #88B5FF;'>");
                        mySB.Append("<span style='font-size: 14px; color: #fff;'>");
                        mySB.Append("<b>");
                        mySB.Append(Utility.GetDayNameAbbrev(PubEventDetail.StartDate.DayOfWeek.ToString()));
                        mySB.Append(", " + Utility.GetMonthNameOrAbbrev(int.Parse(PubEventDetail.StartDate.Month.ToString()), true));
                        mySB.Append(" " + int.Parse(PubEventDetail.StartDate.Day.ToString()));
                        mySB.Append(" - " + Utility.GetDayNameAbbrev(PubEventDetail.EndDate.DayOfWeek.ToString()));
                        mySB.Append(", " + Utility.GetMonthNameOrAbbrev(int.Parse(PubEventDetail.EndDate.Month.ToString()), true));
                        mySB.Append(" " + int.Parse(PubEventDetail.EndDate.Day.ToString()));
                        mySB.Append("</b>");
                        mySB.Append("</span>");
                        mySB.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("<a title='close' href='javascript: closeEvent()' style='color: #fff;'>");
                        mySB.Append("Close");
                        mySB.Append("</a>");
                        mySB.Append("</div>");
                    }
                    else
                    {
                        mySB.Append("<div style='padding: 4px; background-color: #88B5FF;'>");
                        mySB.Append("<span style='font-size: 14px; color: #fff;'>");
                        mySB.Append("<b>");
                        mySB.Append(Utility.GetDayNameAbbrev(PubEventDetail.StartDate.DayOfWeek.ToString()));
                        mySB.Append(", " + Utility.GetMonthNameOrAbbrev(int.Parse(PubEventDetail.StartDate.Month.ToString()), true));
                        mySB.Append(" " + int.Parse(PubEventDetail.StartDate.Day.ToString()));
                        mySB.Append("</b>");
                        mySB.Append("</span>");
                        mySB.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("<a title='close' href='javascript: closeEvent()' style='color: #fff;'>");
                        mySB.Append("Close");
                        mySB.Append("</a>");
                        mySB.Append("</div>");
                    }

                    mySB.Append("<div style='clear:both;'></div>");
                    mySB.Append("<div style='margin: 6px; line-height: 17px;''>");
                    mySB.Append("<span style='font-size: 16px;'>");
                    mySB.Append("<b>" + PubEventDetail.EventTitle + "</b>");
                    mySB.Append("</span><br>");
                    mySB.Append("<b>Type:</b>&nbsp;");
                    mySB.Append(PubEventDetail.EventType);

                    if (PubEventDetail.EventType == "Appointment" || PubEventDetail.EventType == "Meeting")
                    {
                        mySB.Append("<br>");
                        mySB.Append("<b>Time:</b>&nbsp;");
                        mySB.Append(PubEventDetail.AppMeetingStartTime);
                        mySB.Append(" - ");
                        mySB.Append(PubEventDetail.AppMeetingEndTime);
                    }

                    mySB.Append("</div>");
                    mySB.Append("<div style='margin: 6px'>");
                    mySB.Append(PubEventDetail.EventDetails.ToString());
                    mySB.Append("<br><br>");
                    mySB.Append("<b>By:</b>&nbsp;");
                    mySB.Append("<a title='View profile' style='color: #007AF4;' href=userprofile.aspx?uid=" + PubEventDetail.UID + ">" + PubEventDetail.UserName + "</a>");
                    mySB.Append("</div>");

                    if (Authentication.IsUserAuthenticated && (PubEventDetail.UID == UserIdentity.UserID))
                    {
                        mySB.Append("<div style='margin: 8px; text-align: left;'>");
                        mySB.Append("<a title='Edit my event' href='editevent.aspx' style='color: #007AF4;'>");
                        mySB.Append("Edit");
                        mySB.Append("</a>&nbsp;&nbsp;&nbsp;&nbsp;");
                        mySB.Append("<a title='Delete my event' href='deleteevent.aspx' style='color: #007AF4;'>");
                        mySB.Append("Delete");
                        mySB.Append("</a>");
                        mySB.Append("</div");
                    }

                    mySB.Append("<div style='margin: 8px; text-align: left;'>");
                    mySB.Append("<a title='close' href='javascript: closeEvent()' style='font-size: 10px; color: #007AF4;'>");
                    mySB.Append("Close");
                    mySB.Append("</a>");
                    mySB.Append("</div");

                    Response.Write(mySB);

                    mySB = null;
                    PubEventDetail = null;
                }
            }
        */
    }
}
