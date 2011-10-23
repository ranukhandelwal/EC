using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;
using EC.BL;

namespace EC.UI
{
    public class BaseMaster : System.Web.UI.MasterPage
    {
        public int PAGEID;
        public string HeaderFilter;

        public BaseMaster()
        {
            PAGEID = 0;
            HeaderFilter = SiteConfiguration.GetHeader();
        }
    }
}
