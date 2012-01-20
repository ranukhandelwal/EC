using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.Model;
using EC.BL;
using EC.Common.Utilities;

namespace ExamCrazy.admin
{
    public partial class AddAnnouncement : BasePageAdmin
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                foreach (sPublish publish in constant.PublishArea)
                {
                    CheckBoxDisplayIn.Items.Add(new ListItem(publish.Name.ToString(), publish.ID.ToString()));
                }
            }

        }

        private void GetCheckBoxDisplayInList(string DisplayInString)
        {
            string[] temp = DisplayInString.Split(',');
            foreach (sPublish publish in constant.PublishArea)
            {
                CheckBoxDisplayIn.Items.Add(new ListItem(publish.Name.ToString(), publish.ID.ToString()));
                foreach (string sid in temp)
                {
                    int id = Int32.Parse(sid);
                    if (id == publish.ID)
                    {
                        CheckBoxDisplayIn.Items[id].Selected = true;
                    }
                }
            }
        }

        public void SaveFeed(object s, EventArgs e)
        {
            AddFeed(2);
            //SummaryPreview.Visible = true;
            //DetailPreview.Visible = true;
        }

        public void SubmitFeed(object s, EventArgs e)
        {
            AddFeed(1);
        }

        public void AddFeed(short state)
        {
            Feed feed = new Feed();
            Utility Util = new Utility();
            feed.Author = "Administrator";
            foreach (sCategory cat in constant.FeedCategory)
            {
                if (cat.Name == "ANNOUNCE")
                    feed.CategoryID = cat.ID;
            }

            feed.Title = Util.FormatTextForInput(Request.Form[AnnounceTitle.UniqueID]);
            feed.Link = Util.FormatTextForInput(Request.Form[TitleLink.UniqueID]);


            feed.Summary = "<a href=\"" + feed.Link + "\" title=\"" + feed.Title + "\">" + feed.Title + "</a>" + "<span>" + Util.FormatTextForInput(Request.Form[NextDate.UniqueID]) + "</span>";

            feed.isValid = state;
            feed.Description = feed.Summary;
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



            if ((state == 1) || (state == 2))
            {
                FeedRepository feedrep = new FeedRepository();
                if (feedrep.isFeedLinkDuplicate(feed.Link, feed.CategoryID) == 0)
                {
                    if (feedrep.Add(feed) == 1)
                    {
                        lblWarningMessage.Visible = true;
                        lblWarningMessage.Text = "Error!! Feed Add Failed";
                    }
                }
                else
                {
                    lblWarningMessage.Visible = true;
                    lblWarningMessage.Text = "Error!! FeedLink is Duplicate";
                }
                feedrep = null;
            }

            Util = null;
            feed = null;

        }

    }
}