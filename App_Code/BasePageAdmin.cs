#region ExamCrazy Portal
// FileName: BasePageAdmin.cs

// Date Created: 2/14/2009
// Website: www.examcrazy.com
#endregion
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.Security;

namespace EC.UI
{
    /// <summary>
    /// Base Page for Admin section
    /// </summary>
    public class BasePageAdmin : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            //Authenticate the admin username and password.
            Authentication.IsAdminAuthenticated();

            base.OnLoad(e);
        }
    }
}
