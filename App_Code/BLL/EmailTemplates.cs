#region ExamCrazy Portal
// FileName: EmailTemplates.cs

// Date Created: 5/19/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Text;
using System.Diagnostics;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;

namespace EC.BL
{
    /// <summary>
    /// Object in this class generate the email template
    /// </summary>
    public class EmailTemplate : Email
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public EmailTemplate()
        {
        }

        private string GetAdminToEmail
        {
            get { return SiteConfiguration.GetConfiguration.AdminToEmail; }
        }

        private string GetAdminFromEmail
        {
            get { return SiteConfiguration.GetConfiguration.AdminFromEmail; }
        }

        /// <summary>
        /// Send exception error notification.
        /// </summary>
        public int SendExceptionErrorNotification(string strURL, string ExceptionError)
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = "XD Recipe Exception Error Notification";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi Webmaster:");
            mySB.Append("<br><br>");
            mySB.Append("This error has been logged to the database.");
            mySB.Append("<br><br>");
            mySB.Append("<b>Exception:</b>");
            mySB.Append("<br>");
            mySB.Append(ExceptionError);
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(GetAdminToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send comment posting email notification to the Webmaster
        /// </summary>
        public int SendEmailRecipeCommentNotify()
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl + "recipedetail.aspx?id=" + ItemID;

            string Subject = "Recipe Comment Posting";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi Administrator:");
            mySB.Append("<br><br>");
            mySB.Append("Someone has posted a recipe comment. Click the link below to view the comment.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(ItemName);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(GetAdminToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send comment posting email notification to the Webmaster
        /// </summary>
        public int SendEmailArticleCommentNotify()
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl + "articledetail.aspx?aid=" + ItemID;

            string Subject = "Article Comment Posting";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi Administrator:");
            mySB.Append("<br><br>");
            mySB.Append("Someone has posted an article comment. Click the link below to view the comment.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(ItemName);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(GetAdminToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send comment posting email notification to the Webmaster
        /// </summary>
        public int SendEmailAddRecipeNotify()
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = "Recipe Submission at " + constant.DomainName;

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi Webmaster:");
            mySB.Append("<br><br>");
            mySB.Append("Someone submitted a recipe.");
            mySB.Append("<br>");
            mySB.Append("Recipe Name:");
            mySB.Append("&nbsp;");
            mySB.Append(ItemName);
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(GetAdminToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send email recipe to a friend
        /// </summary>
        public int SendEmailRecipeToAFriend()
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = SenderName + " Has Sent You A Good Recipe";

            string strURL = BaseUrl.GetBaseUrl + "recipedetail.aspx?id=" + ItemID;

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hello ");
            mySB.Append(RecipientName);
            mySB.Append(":");
            mySB.Append("<br><br>");
            mySB.Append(SenderName);
            mySB.Append(",&nbsp;");
            mySB.Append("has sent you a good ");
            mySB.Append(ItemName);
            mySB.Append("&nbsp;");
            mySB.Append(Category);
            mySB.Append("&nbsp;recipe.");
            mySB.Append("<br><br>");
            mySB.Append("Click the link below or copy it into your browser URL to view the recipe.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("<br><br><br>");
            mySB.Append("This email was sent to you by ");
            mySB.Append(SenderName);
            mySB.Append("&nbsp;");
            mySB.Append(SenderEmail);
            mySB.Append("&nbsp;<br>through share a friend recipe form at ");
            mySB.Append(constant.DomainName);
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(RecipientEmail, SenderEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send email article to a friend
        /// </summary>
        public int SendEmailArticleToAFriend()
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = SenderName + " Has Sent You A Good Cooking Article";

            string strURL = BaseUrl.GetBaseUrl + "articledetail.aspx?aid=" + ItemID;

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hello");
            mySB.Append("&nbsp;");
            mySB.Append(RecipientName);
            mySB.Append(":");
            mySB.Append("<br><br>");
            mySB.Append(SenderName);
            mySB.Append(",&nbsp;");
            mySB.Append("has sent you a good cooking article.");
            mySB.Append("<br><br><b>Article Title:</b> ");
            mySB.Append(ItemName);
            mySB.Append("<br><br>");
            mySB.Append("Click the link below or copy it into your browser URL to read the article.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("<br><br><br>");
            mySB.Append("This email was sent to you by ");
            mySB.Append(SenderName);
            mySB.Append("&nbsp;");
            mySB.Append(SenderEmail);
            mySB.Append("&nbsp;<br>through share a friend recipe form at ");
            mySB.Append(constant.DomainName);
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(RecipientEmail, SenderEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Email new account activation link
        /// </summary>
        public int SendActivationLink(string Username, string strGUID)
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl + "activation.aspx?guid=" + strGUID;

            string Subject = constant.DomainName + " New Account Activation Link";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi ");
            mySB.Append(Username + ":");
            mySB.Append("<br><br>");
            mySB.Append("You register a new account at ");
            mySB.Append(constant.DomainName);
            mySB.Append("<br>");
            mySB.Append("Please click on the link below to activate your new account.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<b>");
            mySB.Append("Activation Link: ");
            mySB.Append("</b>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(RecipientEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }


        /// <summary>
        /// Email a suspension notification
        /// </summary>
        public int SendAccountSuspensionReinstateEmail(string ToEmail, string Username, string Type, int flag)
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = "";
            string Subject = "";

            //flag = 1 - Suspension email notice
            if (flag == 1)
            {
                strURL = BaseUrl.GetBaseUrl + "contactus.aspx";

                Subject = constant.DomainName + " Account Suspension Notice";

                mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left>");
                mySB.Append("<font size=2 color=black face=verdana>");
                mySB.Append("Hi ");
                mySB.Append(Username + ":");
                mySB.Append("<br><br>");
                mySB.Append("Your account at ");
                mySB.Append(constant.DomainName);
                mySB.Append(" has been suspended.");
                mySB.Append("<br><br>");
                mySB.Append("<b>Reason:</b> ");
                mySB.Append(Type);
                mySB.Append("<br><br>");
                mySB.Append("Please click on the link below to contact the site Administrator to reinstate your account.");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left><br>");
                mySB.Append("<font size=2 face=verdana>");
                mySB.Append("<b>");
                mySB.Append("Contact Link: ");
                mySB.Append("</b>");
                mySB.Append("<a target=_new href=");
                mySB.Append(strURL);
                mySB.Append(">");
                mySB.Append(strURL);
                mySB.Append("</a>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("</table>");
            }

            //flag = 2 - Account reinstate email notice.
            if (flag == 2)
            {
                strURL = BaseUrl.GetBaseUrl;

                Subject = constant.DomainName + " Account Reinstate Notice";

                mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left>");
                mySB.Append("<font size=2 color=black face=verdana>");
                mySB.Append("Hi ");
                mySB.Append(Username + ":");
                mySB.Append("<br><br>");
                mySB.Append("Your account at ");
                mySB.Append(constant.DomainName);
                mySB.Append(" had been resinstated.");
                mySB.Append("<br><br>");
                mySB.Append("Click on the link below to login.");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left><br>");
                mySB.Append("<font size=2 face=verdana>");
                mySB.Append("<a target=_new href=");
                mySB.Append(strURL);
                mySB.Append(">");
                mySB.Append(strURL);
                mySB.Append("</a>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("</table>");
            }

            int Err = EmailHelper.SendEmail(ToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Email notification to the user
        /// </summary>
        public int SendDeleteAccountNotification(string ToEmail, string Username, string Reason)
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = constant.DomainName + " Account Removal Notice";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi ");
            mySB.Append(Username + ":");
            mySB.Append("<br><br>");
            mySB.Append("Your account at ");
            mySB.Append(constant.DomainName);
            mySB.Append(" has been deleted.");
            mySB.Append("<br><br>");
            mySB.Append("<b>Reason:</b> ");
            mySB.Append(Reason);
            mySB.Append("<br><br>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(ToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Send email article to a friend
        /// </summary>
        public int SendEmailPrivateMessageAlert(string FromUserName, string ToUserName, string ToEmailAddress, string PMSubject)
        {
            StringBuilder mySB = new StringBuilder("");

            string Subject = constant.DomainName + " Private Message Notification";

            string strURL = BaseUrl.GetBaseUrl + "pmview.aspx";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hello");
            mySB.Append("&nbsp;");
            mySB.Append(ToUserName);
            mySB.Append(":");
            mySB.Append("<br><br>");
            mySB.Append(FromUserName);
            mySB.Append("&nbsp;");
            mySB.Append("sent you a private message.");
            mySB.Append("<br><br><b>Subject:</b>");
            mySB.Append("&nbsp;");
            mySB.Append(PMSubject);
            mySB.Append("<br><br>");
            mySB.Append("Click the link below or copy it into your browser URL to go to your inbox and read the PM.");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("<br><br>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(ToEmailAddress, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Email new account activation link
        /// </summary>
        public int SendPassword(string ToEmail, string ToName, string Username, string Password)
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl;

            string Subject = constant.DomainName + " - Password Request";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi ");
            mySB.Append(ToName);
            mySB.Append(":");
            mySB.Append("<br><br>");
            mySB.Append("You have received this email because you (or someone else) have asked to be reminded of your Password for ");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(constant.DomainName);
            mySB.Append("</a>");
            mySB.Append("<br><br>");
            mySB.Append("Your username is: ");
            mySB.Append(Username);
            mySB.Append("<br>");
            mySB.Append("Your password is: ");
            mySB.Append(Password);
            mySB.Append("<br>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("Click this link login. ");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(ToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Add a friend email notification
        /// </summary>
        public int AddAFriendEmailNotification(string ToEmail, string ToUserName, string FromUsername)
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl + "myfriendslist.aspx";

            string Subject = constant.DomainName + " - Add a Friend Notification";

            mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left>");
            mySB.Append("<font size=2 color=black face=verdana>");
            mySB.Append("Hi ");
            mySB.Append(ToUserName);
            mySB.Append(":");
            mySB.Append("<br><br>");
            mySB.Append(FromUsername);
            mySB.Append(", ");
            mySB.Append("add you as friend and waiting for your approval. Please click the link below to approve or decline the request.");
            mySB.Append("<br>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("<tr>");
            mySB.Append("<td align=left><br>");
            mySB.Append("<font size=2 face=verdana>");
            mySB.Append("<a target=_new href=");
            mySB.Append(strURL);
            mySB.Append(">");
            mySB.Append(strURL);
            mySB.Append("</a>");
            mySB.Append("</font>");
            mySB.Append("</td></tr>");
            mySB.Append("</table>");

            int Err = EmailHelper.SendEmail(ToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }

        /// <summary>
        /// Declined add friend email notification
        /// </summary>
        public int ApprovedOrDeclineAddAFriendEmailNotification(string ToEmail, string ToUserName, string FromUsername, bool IsApproved)
        {
            StringBuilder mySB = new StringBuilder("");

            string strURL = BaseUrl.GetBaseUrl + "myfriendslist.aspx";

            string Subject = "";

            if (IsApproved)
            {
                Subject = constant.DomainName + " - Approved Add a Friend Notification";

                mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left>");
                mySB.Append("<font size=2 color=black face=verdana>");
                mySB.Append("Hi ");
                mySB.Append(ToUserName);
                mySB.Append(":");
                mySB.Append("<br><br>");
                mySB.Append(FromUsername);
                mySB.Append(", ");
                mySB.Append("has approved your request to add as a friend. Please click the link below to access your Friends List.");
                mySB.Append("<br>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left><br>");
                mySB.Append("<font size=2 face=verdana>");
                mySB.Append("<a target=_new href=");
                mySB.Append(strURL);
                mySB.Append(">");
                mySB.Append(strURL);
                mySB.Append("</a>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("</table>");
            }
            else
            {
                Subject = constant.DomainName + " - Declined Add a Friend Notification";

                mySB.Append("<table cellpadding=0 cellspacing=0 width=800 align=left>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left>");
                mySB.Append("<font size=2 color=black face=verdana>");
                mySB.Append("Hi ");
                mySB.Append(ToUserName);
                mySB.Append(":");
                mySB.Append("<br><br>");
                mySB.Append(FromUsername);
                mySB.Append(", ");
                mySB.Append("has declined your request to add as a friend. Please click the link below to access your Friends List.");
                mySB.Append("<br>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("<tr>");
                mySB.Append("<td align=left><br>");
                mySB.Append("<font size=2 face=verdana>");
                mySB.Append("<a target=_new href=");
                mySB.Append(strURL);
                mySB.Append(">");
                mySB.Append(strURL);
                mySB.Append("</a>");
                mySB.Append("</font>");
                mySB.Append("</td></tr>");
                mySB.Append("</table>");
            }

            int Err = EmailHelper.SendEmail(ToEmail, GetAdminFromEmail, Subject, mySB.ToString());

            return Err;
        }
    }
}