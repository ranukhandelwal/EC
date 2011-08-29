using System;
using System.Collections.Generic;
using System.Web;

namespace EC.Model
{
    public class City
    {
        public City()
        {
        }
        private string _Name;
        private int _ID;
        private int _StateID;

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

        public int StateID
        {
            get { return _StateID; }
            set { _StateID = value; }
        }
    }
}
