#region XD World Recipe V 3
// FileName: EmailHelper.cs
// Author: Dexter Zafra
// Date Created: 5/19/2008
// Website: www.ex-designz.net
#endregion
using System;
using System.Net.Mail;

namespace EC.Common
{
    /// <summary>
    /// Object in this class send email using System.Net.Mail
    /// </summary>
    public static class EmailHelper
    {
        /// <summary>
        /// Sends email using System.Net.Mail
        /// </summary>
        /// <param name="msg">Populated MailMessage object</param>
        /// <returns>Returns 0 if processed successfully. Any other values indicate failure.</returns>
        public static int SendEmail(string ToEmail, string FromEmail, string Subject, string emailbody)
        {
            int Err = 0;

            //Only deliver email if both fields are provided.
            if (!string.IsNullOrEmpty(ToEmail) && !string.IsNullOrEmpty(FromEmail))
            {
                try
                {
                    MailAddress from = new MailAddress(FromEmail);
                    MailAddress to = new MailAddress(ToEmail);
                    MailMessage msg = new MailMessage(from, to);

                    msg.Subject = Subject;
                    msg.Body = emailbody;
                    msg.IsBodyHtml = true;
                    msg.Priority = MailPriority.High;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Send(msg);
                }
                catch (Exception x)
                {
                    Err = 1;
                    throw new SystemException();
                }
            }

            return Err;
        }

    }
}
