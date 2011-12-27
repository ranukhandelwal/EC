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

namespace ExamCrazy.admin
{
    public partial class AddArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DelCategory.Visible = false;
                CategoryName.Text = "";
                CategoryID.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                addbutton.Visible = true;
                updatebutton.Visible = false;
                lblheaderform.Text = "Add New Article Category";
                lblnamedis2.Text = "Category Name:";
                
                //Return Add New Category List

                ArtCategoryList.DataSource = Blogic.ActionProcedureDataProvider.GetArticleCategoryList;
                ArtCategoryList.DataBind();

                if (Request.QueryString["editcatid"] != null)
                {
                    CategoryID.Value = Request.QueryString["editcatid"];
                    IDataReader oDr = Blogic.ActionProcedureDataProvider.GetArticleCategoryDetails(Int32.Parse(CategoryID.Value));
                    oDr.Read();
                    CategoryName.Text = oDr.GetValue(oDr.GetOrdinal("CAT_NAME")).ToString();
                    CategoryDesc.Text = oDr.GetValue(oDr.GetOrdinal("CAT_DESC")).ToString();
                    Panel2.Visible = true;
                    if (Int32.Parse(oDr.GetValue(oDr.GetOrdinal("isActive")).ToString()) == 1)
                    {
                        CheckisActive.Checked = true;
                    }
                    Panel3.Visible = false;
                    addbutton.Visible = false;
                    updatebutton.Visible = true;
                    lblheaderform.Text = "Updating Article Category ID# " + Request.QueryString["editcatid"];
                }
            }

        }

        public void ArtCategoryList_ItemDataBound(Object s, RepeaterItemEventArgs e)
        {
            // This event is raised for the header, the footer, separators, and items.
            // Execute the following logic for Items and Alternating Items.
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton delbutton2 = (LinkButton)(e.Item.FindControl("delbutton2"));
                HyperLink editbutton2 = (HyperLink)(e.Item.FindControl("editbutton2"));

                delbutton2.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to delete this category and all its associated articles. Note: you will loss all articles belong in this category. " + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + " Category, ID#  " + DataBinder.Eval(e.Item.DataItem, "CAT_ID") + "?')";
                delbutton2.Text = "<img border='0' src='../images/icon_delete.gif'>";
                editbutton2.Text = "<img src='../images/icon_pencil.gif' alt='Edit' border='0'>";
                editbutton2.Attributes.Add("onmouseover", "Tip('Edit <b>" + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + "</b> category.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                editbutton2.Attributes.Add("onmouseout", "UnTip()");
                delbutton2.Attributes.Add("onmouseover", "Tip('Delete (<b>" + DataBinder.Eval(e.Item.DataItem, "CAT_NAME") + "</b>) category.<br><b>Note: </b> deleting this category will delete<br>all articles belong to this category.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                delbutton2.Attributes.Add("onmouseout", "UnTip()");
                Panel3.Visible = false;
            }
        }

        //Handles update comment
        public void Update_Category(Object s, EventArgs e)
        {
            ArticleCategoryRepository Category = new ArticleCategoryRepository();

            Category.CatID = Int32.Parse(Request.QueryString["editcatid"]);
            Category.Category = Request.Form[CategoryName.UniqueID];
            Category.CategoryDescription = Request.Form[CategoryDesc.UniqueID];
            if (CheckisActive.Checked == true)
                Category.isActive = 1;
            else
                Category.isActive = 0;

            Caching.PurgeCacheItems("ArticleCategory_SideMenu");

            //Notify user if error occured.
            if (Category.Update(Category) != 0)
            {
                JSLiteral.Text = "Error occured while processing your submit.";
                return;
            }

            Category = null;

            Response.Redirect("confirmarticlecatedit.aspx?catname=" + Request.Form["CategoryName"] + "&mode=update");
        }

        //Handle the delete button click event
        public void Delete_Category(Object sender, RepeaterCommandEventArgs e)
        {
            if ((e.CommandName == "Delete"))
            {
                ArticleRepository Category = new ArticleRepository();

                Category.CatID = Convert.ToInt32(e.CommandArgument);

                Caching.PurgeCacheItems("ArticleCategory_SideMenu");

                //Perform delete
                Category.DeactivateCategory(Category);

                //Redirect to confirm delete page
                Response.Redirect("confirmarticlecatedit.aspx?catname=ArticleCategoryID" + Category.CatID + "&mode=del");
            }
        }

        //Handle add new category
        public void Add_Category(Object s, EventArgs e)
        {
            ArticleCategoryRepository Category = new ArticleCategoryRepository();

            Category.Category = Request.Form[CategoryName.UniqueID];
            Category.CategoryDescription = Request.Form[CategoryDesc.UniqueID]; 

            Caching.PurgeCacheItems("ArticleCategory_SideMenu");

            //Notify user if error occured.
            if (Category.Add(Category) != 0)
            {
                JSLiteral.Text = "Error occured while processing your submit.";
                return;
            }

            Category = null;

            Response.Redirect("confirmarticlecatedit.aspx?catname=" + Request.Form["CategoryName"] + "&mode=add");
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