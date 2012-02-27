using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;

namespace ExamCrazy.Test
{
    public partial class LoginControl : BaseLoggedInPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            login.ShowPopup();

        }
    }
}
