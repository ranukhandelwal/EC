using System;
using System.Collections.Generic;
using System.Web;
using EC.UI;
using EC.Security;

namespace EC.UI
{
    public class BaseLoggedInPage : BasePage
    {
        protected bool Activation = false;
        protected override void OnLoad(EventArgs e)
        {
            if ((!Authentication.IsUserAuthenticated) && !Activation)
            {
                Response.Redirect(ResolveUrl("~/Test/TempIntermediatePage.aspx"));
            }
            base.OnLoad(e);
        }        
    }
}