#region XD World Recipe V 3
// FileName: comment.cs
// Author: Dexter Zafra
// Date Created: 6/30/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Web;
using System.Web.UI.WebControls;

namespace EC.Model
{
    /// <summary>
    /// Objects in this class manages comments properties and fields
    /// </summary>
    public class Comment
    {
        ///<summary>Default Constructor</summary>
        public Comment()
        {
        }

#region Class Variables
        /// <summary>Item ID</summary>
        protected int _ID;

        /// <summary>Comment ID</summary>
        protected int _COMID;

        /// <summary>Recipe ID</summary>
        protected int _RECID;

        /// <summary>Author</summary>
        protected string _Author;

        /// <summary>No of Votes</summary>
        protected string _Email;

        /// <summary>Date</summary>
        protected DateTime _Date;

        /// <summary>Rating</summary>
        protected string _Comments;

        /// <summary>Show or Hide comment</summary>
        protected int _ShowHideComment;

        /// <summary>Get Repeater Name</summary>
        protected Repeater _RepeaterName;

        /// <summary>Get Placeholder Name</summary>
        protected PlaceHolder _placeholder;

        /// <summary>User ID</summary>
        protected int _UID;

#endregion

#region Properties - Get and Set Accessor
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public int COMID
        {
            get { return _COMID; }
            set { _COMID = value; }
        }
        public int RECID
        {
            get { return _RECID; }
            set { _RECID = value; }
        }
        public string Author
        {
            get { return _Author; }
            set { _Author = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }
        public string Comments
        {
            get { return _Comments; }
            set { _Comments = value; }
        }
        public int ShowHideComment
        {
            get { return _ShowHideComment; }
            set { _ShowHideComment = value; }
        }
        public Repeater RepeaterName
        {
            get { return _RepeaterName; }
            set { _RepeaterName = value; }
        }
        public PlaceHolder placeholder
        {
            get { return _placeholder; }
            set { _placeholder = value; }
        }
        public int UID
        {
            get { return _UID; }
            set { _UID = value; }
        }
#endregion

#region Boolean - Show/Hide Comment
        protected bool IsShowHideComment
        {
            get
            {
                //This will determine to either hide or show the comment.
                if (ShowHideComment == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
#endregion
    }
}