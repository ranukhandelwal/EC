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
using EC.BL.Providers;


public partial class EditFeed : BasePageAdmin
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FeedRepository feed = new FeedRepository();
        Utility Util = new Utility();
        //Page.Validate( = false;

        if (!Page.IsPostBack)
        {
            feed.FillUp((int)Util.Val(Request.QueryString["id"]));
            title.Value = feed.Title;
            Author.Value = feed.Author;
            Link.Value = feed.Link;
            Summary.Value = feed.Summary;
            Description.Value = feed.Description;
            GetDropdownCategoryList(feed.CategoryID);
            GetDropdownStateList(feed.isValid);
            GetCheckBoxDisplayInList(feed.DisplayIn);
            FeedID.Value = Util.Val(Request.QueryString["id"]).ToString();
            if (constant.FeedCategory[feed.CategoryID].Name == "JOBS")
            {
                isJob.Visible = false;
            }
        }
        feed = null;
        Util = null;


    }

    private void GetDropdownCategoryList(int id)
    {
        foreach (sCategory cat in constant.FeedCategory)
        {
            if (id == cat.ID)
            {
                CategoryName.Items.Add(new ListItem(cat.Name.ToString(), cat.ID.ToString()));
                CategoryName.Items[id].Selected = true;
            }
            else
            {
                CategoryName.Items.Add(new ListItem(cat.Name.ToString(), cat.ID.ToString()));
            }
            

        }

    }

    private void GetDropdownStateList(int id)
    {
        foreach (sState state in constant.JobState)
        {
            if (id == state.ID)
            {
                FeedState.Items.Add(new ListItem(state.Name.ToString(), state.ID.ToString()));
                FeedState.Items[id].Selected = true;
            }
            else
            {
                FeedState.Items.Add(new ListItem(state.Name.ToString(), state.ID.ToString()));
            }


        }
    }

    private void GetCheckBoxDisplayInList(string DisplayInString)
    {
        string [] temp = DisplayInString.Split(',');
        FeedRepository feed = new FeedRepository();
        ExtendedCollection<sPublish> PublishArea = feed.GetPublishList();
        int i;
        for (i = 0; i < PublishArea.Count; i++)
        {
            if ((PublishArea[i].Name != "") && (PublishArea[i].Name != null) && (PublishArea[i].ID.ToString() != "") && (PublishArea[i].ID != null))
            {
                CheckBoxDisplayIn.Items.Add(new ListItem(PublishArea[i].Name.ToString(), PublishArea[i].ID.ToString()));
                foreach (string sid in temp)
                {
                    int id = Int32.Parse(sid);
                    if (id == PublishArea[i].ID)
                    {
                        CheckBoxDisplayIn.Items[id].Selected = true;
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        FeedRepository rfeed = new FeedRepository();
        Utility Util = new Utility();
        Feed feed = new Feed();

        feed.Author = Author.Value;
        feed.Title = title.Value;
        feed.Summary = Summary.Value;
        feed.Description = Description.Value;
        feed.Link = Link.Value;
        feed.CategoryID = Int16.Parse(CategoryName.SelectedValue);
        feed.FeedID = Int32.Parse(FeedID.Value);
        feed.isValid = Int16.Parse(FeedState.SelectedValue);
        feed.DisplayIn = "";
        for (int i = 0; i < CheckBoxDisplayIn.Items.Count; i++)
        {
            if (CheckBoxDisplayIn.Items[i].Selected)
            {
                if (feed.DisplayIn.Length > 0)
                    feed.DisplayIn += ",";
                feed.DisplayIn += CheckBoxDisplayIn.Items[i].Value;
            }
        }
        if (feed.DisplayIn.Length == 0)
            feed.DisplayIn = "-1";
        rfeed.Update(feed);

        feed = null;
        Util = null;
        rfeed = null;

    }
}

