using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
using EC.BL.Providers;
using EC.Common;
using EC.Model;
using EC.Security;
using EC.Common.Utilities;
using EC.BL.Providers.User;
using EC.BL.Providers.Article;

namespace EC.Article
{
    public partial class addarticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HideContentIfNotLogin.Visible = true;
        }
        public void Add_Article(Object s, EventArgs e)
        {
        }
        
       
    }
}