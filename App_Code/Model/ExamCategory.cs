﻿using System;
using System.Collections.Generic;
using System.Web;

namespace EC.Model
{
    /// <summary>
    /// Summary description for ExamCategory
    /// </summary> 

    public class ExamCategory
    {
	    public ExamCategory()
	    {
        }

        protected string _ExamName;
        protected string _ExamDescription;
        protected int _ECID;
        protected int _isActive;

        public string ExamName
        {
            get {return _ExamName;}
            set {_ExamName = ExamName;}
        }
        public string ExamDescription
        {
            get {return _ExamDescription;}
            set {_ExamDescription = ExamDescription;}
        }
        public int ECID
        {
            get {return _ECID;}
            set {_ECID = ECID;}
        }
        public int isActive
        {
            get { return _isActive; }
            set { _isActive = isActive; }
        }
    }
    
}
