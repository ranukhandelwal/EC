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
    public partial class addarticle : BaseLoggedInPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            login.ShowPopup();
            HideContentIfNotLogin.Visible = true;
            lblauthorname.Text = UserIdentity.UserName.ToString();
            /*ArticleCategory Drop Down List Generation*/
            ArticleCategoryRepository ArticleCatList = new ArticleCategoryRepository();
            ExtendedCollection<ArticleCategory> AC = ArticleCatList.GetArticleCategoryList(1);

            for (int i = 0; i < AC.Count; i++)
            {
                ddlarticlecategory.Items.Add(new ListItem(AC[i].Category.ToString(), AC[i].CatID.ToString()));
            }
        }
        public void Add_Article(Object s, EventArgs e)
        {
            if (Authentication.IsUserAuthenticated)
            {
                Utility Util = new Utility();

                ArticleRepository Article = new ArticleRepository();

                Article.UID = UserIdentity.UserID;
                Article.Author = UserIdentity.UserName;
                Article.Title = Util.FormatTextForInput(Request.Form[Title1.UniqueID]);
                Article.Summary = Util.FormatTextForInput(Request.Form[Summary.UniqueID]);
                Article.Content = Request.Form[Content.UniqueID];
                Article.CatID = Int32.Parse(Request.Form[ddlarticlecategory.UniqueID]);
                Article.Keyword = Util.FormatTextForInput(Request.Form[Keyword.UniqueID]);

                #region Form Input Validator
                if (Article.Title.Length == 0)
                {
                    lbvalenght.Text = "<br>Error: Title is blank, please enter a title.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.CatID == 0)
                {
                    lbvalenght.Text = "<br>Error: You must select a category where you want your article to show.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Summary.Length == 0)
                {
                    lbvalenght.Text = "<br>Error: Summary is blank, please enter a summary.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Content.Length == 0)
                {
                    lbvalenght.Text = "<br>Error: Content is blank, please enter a content.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Keyword.Length == 0)
                {
                    lbvalenght.Text = "<br>Error: Keyword is blank, please enter a keyword.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Content.Length > 8000)
                {
                    lbvalenght.Text = "<br>Error: Content is too long, max of 8000 characters including HTML formatting.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Title.Length > 65)
                {
                    lbvalenght.Text = "<br>Error: Title is too long, should not exceed 65 characters.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Summary.Length > 350)
                {
                    lbvalenght.Text = "<br>Error: Summary is too long, max of 350 characters.";
                    lbvalenght.Visible = true;
                    return;
                }
                if (Article.Keyword.Length > 80)
                {
                    lbvalenght.Text = "<br>Error: Keyword is too long, max of 80 characters.";
                    lbvalenght.Visible = true;
                    return;
                }

                #endregion

                if (Article.Add(Article) != 0)
                {
                    JSLiteral.Text = "Error occured while processing your article submission.";
                    return;
                }

                Article = null;
                Util = null;

                //Response.Redirect("confirmsubmitarticle.aspx?mode=Added");
            }


        }
    }
}