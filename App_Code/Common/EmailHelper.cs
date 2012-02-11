#region ExamCrazy Portal
// FileName: EmailHelper.cs

// Date Created: 5/19/2008
// Website: www.examcrazy.com
#endregion
using System;
using System.Net;
using System.Net.Mail;
using System.Web;

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
                    SmtpClient smtp = new SmtpClient();
                    NetworkCredential basicCredential = new NetworkCredential("support@gatetutor.in", "a1s2d3f4");
                    MailMessage msg = new MailMessage();
                    MailAddress from = new MailAddress(FromEmail);
                    
                    smtp.Host = "mail.gatetutor.in";
                    smtp.Port = 25;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = basicCredential;

                    msg.From = from;
                    msg.Subject = Subject;
                    msg.IsBodyHtml = true;
                    msg.Body = emailbody;
                    msg.To.Add(ToEmail);
                    
                    
                    smtp.Send(msg);
                }
                catch (Exception x)
                {
                    Err = 1;
                    throw new SystemException("Email Error" + x);
                    
                }
            }

            return Err;
        }

    }
}
