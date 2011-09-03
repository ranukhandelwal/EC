#region ExamCrazy Portal
// FileName: Utility.cs

// Date Created: 5/19/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Globalization;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Text.RegularExpressions;
using EC.BL;
using EC.Common;
using EC.Common.Utilities;

namespace EC.Common.Utilities
{
    /// <summary>
    /// Object in this class manages utility function
    /// </summary>
    public class Utility
    {

        #region Date Calculation and Formatting.
        /// <summary>
        /// Converts the given month number to month name or abbrevation
        /// </summary>
        public static string GetMonthNameOrAbbrev(int month, bool abbrev)
        {
            DateTime date = new DateTime(1900, month, 1);
            if (abbrev) return date.ToString("MMM");
            return date.ToString("MMMM");
        }

        /// <summary>
        /// Format date to "Jan. 1, 2009"
        /// </summary>
        public static string FormatDate(DateTime date)
        {
            string newdateformat = date.ToString("MMM") + ". " + date.Day + ", " + date.Year;
            return newdateformat;
        }

        /// <summary>
        /// Returns number of days diff between 2 given days.
        /// </summary>
        public static int DateDiff(DateTime StartDate, DateTime EndDate)
        {
            int NumDaysDiff;
            TimeSpan ts = EndDate.Subtract(StartDate);
            NumDaysDiff = ts.Days;
            return NumDaysDiff;
        }

        /// <summary>
        /// Returns the week number in a year.
        /// </summary>
        public static int GetWeekNumber(DateTime sdate)
        {
            CultureInfo ciCurr = CultureInfo.CurrentCulture;
            int weekNum = ciCurr.Calendar.GetWeekOfYear(sdate, CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday);
            return weekNum;
        }

        /// <summary>
        /// Returns start date of the given week number and year.
        /// </summary>
        public static DateTime GetWeekStartDate(int year, int weeknumber)
        {
            DateTime dt = new DateTime(year, 1, 1).AddDays((weeknumber - 1) * 7);

            while (dt.DayOfWeek != CultureInfo.CurrentCulture.DateTimeFormat.FirstDayOfWeek)
                dt = dt.AddDays(-1);

            return dt;
        }

        /// <summary>
        /// Returns end date of the given week number and year.
        /// </summary>
        public static DateTime GetWeekEndDate(int year, int weeknumber)
        {
            DateTime dt = new DateTime(year, 1, 1).AddDays((weeknumber - 1) * 7);

            while (dt.DayOfWeek != CultureInfo.CurrentCulture.DateTimeFormat.FirstDayOfWeek)
                dt = dt.AddDays(-1);

            return dt.AddDays(6);
        }

        /// <summary>
        /// Returns the DayOfWeek/Day name of the given date.
        /// </summary>
        public static string WeekDayName(DateTime date)
        {
            return date.DayOfWeek.ToString();
        }

        /// <summary>
        /// Converts the given dayoftheweek name to abbrevation.
        /// </summary>
        public static string GetDayNameAbbrev(string DayName)
        {
            string daynameabbrev = "";

            switch (DayName)
            {
                case "Sunday":
                    daynameabbrev = "Sun";
                    break;
                case "Monday":
                    daynameabbrev = "Mon";
                    break;
                case "Tuesday":
                    daynameabbrev = "Tue";
                    break;
                case "Wednesday":
                    daynameabbrev = "Wed";
                    break;
                case "Thursday":
                    daynameabbrev = "Thu";
                    break;
                case "Friday":
                    daynameabbrev = "Fri";
                    break;
                case "Saturday":
                    daynameabbrev = "Sat";
                    break;
            }

            return daynameabbrev;
        }

        /// <summary>
        /// Converts the given month number to month name.
        /// </summary>
        public static string GetMonthName(int Month)
        {
            string monthname = "";

            switch (Month)
            {
                case 1:
                    monthname = "January";
                    break;
                case 2:
                    monthname = "Febuary";
                    break;
                case 3:
                    monthname = "March";
                    break;
                case 4:
                    monthname = "April";
                    break;
                case 5:
                    monthname = "May";
                    break;
                case 6:
                    monthname = "June";
                    break;
                case 7:
                    monthname = "July";
                    break;
                case 8:
                    monthname = "August";
                    break;
                case 9:
                    monthname = "September";
                    break;
                case 10:
                    monthname = "October";
                    break;
                case 11:
                    monthname = "November";
                    break;
                case 12:
                    monthname = "December";
                    break;

            }

            return monthname;
        }
        #endregion

        #region Display Switcher
        /// <summary>
        /// Returns preferred layout querystring value
        /// </summary>
        public static int PreferredLayout(int pLayout)
        {
            int prefLayout;

            if (pLayout == null)
            {
                prefLayout = 1;
            }
            else
            {
                prefLayout = pLayout;
            }
            if (pLayout > 3)
            {
                prefLayout = 1;
            }
            else if (pLayout == 0)
            {
                prefLayout = 1;
            }

            return prefLayout;
        }

        /// <summary>
        /// Returns default selected text to preferred layout dropdown menu
        /// </summary>
        public static string PreferredLayoutSelectedValue(int pLayout)
        {
            string prefLayoutSelectedValue = "Choose Display";

            if (pLayout == 1)
            {
                prefLayoutSelectedValue = "Rows";
            }
            else if (pLayout == 2)
            {
                prefLayoutSelectedValue = "Grid 2 Columns";
            }
            else if (pLayout == 3)
            {
                prefLayoutSelectedValue = "Grid 3 Columns";
            }
            else if (pLayout > 3)
            {
                prefLayoutSelectedValue = "Rows";
            }

            return prefLayoutSelectedValue;
        }
        #endregion

        #region Custom Page Redirect
        /// <summary>
        /// Handles page redirection
        /// </summary>
        public void PageRedirect(int RedirectTo)
        {
            switch (RedirectTo)
            {
                case 1:
                    HttpContext.Current.Response.Redirect("pagenotfound.aspx");
                    break;
                case 2:
                    HttpContext.Current.Response.Redirect("error.aspx");
                    break;
                case 3:
                    HttpContext.Current.Response.Redirect("submitconfirm.aspx");
                    break;
                case 4:
                    HttpContext.Current.Response.Redirect("commentpostconfirmation.aspx");
                    break;
                case 5:
                    HttpContext.Current.Response.Redirect("recipemanager.aspx");
                    break;
                case 6:
                    HttpContext.Current.Response.Redirect("adminlogin.aspx");
                    break;
                case 7:
                    HttpContext.Current.Response.Redirect("confirmarticleupdate.aspx");
                    break;
                case 8:
                    HttpContext.Current.Response.Redirect("rerecipeapprovalconfirmation.aspx");
                    break;
                case 9:
                    HttpContext.Current.Response.Redirect("confirmarticlesubmission.aspx");
                    break;
                case 10:
                    HttpContext.Current.Response.Redirect("keywordtooshort.aspx");
                    break;
            }
        }
        #endregion

        #region Display New and Popular Image
        /// <summary>
        /// Return whether an item is new or popular and display its associated image or text in a repeater.
        /// </summary>
        public static void GetIdentifyItemNewPopular(DateTime strDate, RepeaterItemEventArgs e, int Popular)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Find control
                Label PopularLabel = (Label)(e.Item.FindControl("lblpopular"));
                Image thumbsupimg = (Image)(e.Item.FindControl("thumbsup"));
                Image Newimage = (Image)(e.Item.FindControl("newimg"));

                //Get thumbs up image - indicate that the item is hot or popular.
                ShowPopularImage(Popular, PopularLabel, thumbsupimg);

                //Get new image if item is less than or equal to 7 days old
                ShowNewImage(DateTime.Now.Subtract(strDate), Newimage);
            }
        }

        /// <summary>
        /// Return whether an item is new or popular and display its associated image or text in a datalist.
        /// </summary>
        public static void GetIdentifyItemNewPopular(DateTime strDate, DataListItemEventArgs e, int Popular)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Find control
                Label PopularLabel = (Label)(e.Item.FindControl("lblpopular"));
                Image thumbsupimg = (Image)(e.Item.FindControl("thumbsup"));
                Image Newimage = (Image)(e.Item.FindControl("newimg"));

                //Get thumbs up image - indicate that the item is hot or popular.
                ShowPopularImage(Popular, PopularLabel, thumbsupimg);

                //Get new image if item is less than or equal to 7 days old
                ShowNewImage(DateTime.Now.Subtract(strDate), Newimage);
            }
        }

        /// <summary>
        /// Return whether an item is new or popular and display its associated image or text in recipedetail page.
        /// </summary>
        public static void GetIdentifyItemNewPopular(DateTime strDate, PlaceHolder ph, int Popular)
        {
            //Find controls
            Label PopularLabel = (Label)(ph.FindControl("lblpopular"));
            Image thumbsupimg = (Image)(ph.FindControl("thumbsup"));
            Image Newimage = (Image)(ph.FindControl("newimg"));

            //Get thumbs up image - indicate that the item is hot or popular.
            ShowPopularImage(Popular, PopularLabel, thumbsupimg);

            //Get new image if item is less than or equal to 7 days old
            ShowNewImage(DateTime.Now.Subtract(strDate), Newimage);
        }

        /// <summary>
        /// Return Popular value indicator.
        /// </summary>
        private static int PopularValue
        {
            get { return 2500; } //Change the value to any number you desire. The less the number, the more popular recipe.
        }

        /// <summary>
        /// Display thumbs up image - indicate that the is item hot or popular.
        /// </summary>
        private static void ShowPopularImage(int Popular, Label PopularLabel, Image thumbsupimg)
        {
            //If Hits is greater than 2,500, then show thumbs up image. Indicating it is hot
            if (Popular > PopularValue)
            {
                PopularLabel.Visible = true;
                PopularLabel.Text = "Popular";
                thumbsupimg.ImageUrl = GetThumbsUpImage;
            }
            else
            {
                thumbsupimg.Visible = false;
            }
        }

        /// <summary>
        /// Display new image - indicate that the item is new, less than or equal to 7 days old.
        /// </summary>
        private static void ShowNewImage(TimeSpan ts, Image Newimage)
        {
            //If the date of submission is less than 7 days, then show new image. Indicating that the item is new.
            if (ts.Days <= 7)
            {
                Newimage.ImageUrl = GetNewImage;
            }
            else
            {
                Newimage.Visible = false;
            }
        }

        #endregion

        #region Sequential Number and Day Counter
        /// <summary>
        /// Return the Number of Days Count Since Submission
        /// </summary>
        public static void GetCounterDay(DateTime strDate, RepeaterItemEventArgs e, int Flag)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lblgetdate = (Label)(e.Item.FindControl("lblgetdate"));

                //Get the timespan
                TimeSpan ts = TimeSpan.MinValue;

                //Do the date diff calculation by subtracting the date with the timespan
                ts = DateTime.Now.Subtract(strDate);

                //1 = we are dealing with newest recipe. 
                //The recipe category hide the number of days counter.
                if (Flag == 1)
                {
                    //If it is in the category page, hide the number of days counter, 
                    //else if it is on the other page, show the number of days counter.
                    if (HttpContext.Current.Request.QueryString["catid"] == null)
                    {
                        //Check how many days difference from current date.
                        //0 = today, 1 = yesterday, if greater than 1, then show day count.

                        /* There is another way of doing this is by through the stored procedure.
                             SQL Code:
                             Case Datediff(dd, Date, getdate())
                             When '0' Then 'Today'
                             When '1' Then 'Yesterday'
                             Else CAST(Datediff(dd, Date, getdate()) AS VARCHAR(20)) + ' ' 
                             + CAST('days ago' AS VARCHAR(20)) End As CountDay
                             Inside the repeater just call dataitem CountDay.
                         */

                        switch (ts.Days)
                        {
                            case 0:
                                lblgetdate.Text = "&nbsp;Today";
                                break;
                            case 1:
                                lblgetdate.Text = "&nbsp;Yesterday";
                                break;
                            default:
                                lblgetdate.Text = "&nbsp;" + string.Format("{0:#,###}", ts.Days) + " - days ago";
                                break;
                        }
                    }
                    else
                    {
                        lblgetdate.Text = "";
                        lblgetdate.Visible = false;
                    }
                }
                //2 = we are dealing with the newest article. 
                //The article category display the number of days counter.
                else if (Flag == 2)
                {
                    switch (ts.Days)
                    {
                        case 0:
                            lblgetdate.Text = "&nbsp;Today";
                            break;
                        case 1:
                            lblgetdate.Text = "&nbsp;Yesterday";
                            break;
                        default:
                            lblgetdate.Text = "&nbsp;" + string.Format("{0:#,###}", ts.Days) + " - days ago";
                            break;
                    }
                }
            }
        }

        /// <summary>
        /// Return Sequential number Counter
        /// </summary>
        public static void GetSeqCounter(Repeater r, RepeaterItemEventArgs e)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Find control
                Label lbseqnumber = (Label)(e.Item.FindControl("lbseqnumber"));

                //Loop through each item and assign a sequential number from 1 through 15
                int i = 0;

                for (i = 0; i <= r.Items.Count; i++)
                {
                    lbseqnumber.Text = (i + 1) + ".";
                }
            }
        }

        #endregion

        #region Get Images - Random imgae, Star Rating image, Sort Arrow Down image, New and Thumbs Up image

        /// <summary>
        /// Get thumbs up image.
        /// </summary>
        private static string GetThumbsUpImage
        {
            get { return "~/images/thup.gif"; }
        }

        /// <summary>
        /// Get new image.
        /// </summary>
        private static string GetNewImage
        {
            get { return "~/images/new.gif"; }
        }

        /// <summary>
        /// Get arrow down image for the sort option link.
        /// </summary>
        public string SortOptionArrowImage
        {
            get { return "~/images/arrow_down3.gif"; }
        }

        /// <summary>
        /// Get arrow up image for the sort option link.
        /// </summary>
        public string SortOptionArrowUpImage
        {
            get { return "~/images/arrow_up3.gif"; }
        }

        /// <summary>
        /// Return random image in the homepage.
        /// </summary>
        public static string GetRandomImage
        {
            get
            {
                int NumberPics = 5;
                Random RandomImg;
                int intRandomPic;
                RandomImg = new Random();
                intRandomPic = RandomImg.Next(1, NumberPics + 1);

                string getimagepath;
                getimagepath = "~/images/fo" + intRandomPic + ".gif";

                return getimagepath;
            }
        }

        /// <summary>
        /// Get rating star image.
        /// </summary>
        public static string GetStarImage(string Rating)
        {
            string GetRating;
            GetRating = "~/images/" + Rating + ".gif";
            return GetRating;
        }

        #endregion

        #region JavaScript alert validation
        /// <summary>
        /// Creates client-side javascript block string for pop-up message.
        /// </summary>
        /// <param name="Msg">Message to be displayed.</param>
        /// <returns>Alert Java Script Block</returns>
        public string JSAlert(string Msg)
        {
            StringBuilder mySB = new StringBuilder("");

            mySB.Append("<script language=javascript>");
            mySB.Append("alert(\"");
            mySB.Append(Msg);
            mySB.Append("\");</script>");

            return mySB.ToString();
        }

        /// <summary>
        /// Creates client-side Javascript block string for processing error pop-up message.
        /// </summary>
        public string JSProcessingErrorAlert
        {
            get
            {
                return "<script language=javascript>alert(\"A database error occured while processing your request.\");" +
                   "</script>";
            }
        }
        #endregion

        #region Switch Control
        /// <summary>
        /// Display sequential number from 1 through 20.
        /// </summary>
        public static string GetSquentialNumber(int Counter)
        {
            string getseqnumber = "";

            switch (Counter)
            {
                case 0:
                    getseqnumber = "1.";
                    break;
                case 1:
                    getseqnumber = "2.";
                    break;
                case 2:
                    getseqnumber = "3.";
                    break;
                case 3:
                    getseqnumber = "4.";
                    break;
                case 4:
                    getseqnumber = "5.";
                    break;
                case 5:
                    getseqnumber = "6.";
                    break;
                case 6:
                    getseqnumber = "7.";
                    break;
                case 7:
                    getseqnumber = "8.";
                    break;
                case 8:
                    getseqnumber = "9.";
                    break;
                case 9:
                    getseqnumber = "10.";
                    break;
                case 10:
                    getseqnumber = "11.";
                    break;
                case 11:
                    getseqnumber = "12.";
                    break;
                case 12:
                    getseqnumber = "13.";
                    break;
                case 13:
                    getseqnumber = "14.";
                    break;
                case 14:
                    getseqnumber = "15.";
                    break;
                case 16:
                    getseqnumber = "16.";
                    break;
                case 17:
                    getseqnumber = "17.";
                    break;
                case 18:
                    getseqnumber = "18.";
                    break;
                case 19:
                    getseqnumber = "19.";
                    break;
                case 20:
                    getseqnumber = "20.";
                    break;
            }

            return getseqnumber;
        }

        /// <summary>
        /// Return top label sorted option name
        /// </summary>
        public string GetSortOptionName(int Ob)
        {
            string getoptionname = "";

            switch (Ob)
            {
                case 1:
                    getoptionname = "Sorted by Most Popular";
                    break;
                case 2:
                    getoptionname = "Sorted by Highest Rated";
                    break;
                case 3:
                    getoptionname = "Sorted by Name";
                    break;
                case 4:
                    getoptionname = "Sorted by Newest";
                    break;

                default:
                    getoptionname = "Sorted by Newest";
                    break;
            }

            return getoptionname;
        }

        /// <summary>
        /// Return top label sorted option name
        /// </summary>
        public string GetSortOptionNameMembers(int Ob)
        {
            string getoptionname = "";

            switch (Ob)
            {
                case 1:
                    getoptionname = "Sorted by Profile Views";
                    break;
                case 2:
                    getoptionname = "Sorted by Email";
                    break;
                case 3:
                    getoptionname = "Sorted by Username";
                    break;
                case 4:
                    getoptionname = "Sorted by Date Joined";
                    break;
                case 5:
                    getoptionname = "Sorted by Activation";
                    break;
                case 6:
                    getoptionname = "Sorted by Status";
                    break;
                case 7:
                    getoptionname = "Sorted by CookBook Count";
                    break;
                case 8:
                    getoptionname = "Sorted by Friends Count";
                    break;
                case 9:
                    getoptionname = "Sorted by Recipe Submission Count";
                    break;
                case 10:
                    getoptionname = "Sorted by Article Submission Count";
                    break;
                case 11:
                    getoptionname = "Sorted by Last Updated Profile";
                    break;

                default:
                    getoptionname = "Sorted by Defeault - Date Joined";
                    break;
            }

            return getoptionname;
        }

        /// <summary>
        /// Return top label order by option name
        /// </summary>
        public string GetSortOptionOrderBy(int SB)
        {
            string getSB = "";

            switch (SB)
            {
                case 1:
                    getSB = "&nbsp;- DESC Order";
                    break;
                case 2:
                    getSB = "&nbsp;- ASC Order";
                    break;
            }

            return getSB;
        }
        #endregion

        #region Format Text, QueryString and Input Validation
        /// <summary>
        /// Perform basic text formating for recipe ingredients and instructions.
        /// </summary>
        public string FormatText(string content)
        {
            content = HttpUtility.HtmlEncode(content);
            content = content.Replace("  ", "&nbsp;&nbsp;").Replace("\t", "&nbsp;&nbsp;&nbsp;").Replace("\r\n", "<br>");
            return content;
        }

        /// <summary>
        /// Filters harmful scripts from input string
        /// </summary>
        /// <param name="Text">Input String</param>
        /// <returns>Filtered String</returns>
        public string FormatTextForInput(string Text)
        {
            if (Text == "")
                return "";

            if (Text == null)
                return "";

            string output = Text;

            //Build an array of characters that need to be filter.
            string[] strDirtyInput = { "xp_", ";", "--", "<", ">", "iframe", "script" };

            //Loop through all items in the array
            foreach (string item in strDirtyInput)
            {
                output = output.Replace(item, "");
            }

            output = output.Replace("'", "''");

            return output;
        }

        /// <summary>
        /// Performs same operation as the Val function in VB.
        /// </summary>
        /// <param name="Text">Input String</param>
        /// <returns>Returns . Returns 0 if empty or null string is inputted.</returns>
        public double Val(string Text)
        {
            string TempNum = "";
            string TempText;

            //If the string object is null return 0
            if (Text == null)
                return 0;

            int Length = Text.Length;

            //If the length of string is 0 then return 0
            if (Length == 0)
                return 0;

            TempText = Text;

            //Validate for potential SQL and XSS injection
            SecureQueryString(TempText);

            for (int i = 1; i <= Length; i++)
            {
                if (TempText.Substring(0, 1).ToString() == ".")
                {
                    TempNum += TempText.Substring(0, 1).ToString();
                }
                else
                {
                    try
                    {
                        TempNum += int.Parse(TempText.Substring(0, 1)).ToString();
                    }
                    catch
                    {
                        break;
                    }
                }
                TempText = Text.Substring(i, Length - i);
            }

            if (TempNum == "")
                TempNum = "0";

            return double.Parse(TempNum);
        }

        /// <summary>
        /// Performs same operation as the Val function in VB
        /// </summary>
        /// <param name="myObject">Input Object</param>
        /// <returns>Returns input in double format. Returns 0 if null object is passed on.</returns>
        public double Val(object myObject)
        {
            string TempNum = "";
            string TempText;

            //If the string object is null return 0
            if (myObject == null)
                return 0;

            string Text = myObject.ToString();

            int Length = Text.Length;

            //If the length of string is 0 then return 0
            if (Length == 0)
                return 0;

            TempText = Text;
            for (int i = 1; i <= Length; i++)
            {
                if (TempText.Substring(0, 1).ToString() == ".")
                {
                    TempNum += TempText.Substring(0, 1).ToString();
                }
                else
                {
                    try
                    {
                        TempNum += int.Parse(TempText.Substring(0, 1)).ToString();
                    }
                    catch
                    {
                        break;
                    }
                }
                TempText = Text.Substring(i, Length - i);
            }

            if (TempNum == "")
                TempNum = "0";

            return double.Parse(TempNum);
        }

        /// <summary>
        /// Performs querystring validation
        /// </summary>
        /// <returns>Validate for potential SQL and XSS injection</returns>
        public string SecureQueryString(string TexttoValidate)
        {
            string TextVal;

            TextVal = TexttoValidate;

            //Build an array of characters that need to be filter.
            string[] strDirtyQueryString = { "xp_", ";", "--", "<", ">", "script", "iframe", "delete", "drop", "exec" };

            //Loop through all items in the array
            foreach (string item in strDirtyQueryString)
            {
                if (TextVal.IndexOf(item) != -1)
                {
                    PageRedirect(1);//Redirect to page not found.
                    break;
                }
            }

            return TextVal;
        }

        /// <summary>
        /// Performs querystring validation
        /// </summary>
        /// <returns>Validate for potential SQL and XSS injection</returns>
        public static bool IsQueryStringSecure(string TexttoValidate)
        {
            string TextVal;

            TextVal = TexttoValidate;

            bool IsSecure = true;

            //Build an array of characters that need to be filter.
            string[] strDirtyQueryString = { "xp_", ";", "--", "<", ">", "script", "iframe", "delete", "drop", "exec" };

            //Loop through all items in the array
            foreach (string item in strDirtyQueryString)
            {
                if (TextVal.IndexOf(item) != -1)
                {
                    IsSecure = false;
                }
            }

            return IsSecure;
        }
        #endregion

        /// <summary>
        /// Performs validation whether the passed in string is numeric.
        /// </summary>
        public static bool IsNumeric(string strCheck)
        {
            try
            {
                int.Parse(strCheck);
                return true;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Returns a converted null to an emtpy string.
        /// </summary>
        public static string ConvertNullToEmptyString(string strinput)
        {
            return (strinput == null ? "" : strinput);
        }

        /// <summary>
        /// Returns word count.
        /// </summary>
        public static int WordCount(string strToCount)
        {
            int words;

            Regex reg = new Regex(@"\w+");

            MatchCollection mc = reg.Matches(strToCount);

            if (mc.Count > 0)
                words = mc.Count;
            else
                words = 0;

            return words;
        }

        /// <summary>
        /// Returns age.
        /// </summary>
        public static int GetAge(DateTime DOB)
        {
            int Age;
            Age = DateTime.Now.Year - DOB.Year;

            return Age;
        }

        /// <summary>
        /// Returns list of countries.
        /// </summary>
        public static string[] CountriesList = new string[] { 
         "Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", 
         "Angola", "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", 
         "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan",
		   "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus",
		   "Belgium", "Belize", "Benin", "Bermuda", "Bhutan",
		   "Bolivia", "Bosnia Hercegovina", "Botswana", "Bouvet Island", "Brazil",
		   "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Byelorussian SSR",
		   "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands",
		   "Central African Republic", "Chad", "Chile", "China", "Christmas Island",
		   "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands",
		   "Costa Rica", "Cote D'Ivoire", "Croatia", "Cuba", "Cyprus",
		   "Czech Republic", "Czechoslovakia", "Denmark", "Djibouti", "Dominica",
		   "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador",
		   "England", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia",
		   "Falkland Islands", "Faroe Islands", "Fiji", "Finland", "France",
		   "Gabon", "Gambia", "Georgia", "Germany", "Ghana",
		   "Gibraltar", "Great Britain", "Greece", "Greenland", "Grenada",
		   "Guadeloupe", "Guam", "Guatemela", "Guernsey", "Guiana",
		   "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Islands",
		   "Honduras", "Hong Kong", "Hungary", "Iceland", "India",
		   "Indonesia", "Iran", "Iraq", "Ireland", "Isle Of Man",
		   "Israel", "Italy", "Jamaica", "Japan", "Jersey",
		   "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, South",
		   "Korea, North", "Kuwait", "Kyrgyzstan", "Lao People's Dem. Rep.", "Latvia",
		   "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein",
		   "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar",
		   "Malawi", "Malaysia", "Maldives", "Mali", "Malta",
		   "Mariana Islands", "Marshall Islands", "Martinique", "Mauritania", "Mauritius",
		   "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco",
		   "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar",
		   "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles",
		   "Neutral Zone", "New Caledonia", "New Zealand", "Nicaragua", "Niger",
		   "Nigeria", "Niue", "Norfolk Island", "Northern Ireland", "Norway",
		   "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea",
		   "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland",
		   "Polynesia", "Portugal", "Puerto Rico", "Qatar", "Reunion",
		   "Romania", "Russian Federation", "Rwanda", "Saint Helena", "Saint Kitts",
		   "Saint Lucia", "Saint Pierre", "Saint Vincent", "Samoa", "San Marino",
		   "Sao Tome and Principe", "Saudi Arabia", "Scotland", "Senegal", "Seychelles",
		   "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands",
		   "Somalia", "South Africa", "South Georgia", "Spain", "Sri Lanka",
		   "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden",
		   "Switzerland", "Syrian Arab Republic", "Taiwan", "Tajikista", "Tanzania",
		   "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago",
		   "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu",
		   "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States",
		   "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City State", "Venezuela",
		   "Vietnam", "Virgin Islands", "Wales", "Western Sahara", "Yemen",
		   "Yugoslavia", "Zaire", "Zambia", "Zimbabwe"};

    }

}
