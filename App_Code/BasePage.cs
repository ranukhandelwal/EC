#region ExamCrazy Portal
// FileName: BasePage.cs

// Date Created: 2/14/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.BL;
using EC.Common;
using EC.Common.Utilities;

namespace EC.UI
{
    /// <summary>
    /// Base Page
    /// </summary>
    public class BasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        void Page_Error(object sender, EventArgs e)
        {
            //Get current URL
            string GetCurrentURL = Request.Url.ToString();

            //Get the Exception error
            string GetExceptionError = Server.GetLastError().ToString();

            //Log Exception Error
            Blogic.LogExceptionError(GetCurrentURL, GetExceptionError);

            //Instantiate email temple object
            /*
            EmailTemplate SendEmailNotification = new EmailTemplate();

            SendEmailNotification.SendExceptionErrorNotification(GetCurrentURL, GetExceptionError);

            SendEmailNotification = null;
            */
            //Redirect to the error page.
            Server.Transfer("Error/ExamCrazy-ErrorPage.aspx");
        }

        /// <summary>
        /// Format date to "Jan. 1, 2009"
        /// </summary>
        public string CustomDateFormat(object o)
        {
            string newdateformat = Utility.FormatDate(Convert.ToDateTime(o));
            return newdateformat;
        }

        /// <summary>
        /// Format Text
        /// </summary>
        public string FormatText(object o)
        {
            Utility Util = new Utility();

            string formattxt = Util.FormatText(Convert.ToString(o));
            Util = null;
            return formattxt;

            
        }
    }
}
