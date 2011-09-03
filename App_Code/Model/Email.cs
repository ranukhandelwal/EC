#region ExamCrazy Portal
// FileName: emailandsmtpconfig.cs

// Date Created: 7/8/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;

namespace EC.Model
{
    /// <summary>
    /// Object in this class manages email properties
    /// </summary>
    public class Email : DBObj
    {
        //Defaut constructor
        public Email()
        {
        }

#region Class Variables
        /// <summary>Item ID</summary>
        protected int _ItemID;

        /// <summary>Name of the Item i.e recipe or article</summary>
        protected string _ItemName;

        /// <summary>Recipient Email Address</summary>
        protected string _RecipientEmail;

        /// <summary>Recipient Name</summary>
        protected string _RecipientName;

        /// <summary>Category Name</summary>
        protected string _Category;

        /// <summary>Sender Name</summary>
        protected string _SenderEmail;

        /// <summary>Sender Name</summary>
        protected string _SenderName;

        /// <summary>Admin Email</summary>
        protected string _FromAdminEmail;

        /// <summary>Admin Email</summary>
        protected string _ToAdminEmail;

        /// <summary>SMTP Server Address</summary>
        protected string _SMTPServerAddress;

#endregion

#region Properties
        public int ItemID
        {
            get { return _ItemID; }
            set { _ItemID = value; }
        }

        public string ItemName
        {
            get { return _ItemName; }
            set { _ItemName = value; }
        }

        public string RecipientEmail
        {
            get { return _RecipientEmail; }
            set { _RecipientEmail = value; }
        }

        public string RecipientName
        {
            get { return _RecipientName; }
            set { _RecipientName = value; }
        }

        public string Category
        {
            get { return _Category; }
            set { _Category = value; }
        }

        public string SenderEmail
        {
            get { return _SenderEmail; }
            set { _SenderEmail = value; }
        }

        public string SenderName
        {
            get { return _SenderName; }
            set { _SenderName = value; }
        }

        public string FromAdminEmail
        {
            get { return _FromAdminEmail; }
            set { _FromAdminEmail = value; }
        }

        public string ToAdminEmail
        {
            get { return _ToAdminEmail; }
            set { _ToAdminEmail = value; }
        }

        public string SMTPServerAddress
        {
            get { return _SMTPServerAddress; }
            set { _SMTPServerAddress = value; }
        }

#endregion
    }
}