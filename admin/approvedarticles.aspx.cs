using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using EC.Common;
using EC.Common.Utilities;
using EC.Model;
using EC.BL;
using EC.BL.Providers.Article;
using EC.UI;

namespace ExamCrazy.admin
{
    public partial class approvedarticles : BasePageAdmin
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Return Add New Category List

                ArtCategoryList.DataSource = Blogic.ActionProcedureDataProvider.GetArticleCategoryList;
                ArtCategoryList.DataBind();

                ShowEditArticleListing();
            }
        }

        //Handles show edit article listing
        private void ShowEditArticleListing()
        {
            //Instantiate validation
            Utility Util = new Utility();

            int CatId;
            CatId = (int)Util.Val(Request.QueryString["catid"]);

            if (string.IsNullOrEmpty(this.Request.QueryString["catid"]))
            {
                articlelist.Visible = false;
            }
            else
            {
                articlelist.Visible = true;

                try
                {
                    IDataReader dr = Blogic.ActionProcedureDataProvider.GetArticleCategory(CatId, 3); //3 = Category OrderBy Name.

                    dr.Read();
                    lbcatname.Text = dr["CAT_NAME"].ToString();
                    dr.Close();

                    ArticleCat.DataSource = Blogic.ActionProcedureDataProvider.GetArticleCategory(CatId, 3); //3 = Category OrderBy Name.
                    ArticleCat.DataBind();
                }
                catch
                {
                    Error.Text = "No Record Found.";
                    return;
                }

                //Release allocated memory
                Util = null;
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

        public void ArtCategoryList_ItemDataBound(Object s, RepeaterItemEventArgs e)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                /*LinkButton delbutton2 = (LinkButton)(e.Item.FindControl("delbutton2"));
                HyperLink editbutton2 = (HyperLink)(e.Item.FindControl("editbutton2"));*/

                /*delbutton2.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to delete this category and all its associated articles. Note: you will loss all articles belong in this category. " + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + " Category, ID#  " + DataBinder.Eval(e.Item.DataItem, "CAT_ID") + "?')";
                delbutton2.Text = "<img border='0' src='../images/icon_delete.gif'>";
                editbutton2.Text = "<img src='../images/icon_pencil.gif' alt='Edit' border='0'>";
                editbutton2.Attributes.Add("onmouseover", "Tip('Edit <b>" + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + "</b> category.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                editbutton2.Attributes.Add("onmouseout", "UnTip()");
                delbutton2.Attributes.Add("onmouseover", "Tip('Delete (<b>" + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + "</b>) category.<br><b>Note: </b> deleting this category will delete<br>all articles belong to this category.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                delbutton2.Attributes.Add("onmouseout", "UnTip()");*/
                
            }
        }

        public void ArticleCat_ItemDataBound(Object s, RepeaterItemEventArgs e)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton delbutton3 = (LinkButton)(e.Item.FindControl("delbutton3"));
                HyperLink editbutton3 = (HyperLink)(e.Item.FindControl("editbutton3"));
                delbutton3.Text = "<img border='0' src='../images/icon_delete.gif'>";
                editbutton3.Text = "<img src='../images/icon_pencil.gif' alt='Edit' border='0'>";
                editbutton3.NavigateUrl = "updatearticle.aspx?aid=" + DataBinder.Eval(e.Item.DataItem, "ID");
                delbutton3.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to delete " + DataBinder.Eval(e.Item.DataItem, "Title") + " Article, ID#  " + DataBinder.Eval(e.Item.DataItem, "ID") + "?')";
                delbutton3.Attributes.Add("onmouseover", "Tip('Delete (<b>" + DataBinder.Eval(e.Item.DataItem, "Title") + "</b>) article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                delbutton3.Attributes.Add("onmouseout", "UnTip()");
                editbutton3.Attributes.Add("onmouseover", "Tip('Edit (<b>" + DataBinder.Eval(e.Item.DataItem, "Title") + "</b>) article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                editbutton3.Attributes.Add("onmouseout", "UnTip()");
            }
        }
    }
}