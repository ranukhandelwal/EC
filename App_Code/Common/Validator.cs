#region ExamCrazy Portal
// FileName: Validator.cs

// Date Created: 5/19/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Text.RegularExpressions;

namespace EC.Common
{
    /// <summary>
    /// Object in this class maanages input validation.
    /// </summary>
    public static class Validator
    {
        /// <summary>
        /// Alpha Numeric only and 6 characters minimum and 12 characters maximun.
        /// </summary>
        public static bool IsAlphaNumericOnly(string strToCheck)
        {
            return Regex.IsMatch(strToCheck, "^[a-zA-Z0-9_]{6,15}$");
        }

        /// <summary>
        /// User name should be between 6 and 15 characters, should start and end with Alphanumeric characters.
        /// Can also contain . - _ and @
        /// </summary>
        public static bool IsValidUserName(string strToCheck)
        {
            return Regex.IsMatch(strToCheck, "^([a-zA-Z0-9]+)[\\w-_.@a-zA-Z0-9]+([a-zA-Z0-9]+)$");
        }

         /// <summary>
        /// User name should be between 6 and 12 characters, should be mix of alphabet and numbers.
        /// Can also contain . - _ and @
        /// </summary>
        public static bool IsValidPassword(string strToCheck)
        {
            return Regex.IsMatch(strToCheck, "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,12})$");
        }

        /// <summary>
        /// Validate email address format.
        /// </summary>
        public static bool IsValidEmail(string Email)
        {
            return Regex.IsMatch(Email, @"\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
        }

        /// <summary>
        /// Validate firstname and lastname.
        /// </summary>
        public static bool IsValidName(string strToCheck)
        {
            return Regex.IsMatch(strToCheck, "^[a-zA-Z ]+$");
        }

        /// <summary>
        /// Validate date of birth.
        /// </summary>
        public static bool IsValidAge(DateTime DOB, int minAgeAllowed)
        {
            int AllowedAge;
            AllowedAge = DateTime.Now.Year - DOB.Year;

            if (AllowedAge < minAgeAllowed)
            {
                return false;
            }

            if (DOB.Year < DateTime.Now.Year)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Validate a string to make sure it meets the min and max characters.
        /// </summary>
        public static bool IsMinAndMAxLenght(string strtext, int minlength, int maxlenght)
        {
            if ((strtext.Length < minlength) || strtext.Length > maxlenght)
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// Validate a string to a expected lenght of characters.
        /// </summary>
        public static bool IsExpectedLength(string text, int length)
        {
            if (text == null)
            {
                return false;
            }

            if ((text.Length <= length) && length > 0)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Validate a string to an exact lenght of characters.
        /// </summary>
        public static bool IsExactLength(string text, int length)
        {
            if (text == null)
            {
                return false;
            }

            if (text.Length == length)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Validate a string to a min lenght of characters.
        /// </summary>
        public static bool IsMinimumLength(string text, int length)
        {
            if (text == null)
            {
                return false;
            }

            if (length < 0)
            {
                return false;
            }

            if (text.Length >= length)
            {
                return true;
            }

            return false;
        }

    }
}
