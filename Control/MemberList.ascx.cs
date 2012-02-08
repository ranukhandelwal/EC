using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using EC.UI;
using EC.BL;
using EC.Common;
using EC.Common.Utilities;
using EC.Security;
using EC.BL.Providers.User;

namespace ExamCrazy.Control
{
    /// <summary>
    /// user control to generate user member list.
    /// </summary>
    public partial class MemberList : System.Web.UI.UserControl
    {
        private Utility Util
        {
            get { return new Utility(); }
        }

        public string LinkPage = "/User/";//This is default page, can be overwritten
        /// <summary>
        /// Assign this variable the querystring, this will over write actual querystring.
        /// format of querystring is same as actual querysting.
        /// </summary>
        public string QueryString; 
        //Can be used to override query string values
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlLink csslink = new HtmlLink();
            if (Page.Header.FindControl("cssreciaspx") == null)
            {
                csslink.ID = "cssreciaspx";
                csslink.Attributes.Add("rel", "stylesheet");
                csslink.Attributes.Add("type", "text/css");
                csslink.Href = "css/cssreciaspx.css";
                Page.Header.Controls.Add(csslink);
            }

            string ParamURL = LinkPage + "?";
            int OrderBy;
            int SortBy;
            int iPage;
            qstring.Text = QueryString;
            if ((QueryString != null) && (QueryString != ""))
            {
                if (QueryString.Contains("ob="))
                    OrderBy = (int)Util.Val(HttpUtility.ParseQueryString(QueryString).Get("ob"));
                else
                    OrderBy = (int)Util.Val(Request.QueryString["ob"]);

                if (QueryString.Contains("sb="))
                    SortBy = (int)Util.Val(HttpUtility.ParseQueryString(QueryString).Get("sb"));
                else
                    SortBy = (int)Util.Val(Request.QueryString["sb"]);

                if (QueryString.Contains("page="))
                    iPage = (int)Util.Val(HttpUtility.ParseQueryString(QueryString).Get("page"));
                else
                    iPage = (int)Util.Val(Request.QueryString["page"]);
            }
            else
            {
                OrderBy = (int)Util.Val(Request.QueryString["ob"]);
                SortBy = (int)Util.Val(Request.QueryString["sb"]);
                if (string.IsNullOrEmpty(this.Request.QueryString["page"]))
                    iPage = 1;
                else
                    iPage = (int)Util.Val(Request.QueryString["page"]);
            }

            
            if (string.IsNullOrEmpty(this.Request.QueryString["page"]))
                iPage = 1;
            else
                iPage = (int)Util.Val(Request.QueryString["page"]);

            int PageSize = 20;
            int PageIndex = iPage;

            ProviderShowAllUsers Members = new ProviderShowAllUsers(OrderBy, SortBy, PageIndex, PageSize);

            lblcounter.Text = "<img src='/images/community-users-icon.jpg' align='absmiddle'>&nbsp;&nbsp;Total Registered Users: " + Members.TotalCount;

            PagerLinks Pager = PagerLinks.GetInstance();
            Pager.PagerLinksParam(PageIndex, PageSize, Members.TotalCount);

            lbPagerLink.Text = Pager.DisplayNumericPagerLink(ParamURL, OrderBy, SortBy, iPage);

            lblRecpage.Text = Pager.GetBottomPagerCounterCustomPaging;

            MembersRep.DataSource = Members.GetAllUsers();
            MembersRep.DataBind();

            //lblAplhaLetterLinks.Text = AlphabetLink.BuildLinkSearchMembers("searchuser.aspx?input=", "content12", "Browse all username starting with letter", "&nbsp;&nbsp;&nbsp;");
            lblAplhaLetterLinks.Visible = false;

            SortOptionLinks(OrderBy, SortBy, iPage);

            Members = null;
        }


        private void SortOptionLinks(int OrderBy, int Sort_By, int iPage)
        {
            if (OrderBy == 1)
            {
                SortLinkHits.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=2&page=" + iPage;
                SortLinkHits.Text = "Most Popular";
                SortLinkHits.ToolTip = "Sort by Most Popular Users ASC Order";
                ArrowImage1.ImageUrl = Util.SortOptionArrowImage;
                ArrowImage1.Visible = true;

                if (Sort_By == 2)
                {
                    SortLinkHits.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=1&page=" + iPage;
                    SortLinkHits.Text = "Most Popular";
                    SortLinkHits.ToolTip = "Sort by Most Popular Users DESC Order";
                    ArrowImage1.ImageUrl = Util.SortOptionArrowUpImage;
                    ArrowImage1.Visible = true;
                }
            }
            else
            {
                SortLinkHits.NavigateUrl = LinkPage + "?ob=1" + "&sb=1&page=" + iPage;
                SortLinkHits.Text = "Most Popular";
                SortLinkHits.ToolTip = "Sort by Most Popular Users";
                ArrowImage1.Visible = false;
            }

            if (OrderBy == 2)
            {
                SortLinkLastVisit.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=2&page=" + iPage;
                SortLinkLastVisit.Text = "Last Visit";
                SortLinkLastVisit.ToolTip = "Sort by Last Visit Users ASC Order";
                ArrowImage5.ImageUrl = Util.SortOptionArrowImage;
                ArrowImage5.Visible = true;

                if (Sort_By == 2)
                {
                    SortLinkLastVisit.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=1&page=" + iPage;
                    SortLinkLastVisit.Text = "Last Visit";
                    SortLinkLastVisit.ToolTip = "Sort by Last Visit Users DESC Order";
                    ArrowImage5.ImageUrl = Util.SortOptionArrowUpImage;
                    ArrowImage5.Visible = true;
                }
            }
            else
            {
                SortLinkLastVisit.NavigateUrl = LinkPage + "?ob=2" + "&sb=1&page=" + iPage;
                SortLinkLastVisit.Text = "Last Visit";
                SortLinkLastVisit.ToolTip = "Sort by Last Visit Users";
                ArrowImage5.Visible = false;
            }

            if (OrderBy == 3)
            {
                SortLinkUsername.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=2&page=" + iPage;
                SortLinkUsername.Text = "Username";
                SortLinkUsername.ToolTip = "Sort by username ASC order";
                ArrowImage2.ImageUrl = Util.SortOptionArrowImage;
                ArrowImage2.Visible = true;

                if (Sort_By == 2)
                {
                    SortLinkUsername.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=1&page=" + iPage;
                    SortLinkUsername.Text = "Username";
                    SortLinkUsername.ToolTip = "Sort by username DESC order";
                    ArrowImage2.ImageUrl = Util.SortOptionArrowUpImage;
                    ArrowImage2.Visible = true;
                }
                if (Sort_By == 0)
                {
                    SortLinkUsername.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=1&page=" + iPage;
                    SortLinkUsername.Text = "Username";
                    SortLinkUsername.ToolTip = "Sort by username DESC order";
                    ArrowImage2.ImageUrl = Util.SortOptionArrowUpImage;
                    ArrowImage2.Visible = true;
                }
            }
            else
            {
                SortLinkUsername.NavigateUrl = LinkPage + "?ob=3" + "&sb=1&page=" + iPage;
                SortLinkUsername.Text = "Username";
                SortLinkUsername.ToolTip = "Sort by username";
                ArrowImage2.Visible = false;
            }

            if (OrderBy == 4)
            {
                SortLinkDateJoined.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=2&page=" + iPage;
                SortLinkDateJoined.Text = "Date Joined";
                SortLinkDateJoined.ToolTip = "Sort by Date Joined ASC order";
                ArrowImage4.ImageUrl = Util.SortOptionArrowImage;
                ArrowImage4.Visible = true;

                if (Sort_By == 2)
                {
                    SortLinkDateJoined.NavigateUrl = LinkPage + "?ob=" + OrderBy + "&sb=1&page=" + iPage;
                    SortLinkDateJoined.Text = "Date Joined";
                    SortLinkDateJoined.ToolTip = "Sort by Date Joined DESC order";
                    ArrowImage4.ImageUrl = Util.SortOptionArrowUpImage;
                    ArrowImage4.Visible = true;
                }
            }
            else
            {
                SortLinkDateJoined.NavigateUrl = LinkPage + "?ob=4&sb=" + Sort_By + "&page=" + iPage;
                SortLinkDateJoined.Text = "Date Joined";
                SortLinkDateJoined.ToolTip = "Sort by Date Joined";
                ArrowImage4.Visible = false;

            }
        }
    }
}