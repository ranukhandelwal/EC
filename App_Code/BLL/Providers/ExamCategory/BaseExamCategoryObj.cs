using System;
using System.Collections.Generic;
using System.Web;
using EC.Model;

namespace EC.BL
{
    /// <summary>
    /// Object in this class manages ExamCategory CRUD database methods.
    /// </summary>
    public abstract class BaseExamCategoryObj : ExamCategory, IRepository
    {

        #region class members
        public virtual int Add(ExamCategory ec) { return 0; } //Insert to database
        public virtual int ShortAdd(ExamCategory ec) { return 0; } //Insert to database
        public virtual int QuickAdd(ExamCategory ec) { return 0; } //Insert to database
        public virtual int Update(ExamCategory ec) { return 0; } //Update to database
        public virtual int Deactivate(ExamCategory ec) { return 0; } //Delete from database
        public virtual void FillUp(int UID) { } //Fill up database fields

        #endregion

        #region Interface contract Implementation - overload methods
        public virtual int Add() { return 0; } //Insert to database
        public virtual int ShortAdd() { return 0; } //Insert to database
        public virtual int QuickAdd() { return 0; } //Insert to database
        public virtual int Update() { return 0; } //Update to database
        public virtual int Deactivate() { return 0; } //Delete from database
        public virtual void FillUp() { } //Fill up database fields
        #endregion
    }
}
