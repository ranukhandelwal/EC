using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.Common;
using EC.UI;

namespace ExamCrazy.Test
{
    public partial class EmailTest : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendTestEmail(object s, EventArgs e)
        {
            if (EmailHelper.SendEmail("ranu.khandelwal@gmail.com", "support@gatetutor.in", "Test Email", "This is Test Email") != 0)
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