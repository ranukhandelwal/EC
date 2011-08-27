#region XD World Recipe V 3
// FileName: UserNameAndEmailValidation.cs
// Author: Dexter Zafra
// Date Created: 2/14/2009
// Website: www.ex-designz.net
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

namespace EC.Security
{
    /// <summary>
    /// Object in this class validate the username and email address during registration to prevent duplicate username and email.
    /// </summary>
    public static class UserNameAndEmailValidation
    {
        private static string _Result;

        private static string Result
        {
            get { return _Result; }
            set { _Result = value; }
        }

        public static string Param(string Username, string UserEmail)
        {
            IDataReader dr = Blogic.ActionProcedureDataProvider.ValidateUsernameAndEmail(Username, UserEmail);

            while (dr.Read())
            {
                if (dr["Result"] != DBNull.Value)
                {
                    _Result = (string)dr["Result"];
                }
            }

            dr.Close();

            return Result;
        }

        /// <summary>
        /// Returns bool based on the result from the database.
        /// </summary>
        public static bool IsValid
        {
            get
            {
                bool theResult = false;

                switch (Result)
                {
                    case "USERNAME AND EMAIL ALREADY TAKEN":
                        theResult = false;
                        break;

                    case "USERNAME ALREADY TAKEN":
                        theResult = false;
                        break;

                    case "EMAIL ALREADY TAKEN":
                        theResult = false;
                        break;

                    case "GOOD":
                        theResult = true;
                        break;
                }

                return theResult;
            }
        }

        /// <summary>
        /// Returns an error message.
        /// </summary>
        public static string ErrMsg
        {
            get
            {
                string Err_Msg = "Error: Unable to create the user. ";

                switch (Result)
                {
                    case "USERNAME AND EMAIL ALREADY TAKEN":
                        Err_Msg += "An account with the specified username and email already exists. Please choose another username and email.";
                        break;

                    case "USERNAME ALREADY TAKEN":
                        Err_Msg += "An account with the specified username already exists. Please choose another username.";
                        break;

                    case "EMAIL ALREADY TAKEN":
                        Err_Msg += "An account with the specified email already exists. Please choose another email.";
                        break;
                }

                return Err_Msg;
            }
        }
    }
}
