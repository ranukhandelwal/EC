#region XD World Recipe V 3
// FileName: BaseArticleObj.cs
// Author: Dexter Zafra
// Date Created: 6/29/2008
// Website: www.ex-designz.net
#endregion
using System;
using EC.Model;

namespace EC.BL
{
    /// <summary>
    /// Object in this class manages Article CRUD database methods.
    /// </summary>
    public abstract class BaseArticleCategoryObj : ArticleCategory, IRepository
    {
        #region Class members
        public virtual int Add(ArticleCategory category) { return 0; } //Insert to database
        public virtual int Update(ArticleCategory category) { return 0; } //Update to database
        public virtual int Deactivate(ArticleCategory category) { return 0; } //Deactivate from database
        public virtual void FillUp(int ID) { } //Fill up database fields
        #endregion

        #region Interface Contract Implementation - overload methods
        public virtual int Add() { return 0; } //Insert to database
        public virtual int Update() { return 0; } //Update to database
        public virtual int Deactivate() { return 0; } //Deactivate from database
        public virtual void FillUp() { } //Fill up database fields
        #endregion
    }
}

