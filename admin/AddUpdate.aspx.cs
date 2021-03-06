﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EC.UI;
using EC.Model;
using EC.BL;
using EC.Common;
using EC.Common.Utilities;

namespace ExamCrazy.admin
{
    public partial class AddUpdate : BasePageAdmin
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FeedRepository feed = new FeedRepository();
                ExtendedCollection<sPublish> PublishArea = feed.GetPublishList();
                int i;
                for (i = 0; i < PublishArea.Count; i++)
                {
                    if ((PublishArea[i].Name != "") && (PublishArea[i].Name != null) && (PublishArea[i].ID.ToString() != "") && (PublishArea[i].ID != null))
                        CheckBoxDisplayIn.Items.Add(new ListItem(PublishArea[i].Name.ToString(), PublishArea[i].ID.ToString()));
                }
                feed = null;
                PublishArea = null;
            }
        
            
        }

        private void GetCheckBoxDisplayInList(string DisplayInString)
        {
            string[] temp = DisplayInString.Split(',');
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
                if(cat.Name == "UPDATE")
                    feed.CategoryID = cat.ID;
            }

            feed.Title = Util.FormatTextForInput(Request.Form[UpdateTitle.UniqueID]);
            feed.Link =  Util.FormatTextForInput(Request.Form[TitleLink.UniqueID]);
            

            feed.Summary = feed.Title;
            

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

