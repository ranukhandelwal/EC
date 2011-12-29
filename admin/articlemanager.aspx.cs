using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.BL;
//using EC.BL.Providers.Announcements;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;
using EC.BL.Providers.Article;

namespace ExamCrazy.admin
{
    public partial class articlemanager : BasePageAdmin
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UnApprovedArticleList.DataSource = ProviderUnapprovedArticles.GetUnApprovedArticles();
                UnApprovedArticleList.DataBind();
            }

        }

        public void UnApprovedArticleList_ItemDataBound(Object s, RepeaterItemEventArgs e)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton delbuttonunapprove = (LinkButton)(e.Item.FindControl("delbuttonunapprove"));
                LinkButton approvebutton = (LinkButton)(e.Item.FindControl("approvebutton"));
                HyperLink editunapprovebutton = (HyperLink)(e.Item.FindControl("editunapprovebutton"));

                delbuttonunapprove.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to delete this articles. " + DataBinder.Eval(e.Item.DataItem, "Title") + " Article, ID#  " + DataBinder.Eval(e.Item.DataItem, "ID") + "?')";
                delbuttonunapprove.Text = "<img border='0' src='../images/icon_delete.gif'>";
                editunapprovebutton.Text = "<img src='../images/icon_pencil.gif' alt='Edit' border='0'>";
                editunapprovebutton.NavigateUrl = "updatearticle.aspx?aid=" + DataBinder.Eval(e.Item.DataItem, "ID");
                approvebutton.Text = "<img src='../images/adminapproval_icon_smll.gif' alt='Edit' border='0'>";
                approvebutton.Attributes.Add("onmouseover", "Tip('Approve <b>" + DataBinder.Eval(e.Item.DataItem, "Title") + "</b> article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                approvebutton.Attributes.Add("onmouseout", "UnTip()");
                delbuttonunapprove.Attributes.Add("onmouseover", "Tip('Delete (<b>" + DataBinder.Eval(e.Item.DataItem, "Title") + "</b>) article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                delbuttonunapprove.Attributes.Add("onmouseout", "UnTip()");
                editunapprovebutton.Attributes.Add("onmouseover", "Tip('Edit (<b>" + DataBinder.Eval(e.Item.DataItem, "Title") + "</b>) article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                editunapprovebutton.Attributes.Add("onmouseout", "UnTip()");
            }
        }

        //Handle delete button click event
        public void ApprovedDelete_Article(Object sender, RepeaterCommandEventArgs e)
        {
            if ((e.CommandName == "Delete"))
            {
                ArticleRepository Article = new ArticleRepository();

                string[] commandArgsDelete = e.CommandArgument.ToString().Split(new char[] { ',' });
                Article.ID = int.Parse(commandArgsDelete[0].ToString()); // Article ID
                int User_ID = int.Parse(commandArgsDelete[1].ToString()); // Get the UserID

                Caching.PurgeCacheItems("Newest_Articles");
                Caching.PurgeCacheItems("ArticleCategory_SideMenu");
                Caching.PurgeCacheItems("Last5_ArticlePublishedByUser_" + User_ID);

                //Perform delete
                Article.Deactivate(Article);

                //Release allocated memory
                Article = null;

                //Redirect to confirm delete page
                Response.Redirect("articlemanager.aspx");
            }

            if ((e.CommandName == "Approved"))
            {
                string[] commandArgsApproved = e.CommandArgument.ToString().Split(new char[] { ',' });
                int ArticleID = int.Parse(commandArgsApproved[0].ToString()); // Get the Article ID
                int UserID = int.Parse(commandArgsApproved[1].ToString()); // Get the UserID

                //Refresh cache
                Caching.PurgeCacheItems("Newest_Articles");
                Caching.PurgeCacheItems("ArticleCategory_SideMenu");
                Caching.PurgeCacheItems("Last5_ArticlePublishedByUser_" + UserID);

                int Err = Blogic.ActionProcedureDataProvider.FinalizeAddArticle(ArticleID);

                // If error occured, stop further processing and notify user.
                if (Err != 0)
                {
                    JSLiteral.Text = "Error occured while processing your submit.";
                    return;
                }

                //Redirect to confirm delete page
                Response.Redirect("articlemanager.aspx");
            }
        }

        //Handle the delete button click event
        public void Delete_Article(Object sender, RepeaterCommandEventArgs e)
        {
            if ((e.CommandName == "Delete"))
            {
                ArticleRepository DeleteArticle = new ArticleRepository();

                DeleteArticle.ID = Convert.ToInt32(e.CommandArgument);

                Caching.PurgeCacheItems("Newest_Articles");
                Caching.PurgeCacheItems("ArticleCategory_SideMenu");

                //Perform delete
                DeleteArticle.Deactivate();

                //Release allocated memory
                DeleteArticle = null;

                //Redirect to confirm delete page
                Response.Redirect("articlemanager.aspx");
            }
        }
    }
}