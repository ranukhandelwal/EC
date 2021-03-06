﻿using System;
using System.Collections.Generic;
using System.Web;
using EC.Model;

namespace EC.BL
{
 public abstract class BaseStateObj : State, IRepository
    {
        #region class members
        public virtual int Add(State c) { return 0; } //Insert to database
        public virtual int Update(State c) { return 0; } //Update to database
        public virtual int Deactivate(State c) { return 0; } //Delete from database
        public virtual void FillUp(int CID) { } //Fill up database fields

        #endregion

        #region Interface contract Implementation - overload methods
        public virtual int Add() { return 0; } //Insert to database
        public virtual int Update() { return 0; } //Update to database
        public virtual int Deactivate() { return 0; } //Delete from database
        public virtual void FillUp() { } //Fill up database fields
        #endregion
    }
}
