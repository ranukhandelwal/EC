using System;
using System.Collections.Generic;
using System.Web;

namespace EC.Model
{
    public class State
    {
        public State()
        {
        }
        private string _Name;
        private int _ID;
        private int _CountryID;

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public int CountryID
        {
            get { return _CountryID; }
            set { _CountryID = value; }
        }
    }
}
