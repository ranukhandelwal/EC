using System;
using System.Collections.Generic;
using System.Web;
using EC.Model;

namespace EC.BL
{
    public class BaseFeedObj : Feed, IRepository
    {
        #region class members
        public virtual int Add(Feed c) { return 0; } //Insert to database
        public virtual int Update(Feed c) { return 0; } //Update to database
        public virtual int Deactivate(Feed c) { return 0; } //Deactivate from database
        public virtual void FillUp(int SID) { } //Fill up database fields

        #endregion

        #region Interface contract Implementation - overload methods
        public virtual int Add() { return 0; } //Insert to database
        public virtual int Update() { return 0; } //Update to database
        public virtual int Deactivate() { return 0; } //Deactivate from database
        public virtual void FillUp() { } //Fill up database fields
        #endregion
    }
}
