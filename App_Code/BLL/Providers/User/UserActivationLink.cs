using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EC.Model;
using EC.BL.Providers.User;
using EC.Security;
using EC.Common.Utilities;

namespace EC.BL.Providers.User
{
    public class UserActivationLink : BaseUserObj
    {
        ProviderUserDetails user = new ProviderUserDetails();
        private Utility Util
        {
            get { return new Utility(); }
        }

        public string GenerateActivationLink()
        {
            string link = "?";
            if (Authentication.IsUserAuthenticated)
            {
                //user.FillUp(UserIdentity.UserID);
                link = link + "class=" + Encryption.Encrypt(UserIdentity.UserEmail.Split('@')[1]);
                link = link + "&";
                link = link + "bl=" + Encryption.Encrypt(UserIdentity.UserEmail.Split('@')[0]);
                link = link + "&";
                link = link + "cl=" + Encryption.Encrypt(UserIdentity.UserName);
                link = link + "&";
                link = link + "sl=" + Encryption.Encrypt(UserIdentity.UserID.ToString());
            }

            return link;
        }

        public bool IsEmailLinkAuthenticate(int UserID, string UserName, string Email, string Domain)
        {
            if (Blogic.IsEmailLinkAuthenticate(UserID, Email + "@" + Domain, UserName) <= 0)
                return false;
            else
                return true;

        }


    }
}