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
    public partial class updatearticle : BasePageAdmin
    {
        Utility Util = new Utility();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticleCategoryRepository ArticleCatList = new ArticleCategoryRepository();
                ExtendedCollection<ArticleCategory> AC = ArticleCatList.GetArticleCategoryList(1);
                
                ProviderArticleDetails Article = new ProviderArticleDetails();

                Util.Val(Request.QueryString["aid"]);
                int ArticleID = (int)Util.Val(Request.QueryString["aid"]);

                Article.Approved = constant.UnApproved;
                Article.FillUp(ArticleID);

                string categoryname;
                categoryname = Article.Category;

                int categoryid;
                categoryid = Article.CatID;

                for (int i = 0; i < AC.Count; i++)
                {
                    if (AC[i].CatID == categoryid)
                    {
                        ListItem l = new ListItem(AC[i].Category.ToString(), AC[i].CatID.ToString());
                        l.Selected = true;
                        ddlarticlecategory.Items.Add(l);
                    }
                    else
                        ddlarticlecategory.Items.Add(new ListItem(AC[i].Category.ToString(), AC[i].CatID.ToString()));
                }

                lblauthorname.Text = Article.Author;
                lbtitle.Text = Article.Title;
                Userid.Value = Article.UID.ToString();
                Title1.Value = Article.Title;
                Content.Value = (string)Article.Content;
                Summary.Value = Util.FormatText(Article.Summary);
                Keyword.Value = Article.Keyword;

                Util = null;
            }
        }

        public void Update_Article(Object s, EventArgs e)
        {
            ArticleRepository Article = new ArticleRepository();

            Article.ID = (int)Util.Val(Request.QueryString["aid"]);
            Article.UID = int.Parse(Request.Form[Userid.UniqueID]);
            Article.Title = Request.Form[Title1.UniqueID];
            Article.Content = Request.Form[Content.UniqueID];
            Article.CatID = int.Parse(Request.Form[ddlarticlecategory.UniqueID]);
            Article.Keyword = Request.Form[Keyword.UniqueID];
            Article.Summary = Request.Form[Summary.UniqueID];
            Article.Approved = constant.UnApproved;

            //Refresh cache
            Caching.PurgeCacheItems("Newest_Articles");
            Caching.PurgeCacheItems("ArticleCategory_SideMenu");

            //Notify user if error occured.
            if (Article.Update(Article) != 0)
            {
                JSLiteral.Text = Util.JSProcessingErrorAlert;
                return;
            }

            //Release allocated memory
            Article = null;

            //If success, redirect to article update confirmation page.
            Util.PageRedirect(7);

            Util = null;
        }
    }
}