using System;
using System.Collections.Generic;
using System.Web;
using EC.BL;

namespace EC.Model
{
    public class Feed
    {
        private int _FeedID;
        private string _Title;
        private string _Author;
        private string _Description;
        private DateTime _DatePublised;
        private string _Link;
        private Int16 _isValid;
        private int _Hits;
        private int _Category;
        private string _DisplayIn;

        public int FeedID
        {
            get { return _FeedID; }
            set { _FeedID = value; }
        }

        public string Title
        {
            get { return _Title; }
            set { _Title = (value == "")?"ExamCrazy Feed Title Missing":value; }
        }
        public string Author
        {
            get { return _Author; }
            set { _Author = (value == "") ? "ExamCrazy Feed Author Missing" : value; }
        }
        public string Description
        {
            get { return _Description; }
            set { _Description = (value == "") ? "ExamCrazy Feed Description Missing" : value; }
        }
        public DateTime DatePublised
        {
            get { return _DatePublised; }
            set { _DatePublised = value; }
        }
        public string Link
        {
            get { return _Link; }
            set { _Link = (value == "") ? "www.Examcrazy.Com/feeds/missingfeed" : value; ; }
        }
        public Int16 isValid
        {
            get { return _isValid; }
            set { _isValid = value; }
        }
        public int Hits
        {
            get { return _Hits; }
            
        }
        public int IncrHit
        {
            get { return ++_Hits; }

        }
        public int CategoryID
        {
            get { return _Category; }
            set { _Category = value; }
        }

        public string CategorySTR
        {
            get
            {
                if(constant.FeedCategory.Length < _Category)
                    return constant.FeedCategory[_Category].Name;
                else
                    return "invalid";
                                
            }
            set {
                    _Category = -1;
            }
        }
        public string DisplayIn
        {
            get { return _DisplayIn; }
            set { _DisplayIn = value; }
        }
        
    }
}
