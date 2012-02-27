using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.BL;
using EC.Model;
using EC.Common;
using EC.UI;

namespace ExamCrazy
{
    public partial class HeaderFooter : BaseMaster
    {
         //initialized with default value
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();
            login.loginpanelno = 2;
            HeaderCtrl.filter = HeaderFilter;
            form1.Action = Request.RawUrl;
            if (!Page.IsPostBack)
            {

                UpdateRepository UpdateList = new UpdateRepository();
                ExtendedCollection<Update> UC = UpdateList.GetUpdateList(PAGEID.ToString());
                //UC.Contains(
                Update[] updates = new Update[UC.Count];
                UC.CopyTo(updates, 0);
                RepeaterID.DataSource = updates;
                RepeaterID.DataBind();
                if ((HttpContext.Current.Request.Browser.Cookies) && (HttpContext.Current.Request.Cookies["SupportCookies"] == null))
                {
                    HttpCookie c = new HttpCookie("SupportCookies", "true");
                    HttpContext.Current.Response.Cookies.Add(c);
                }

            }

        }
    }
}
