#region XD World Recipe V 3
// FileName: IRepository.cs
// Author: Dexter Zafra
// Date Created: 2/29/2009
// Website: www.ex-designz.net
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
        int ShortAdd();//Short registration with few fields
        int QuickAdd();// Quick registration with Name, uname and email id only
        int Update();
        int Deactivate();
        void FillUp();
    }
}
