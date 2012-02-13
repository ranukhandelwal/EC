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
    public class Email
    {
        //Defaut constructor
        public Email()
        {
        }

#region Class Variables
        
        /// <summary>Recipient Email Address</summary>
        private string _To;

        /// <summary>Recipient Name</summary>
        private string _ToName;

        /// <summary>Sender Name</summary>
        private string _From;

        /// <summary>Sender Name</summary>
        private string _FromName;

        /// <summary>CC Email</summary>
        private string _CC;

        /// <summary>BCC Email</summary>
        private string _BCC;

        /// <summary>Email Body</summary>
        private string _Body;

        /// <summary>SMTP Server Address</summary>
        private string _SMTPServerAddress;

        /// <summary>Email Saved in Template Name</summary>
        private string _TemplateName;

        /// <summary>Email Subject</summary>
        private string _Subject;

#endregion

#region Properties
        

        public string TemplateName
        {
            get { return _TemplateName; }
            set { _TemplateName = value; }
        }

        public string To
        {
            get { return _To; }
            set { _To = value; }
        }

        public string ToName
        {
            get { return _ToName; }
            set { _ToName = value; }
        }

        public string From
        {
            get { return _From; }
            set { _From = value; }
        }

        public string FromName
        {
            get { return _FromName; }
            set { _FromName = value; }
        }

        public string CC
        {
            get { return _CC; }
            set { _CC = value; }
        }

        public string BCC
        {
            get { return _BCC; }
            set { _BCC = value; }
        }

        public string Body
        {
            get { return _Body; }
            set { _Body = value; }
        }

        public string SMTPServerAddress
        {
            get { return _SMTPServerAddress; }
            set { _SMTPServerAddress = value; }
        }

        public string Subject
        {
            get { return _Subject; }
            set { _Subject = value; }
        }
#endregion
    }
}