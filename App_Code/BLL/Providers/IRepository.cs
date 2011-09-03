#region ExamCrazy Portal
// FileName: IRepository.cs

// Date Created: 2/29/2009
// Website: www.examcrazy.com
#endregion
using System;
using EC.Model;

namespace EC.BL
{
    /// <summary>
    /// CRUD Interface
    /// </summary>
    public interface IRepository
    {
        int Add(); //User Full registration
        int Update();
        int Deactivate();
        void FillUp();
    }
}
