using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Net;
using System.Net.Mail;
using EC.Model;
using EC.BL.Providers.User;
namespace EC.BL
{
    /// <summary>
    /// Object in this class send email using System.Net.Mail
    /// This class should always follow following
    /// 1) ReadEmailTemplate - after reading it calls GenericReplace
    /// 2) SpecificReplace - do replacement of specific strings. This should be 
    /// handled by specific call using EmailRepository. Specific calls should not be integrated 
    /// in GenericReplace. Function ReplaceString should be used.
    /// 3) SendEmail
    /// </summary>
    public class EmailRepository : Email
    {
        /// <summary>
        /// This defines the base path of Email Templates
        /// </summary>
        public string EmailTemplatePath = "~/XML/EmailTemplate/";

        /// <summary>
        /// This function reads EmailTemplate File and assign to class elements
        /// Body Elements special strings are replaced(GenericReplace)
        /// Email Template can contain following
        /// Subject, Body, From, From Name, CC, BCC
        /// Input: EmailTemplate File Name(with out path)
        /// Output: Error, 0 - Template Read Success Fully
        ///                1 - Template Read Failed
        /// Exception: System Exception
        /// Note: 
        /// </summary>
        public int ReadEmailTemplate(string EmailTemplateName)
        {
            int Err = 0;
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(HttpContext.Current.Server.MapPath(EmailTemplatePath + EmailTemplateName));
                XmlNodeList xNodeList = doc.SelectNodes("Email/child::node()");//Traverse the entire XML nodes.
                foreach (XmlNode xNode in xNodeList)
                {
                    if (xNode.Name.ToLower() == "subject")
                    {
                        this.Subject = xNode.InnerText;
                    }
                    else if (xNode.Name.ToLower() == "body")
                    {
                        this.Body = xNode.InnerText;
                    }
                    else if (xNode.Name.ToLower() == "fromemail")
                    {
                        this.From = xNode.InnerText;
                    }
                    else if (xNode.Name.ToLower() == "fromemailname")
                    {
                        this.FromName = xNode.InnerText;
                    }
                    else if (xNode.Name.ToLower() == "cc")
                    {
                        this.CC = xNode.InnerText;
                    }
                    else if (xNode.Name.ToLower() == "bcc")
                    {
                        this.BCC = xNode.InnerText;
                    }
                }
                GenericReplace();
            }
            catch (Exception x)
            {
                Err = 1;
                throw new SystemException("Email Read" + x);
            }

            return Err;
        }

        /// <summary>
        /// This function Sends Email using SMTPClient. 
        /// This should be called after ReadEmailTemplate
        /// All Email fields are populated only if ReadEmailTemplate
        /// was successfully called. Following are populated from EmailTemplate
        /// Compulsary: Subject, Body, From
        /// Optional: From Name, CC, BCC
        /// Input: To Field
        /// Note: To, CC, BCC can contain multiple emails, saperated by semicolon
        /// Output: Error, 0 - Template Read Success Fully
        ///                1 - Template Read Failed
        /// Exception: System Exception
        /// </summary>
        public int SendEmail(string To)
        {
            int Err = 0;

            //Only deliver email if both fields are provided.
            if (!string.IsNullOrEmpty(To) && !string.IsNullOrEmpty(this.From))
            {
                try
                {
                    SmtpClient smtp = new SmtpClient();
                    NetworkCredential basicCredential = new NetworkCredential("support@gatetutor.in", "a1s2d3f4");
                    MailMessage msg = new MailMessage();
                    MailAddress from;
                    if ((this.FromName != null) && (this.FromName != ""))
                    {
                        from = new MailAddress(this.From, this.FromName);
                    }
                    else
                    {
                        from = new MailAddress(this.From);
                    }

                    smtp.Host = "mail.gatetutor.in";
                    smtp.Port = 25;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = basicCredential;

                    msg.From = from;
                    msg.Subject = this.Subject;
                    msg.IsBodyHtml = true;
                    msg.Body = this.Body;

                    if (this.BCC != null)
                    {
                        string[] bcclist = this.BCC.Split(new char[] { ';' });
                        msg.Bcc.Clear();
                        foreach (string bccstr in bcclist)
                            msg.Bcc.Add(bccstr);
                    }

                    if (this.CC != null)
                    {
                        string[] cclist = this.CC.Split(new char[] { ';' });
                        msg.CC.Clear();
                        foreach (string ccstr in cclist)
                            msg.CC.Add(ccstr);
                    }

                    string[] tolist = To.Split(new char[] { ';' });
                    msg.To.Clear();
                    foreach (string tostr in tolist)
                        msg.To.Add(tostr);
                    smtp.Send(msg);
                    smtp = null;
                }
                catch (Exception x)
                {
                    Err = 1;
                    throw new SystemException("Email Error" + x);

                }
            }

            return Err;
        }

        /// <summary>
        /// This is a private function replacing some generic strings from Eamil Body. 
        /// Strings Replaced:
        /// $$UserName$$, $$UserEmail$$
        /// Exception: System Exception
        /// </summary>
        private void GenericReplace()
        {
            try
            {
                if (this.Body != null)
                {
                    if (this.Body.Contains("$$UserName$$"))
                        this.Body = this.Body.Replace("$$UserName$$", UserIdentity.UserName);
                    if (this.Body.Contains("$$UserEmail$$"))
                        this.Body = this.Body.Replace("$$UserEmail$$", UserIdentity.UserEmail);
                }
            }
            catch (Exception x)
            {
                throw new SystemException("EmailRepository:GenericReplace" + x);
            }
        }

        /// <summary>
        /// This function is for replacing any string from Eamil Body. 
        /// Input: 
        /// 1) String to be replaced(OldValue)
        /// 2) String With which it should be replaced(NewValue)
        /// Exception: System Exception
        /// </summary>
        public void ReplaceString(string OldValue, String NewValue)
        {
            try
            {
                if (this.Body != null)
                {
                    if (this.Body.Contains(OldValue))
                        this.Body = this.Body.Replace(OldValue, NewValue);
                }
            }
            catch (Exception x)
            {
                throw new SystemException("EmailRepository:GenericReplace" + x);
            }
        }
    }
}