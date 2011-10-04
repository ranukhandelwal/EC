using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.BL;
using EC.Model;
using EC.Common;

namespace ExamCrazy
{
    public partial class HeaderFooter : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();
            if (!Page.IsPostBack)
            {
                UpdateRepository UpdateList = new UpdateRepository();
                ExtendedCollection<Update> UC = UpdateList.GetUpdateList();

                Update[] updates = new Update[UC.Count];
                UC.CopyTo(updates, 0);
                RepeaterID.DataSource = updates;
                RepeaterID.DataBind();

            }

        }
    }
}
