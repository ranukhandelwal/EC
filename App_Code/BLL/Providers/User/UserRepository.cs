#region XD World Recipe V 3
// FileName: UserRepository.cs
// Author: Dexter Zafra
// Date Created: 2/15/2009
// Website: www.ex-designz.net
#endregion
using System;
using EC.Model;

namespace EC.BL
{
    /// <summary>
    /// Objects in this class manages Add, Update and Delete users
    /// </summary>
    public class UserRepository : BaseUserObj
    {
        /// <summary>
        /// Default Constructor
        /// </summary>
        public UserRepository()
        {
        }

        /// <summary>
        /// Perform Insert to Database
        /// </summary>
        /// <returns></returns>
        public override int Add(Users user)
        {
            return Blogic.AddNewUser(user);
        }

        public override int ShortAdd(Users user)
        {
            return Blogic.ShortAddNewUser(user);
        }
        public override int QuickAdd(Users user)
        {
            return Blogic.QuickAddNewUser(user);
        }

        /// <summary>
        /// Perform Update
        /// </summary>
        /// <returns></returns>
        public override int Update(Users user)
        {
            return Blogic.UpdateUser(user);
        }

        /// <summary>
        /// Perform Delete
        /// </summary>
        /// <returns></returns>
        public override int Deactivate(Users user)
        {
            return Blogic.DeleteUser(user);
        }

    }
}
