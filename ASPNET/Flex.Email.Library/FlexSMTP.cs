using System;
using System.Net;

namespace Flex.Email.Library
{
    public enum SMTPType
    {
        Exception,
        Alert
    }

    public class SMTPUtility
    {
        public void SendEmail(SMTPType sMTPType, string Subject, string body, string[] attachmentFilepaths, bool isHTML, char addressSplitChar = ';')
        {
            try
            {
                string[] toAdddressCollection = null;
                System.Net.Mail.SmtpClient smtp;
                System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();

                char[] splitcharacter = new char[] { addressSplitChar };
                switch (sMTPType)
                {
                    case SMTPType.Alert:
                        message.From = new System.Net.Mail.MailAddress("flexdeploytestuser@yahoo.com");
                        message.Sender = new System.Net.Mail.MailAddress("flexdeploytestuser@yahoo.com");
                        break;
                    case SMTPType.Exception:
                        message.From = new System.Net.Mail.MailAddress("a.a@fel.com");
                        message.Sender = new System.Net.Mail.MailAddress("a.a@fel.com");
                        break;


                }
                message.To.Add("muthu.sankaralingam@flexagon.com");
                message.Subject = Subject;
                message.Body = body;

                smtp = new System.Net.Mail.SmtpClient("smtp-relay.sendinblue.com", 587);
                smtp.UseDefaultCredentials = false;
                NetworkCredential MyCredentials = new NetworkCredential("flexdeploytestuser@yahoo.com", "Welcome@123");
                smtp.Credentials = MyCredentials;
                //smtp.Credentials.
                smtp.Send(message);

            }
            catch (System.Exception ex)
            {
                throw ex;
            }
        }
    }
}
