#region ExamCrazy Portal
// FileName: IDB.cs

// Date Created: 6/29/2008
// Website: www.examcrazy.com
#endregion
using System;
using EC.Common;

namespace EC.Model
{
    /// <summary>
    /// CRUD Interface
    /// </summary>
    public interface IDB
    {
        int Add();
        int Update();
        int Delete();
        void fillup();
    }
}
