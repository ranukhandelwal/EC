using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.Common;
using EC.Common.Utilities;
using EC.Model;
using EC.BL;
using EC.BL.Providers.Article;

namespace ExamCrazy.admin
{
    public partial class articlepreview : BasePageAdmin
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Instantiate utility object
            Utility Util = new Utility();

            ProviderArticleDetails Article = new ProviderArticleDetails();

            int ArticleID = (int)Util.Val(Request.QueryString["aid"]);

            Article.Approved = constant.UnApproved;
            Article.FillUp(ArticleID);

            lbtitle.Text = Article.Title;
            lblsummary.Text = Article.Summary;
            lblkeyword.Text = Article.Keyword;
            lbartdetail.Text = Article.Content;

            //Release allocated memory
            Util = null;
            Article = null;

        }
    }
}