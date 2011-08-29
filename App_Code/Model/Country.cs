using System;
using System.Data;
using EC.BL;

namespace EC.Model
{
    public class Country
    {
        public Country()
        {
        }
        private string _Name;
        private int _ID;

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

    }
}
