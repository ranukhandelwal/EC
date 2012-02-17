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

        public string GenerateEmailVerificationLink()
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
                link = link + "&";
                link = link + "a=vemail";
            }

            return link;
        }

        public string GeneratePasswordResetLink(string Email)
        {
            string link = "?";
            int UserId = Blogic.GetUserIDFromEmail(Email);
            user.FillUp(UserId);
            link = link + "class=" + Encryption.Encrypt("0" + user.Email1.Split('@')[1]);
            link = link + "&";
            link = link + "bl=" + Encryption.Encrypt("1" + user.Email1.Split('@')[0]);
            link = link + "&";
            link = link + "cl=" + Encryption.Encrypt("2" + user.UserName);
            link = link + "&";
            link = link + "sl=" + Encryption.Encrypt("3" + UserId.ToString());
            link = link + "&";
            link = link + "a=pswd";
            
            return link;
        }
       
        public bool IsEmailLinkAuthenticate(int UserID, string UserName, string Email, string Domain)
        {
            if (Blogic.IsEmailLinkAuthenticate(UserID, Email + "@" + Domain, UserName) <= 0)
                return false;
            else
                return true;

        }

        public bool IsPasswordResetLinkAuthenticate(string _UserID, string _UserName, string _Email, string _Domain, out string UserName)
        {
            int UserID;
            string Email;
            string Domain;
            
            _UserID = Encryption.Decrypt(_UserID);
            if (_UserID.Length > 1)
            {
                if (_UserID.Substring(0, 1) == "3")
                {
                    _UserID = _UserID.Substring(1, _UserID.Length - 1);
                }
            }
            UserID = Int32.Parse(_UserID);

            _UserName = Encryption.Decrypt(_UserName);
            if (_UserName.Length > 1)
            {
                if (_UserName.Substring(0, 1) == "2")
                {
                    _UserName = _UserName.Substring(1, _UserName.Length - 1);
                }
            }
            UserName = _UserName;

            _Email = Encryption.Decrypt(_Email);
            if (_Email.Length > 1)
            {
                if (_Email.Substring(0, 1) == "1")
                {
                    _Email = _Email.Substring(1, _Email.Length - 1);
                }
            }
            Email = _Email;

            _Domain = Encryption.Decrypt(_Domain);
            if (_Domain.Length > 1)
            {
                if (_Domain.Substring(0, 1) == "0")
                {
                    _Domain = _Domain.Substring(1, _Domain.Length - 1);
                }
            }
            Domain = _Domain;
            if (Blogic.IsEmailLinkAuthenticate(UserID, Email + "@" + Domain, UserName) <= 0)
                return false;
            else
                return true;

        }
    }
}