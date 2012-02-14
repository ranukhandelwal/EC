using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.Common;
using EC.UI;
using EC.BL;

namespace ExamCrazy.Test
{
    public partial class EmailTest : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendTestEmail(object s, EventArgs e)
        {
            EmailRepository ERepository = new EmailRepository();
            ERepository.ReadEmailTemplate("RegistrationEmail.xml");
            //ERepository.SendEmail("ranu.khandelwal@gmail.com");
            if (ERepository.SendEmail("ranu.khandelwal@gmail.com") != 0)
            {
                lblError.Text = "Error in sending email";
                lblError.Visible = true;
            }
            else
            {
                lblError.Text = "Email Sent";
                lblError.Visible = true;
            }
        }
    }
}