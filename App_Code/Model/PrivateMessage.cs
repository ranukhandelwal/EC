#region ExamCrazy Portal
// FileName: PrivateMessage.cs

// Date Created: 3/8/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;

namespace EC.Model
{
    /// <summary>
    /// Object in this class manages Private Messaging
    /// </summary>
    public class PrivateMessage
    {
        public PrivateMessage()
        {
        }

        protected int _ID;
        protected string _Subject;
        protected string _Message;
        protected int _SenderUserID;
        protected int _RecipientUserID;
        protected string _SenderUserName;
        protected string _RecipientUserName;
        protected DateTime _DateSent;
        protected int _Read;
        protected int _OutBox;
        protected int _TotalCount;
        protected int _UnreadCount;
        protected int _TotalPMCount;
        protected int _CountSentPMToday;
        protected DateTime _DateCreated;

        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public string Subject
        {
            get { return _Subject; }
            set { _Subject = value; }
        }
        public string Message
        {
            get { return _Message; }
            set { _Message = value; }
        }
        public int SenderUserID
        {
            get { return _SenderUserID; }
            set { _SenderUserID = value; }
        }
        public int RecipientUserID
        {
            get { return _RecipientUserID; }
            set { _RecipientUserID = value; }
        }
        public string SenderUserName
        {
            get { return _SenderUserName; }
            set { _SenderUserName = value; }
        }
        public string RecipientUserName
        {
            get { return _RecipientUserName; }
            set { _RecipientUserName = value; }
        }
        public DateTime DateSent
        {
            get { return _DateSent; }
            set { _DateSent = value; }
        }
        public int Read
        {
            get { return _Read; }
            set { _Read = value; }
        }
        public int OutBox
        {
            get { return _OutBox; }
            set { _OutBox = value; }
        }
        public int TotalCount
        {
            get { return _TotalCount; }
            set { _TotalCount = value; }
        }
        public int UnreadCount
        {
            get { return _UnreadCount; }
            set { _UnreadCount = value; }
        }
        public int TotalPMCount
        {
            get { return _TotalPMCount; }
            set { _TotalPMCount = value; }
        }
        public int CountSentPMToday
        {
            get { return _CountSentPMToday; }
            set { _CountSentPMToday = value; }
        }
        public DateTime DateCreated
        {
            get { return _DateCreated; }
            set { _DateCreated = value; }
        }
    }
}
