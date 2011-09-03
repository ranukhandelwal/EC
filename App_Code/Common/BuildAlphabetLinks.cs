#region ExamCrazy Portal
// FileName: BuildAlphabetLinks.cs

// Date Created: 5/10/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Web;

namespace EC.Common
{
    /// <summary>
    /// Object in this class build alphabet A to Z links
    /// </summary>
    public static class AlphabetLink
    {
        /// <summary>
        /// Return the built A to Z links
        /// </summary>
        public static string BuildLink(string URL, string CssStyle, string ToolTip, string LinkSpacer)
        {
            string strLetter = string.Empty;
            string LinkStyle = "class=" + "\"" + CssStyle + "\"";

            for (int i = 65; i <= 90; i++)
            {
                strLetter = strLetter + "<a href=\"" + URL + "" + (char)(i)
                            + '"' + LinkStyle + "title=" + "\"" + ToolTip + " " + (char)(i) + "\""
                            + (char)(i) + ">" + (char)(i) + "</a>" + LinkSpacer + "";
            }

            return strLetter;
        }

        /// <summary>
        /// Return the built A to Z links for search members
        /// </summary>
        public static string BuildLinkSearchMembers(string URL, string CssStyle, string ToolTip, string LinkSpacer)
        {
            string strLetter = string.Empty;
            string LinkStyle = "class=" + "\"" + CssStyle + "\"";

            for (int i = 65; i <= 90; i++)
            {
                strLetter = strLetter + "<a href=\"" + URL + "" + (char)(i) + "&condition=1"
                            + '"' + LinkStyle + "title=" + "\"" + ToolTip + " " + (char)(i) + "\""
                            + (char)(i) + ">" + (char)(i) + "</a>" + LinkSpacer + "";
            }

            return strLetter;
        }
    }
}
