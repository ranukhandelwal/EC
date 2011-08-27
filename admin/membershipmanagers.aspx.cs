#region XD World Recipe V 2.8
// FileName: membershipmanagers.cs
// Author: Dexter Zafra
// Date Created: 3/15/2009
// Website: www.ex-designz.net
#endregion
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
using EC.Security;
using EC.Common.Utilities;
//using EC.BL.Providers.CookBooks;
//using EC.BL.Providers.FriendList;
using EC.Security;
using EC.BL.Providers.User;

public partial class membershipmanagers : BasePageAdmin
{
    private Utility Util
    {
        get { return new Utility(); }
    }

    public int psOrderBy;
    public int psSortBy;
    public int psPageSize;
    public int psPageIndex;
    public string SearchInput;
    public int NumDays;

    protected void Page_Load(object sender, EventArgs e)
    {
        int OrderBy = (int)Util.Val(Request.QueryString["ob"]);
        int SortBy = (int)Util.Val(Request.QueryString["sb"]);

        lblusername.Text = "Welcome Admin:&nbsp;" + UserIdentity.AdminUsername;

        lblletter.Text = "User Name A-Z:";
        lblalphaletter.Text = AlphabetLink.BuildLink("membershipmanagers.aspx?search=", "content12", "Browse all username starting with letter", "&nbsp;&nbsp;&nbsp;");

        if (!string.IsNullOrEmpty(this.Request.QueryString["ob"])
            || !string.IsNullOrEmpty(this.Request.QueryString["sb"])
            || !string.IsNullOrEmpty(this.Request.QueryString["search"])
            || !string.IsNullOrEmpty(this.Request.QueryString["numdays"]))
        {
            lblsortname.Text = Util.GetSortOptionNameMembers(OrderBy) + Util.GetSortOptionOrderBy(SortBy);
            lblreset.Visible = true;
            lblreset.Text = "<img src='../images/arrow.gif' align='absmiddle'><a href='membershipmanagers.aspx' title='Reset to default view'>Reset to Default View</a>";
        }
        else
        {
            lblsortname.Text = Util.GetSortOptionNameMembers(OrderBy);
        }

        if (string.IsNullOrEmpty(Request.QueryString["search"]))
            SearchInput = "none";
        else
            SearchInput = Request.QueryString["search"];

        if (string.IsNullOrEmpty(Request.QueryString["numdays"]))
            NumDays = 0;
        else
            NumDays = int.Parse(Request.QueryString["numdays"]);

        int iPage;

        if (string.IsNullOrEmpty(this.Request.QueryString["page"]))
            iPage = 1;
        else
            iPage = (int)Util.Val(Request.QueryString["page"]);

        if (string.IsNullOrEmpty(this.Request.QueryString["ps"]))
        {
            psPageSize = 20; 
            lbps.Text = " - Showing <b>20</b> records per page";
        }
        else
        {
            psPageSize = (int)Util.Val(Request.QueryString["ps"]);
            lbps.Text = " - Showing <b>" + psPageSize + "</b> records per page";
        }

        linklastupdateprofile.Text = "Sort Last Updated Profile";
        linklastupdateprofile.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=11" + "&sb=" + SortBy + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput;
        linklastupdateprofile.Attributes.Add("onmouseover", "Tip('Sort by the last updated user profile.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
        linklastupdateprofile.Attributes.Add("onmouseout", "UnTip()");

        int PageSize = psPageSize;
        int PageIndex = iPage;

        psOrderBy = OrderBy;
        psSortBy = SortBy;
        psPageIndex = iPage;

        BindList(SearchInput, NumDays, OrderBy, SortBy, PageIndex, PageSize, iPage);
        SortOptionLinks(OrderBy, SortBy, iPage);
        //GetMemberStatistic();
    }

    private void GetMemberStatistic()
    {
        ProviderSiteStatistics MemberStats = new ProviderSiteStatistics();
        MemberStats.fillup();
        MemberStatistics(MemberStats);
        MemberStats = null;
    }

    private void BindList(string SearchInput, int NumDays, int OrderBy, int SortBy, int PageIndex, int PageSize, int iPage)
    {
        ProviderShowAllUsersAdmin Members = new ProviderShowAllUsersAdmin(SearchInput, NumDays, OrderBy, SortBy, PageIndex, PageSize);

        lblcounter.Text = "<img src='../images/members-icon.gif' align='absmiddle'>&nbsp;&nbsp;Total Registered Users: " + Members.TotalCount;

        GetNumberOfUsersWhoJoinedOnGivenDateRange(NumDays, Members.TotalCount);

        string ParamURL = Request.CurrentExecutionFilePath + "?";

        PagerLinks Pager = PagerLinks.GetInstance();
        Pager.PagerLinksParam(PageIndex, PageSize, Members.TotalCount);

        lbPagerLink.Text = Pager.DisplayNumericPagerLink(ParamURL, OrderBy, SortBy, iPage, SearchInput, NumDays);

        lblRecpage.Text = Pager.GetBottomPagerCounterCustomPaging;

        MembersRep.DataSource = Members.GetAllUsers();
        MembersRep.DataBind();

        Members = null;
    }

    private void MemberStatistics(ProviderSiteStatistics MemberStats)
    {
        lbltotaluserjoinedtoday.Text = "Joined Today: " + MemberStats.TotalUsersJoinedToday;
        lbltotaluserjoininaweek.Text = "Joined Last 7 Days: " + MemberStats.TotalUsersJoinedInAWeek;
        lbltotaluserjoinedinamonth.Text = "Joined Last 31 Days: " + MemberStats.TotalUsersJoinedInAMonth;
        lbltotalunactivatedaccount.Text = "UnActivated Account: " + MemberStats.TotalUnActivatedAccount.ToString();
        lbltotalsuspendedaccount.Text = "Suspended Account: " + MemberStats.TotalSuspendedAccount.ToString();

        if (MemberStats.TotalUsersJoinedToday != 0)
        {
            lbltotaluserjoinedtoday.Text = "Joined Today: <a href='membershipmanagers.aspx?numdays=1'>" + MemberStats.TotalUsersJoinedToday + "</a>";
            lbltotaluserjoinedtoday.Attributes.Add("onmouseover", "Tip('View users who joined today.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lbltotaluserjoinedtoday.Attributes.Add("onmouseout", "UnTip()");
        }

        if (MemberStats.TotalUsersJoinedInAWeek != 0)
        {
            lbltotaluserjoininaweek.Text = "Joined Last 7 Days: <a href='membershipmanagers.aspx?numdays=7'>" + MemberStats.TotalUsersJoinedInAWeek + "</a>";
            lbltotaluserjoininaweek.Attributes.Add("onmouseover", "Tip('View users who joined in the last 7 days.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lbltotaluserjoininaweek.Attributes.Add("onmouseout", "UnTip()");
        }

        if (MemberStats.TotalUsersJoinedInAMonth != 0)
        {
            lbltotaluserjoinedinamonth.Text = "Joined Last 31 Days: <a href='membershipmanagers.aspx?numdays=31'>" + MemberStats.TotalUsersJoinedInAMonth + "</a>";
            lbltotaluserjoinedinamonth.Attributes.Add("onmouseover", "Tip('View users who joined in the last 31 days.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lbltotaluserjoinedinamonth.Attributes.Add("onmouseout", "UnTip()");
        }

        if (MemberStats.TotalUnActivatedAccount != 0)
        {
            lbltotalunactivatedaccount.Text = "UnActivated Account: <a class='thickbox' href='popupgetuserswhohasnotactivatedaccount.aspx?keepThis=true&TB_iframe=true&height=360&width=400'>" + MemberStats.TotalUnActivatedAccount + "</a>";
            lbltotalunactivatedaccount.Attributes.Add("onmouseover", "Tip('View all users who has not activated their account after registration.<br>You can resend an account activation email.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lbltotalunactivatedaccount.Attributes.Add("onmouseout", "UnTip()");
        }

        if (MemberStats.TotalSuspendedAccount != 0)
        {
            lbltotalsuspendedaccount.Text = "Suspended Account: <a href='membershipmanagers.aspx?ob=6&sb=2&page=1&ps=20&search=none&numdays=0'>" + MemberStats.TotalSuspendedAccount + "</a>";
            lbltotalsuspendedaccount.Attributes.Add("onmouseover", "Tip('View all suspended users.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            lbltotalsuspendedaccount.Attributes.Add("onmouseout", "UnTip()");
        }

    }

    private void GetNumberOfUsersWhoJoinedOnGivenDateRange(int NumDays, int Count)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["numdays"]))
        {
            switch (NumDays)
            {
                case 0:
                    lblmsg.Text = "";
                    break;
                case 1:
                    lblmsg.Visible = true;
                    lblmsg.Text = " - " + Count + " Users Who Joined Today.";
                    break;
                case 7:
                    lblmsg.Visible = true;
                    lblmsg.Text = " - " + Count + " Users Who Joined in the Last 7 Days.";
                    break;
                case 31:
                    lblmsg.Visible = true;
                    lblmsg.Text = " - " + Count + " Users Who Joined in the Last 31 Days.";
                    break;

                default:
                    lblmsg.Visible = true;
                    lblmsg.Text = " - " + Count + " Users Who Joined in the Last " + NumDays + " Days.";
                    break;
            }
        }
    }

    public string DecryptPass(object o)
    {
        string pass = Encryption.Decrypt(Convert.ToString(o));
        return pass;
    }

    public string IsShowInProfile(object o)
    {
        int val = int.Parse(Convert.ToString(o));
        if (val == 1)
            return "Yes";
        else
            return "No";
            
    }

    public string GetPreferredLayout(object o)
    {
        int val = int.Parse(Convert.ToString(o));

        string GetPrefLayout = "";

        switch (val)
        {
            case 1:
                GetPrefLayout = "Rows";
                break;

            case 2:
                GetPrefLayout = "Grid - 2 Columns";
                break;

            case 3:
                GetPrefLayout = "Grid - 3 Columns";
                break;
        }

        return GetPrefLayout;

    }

    public void SearchUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("membershipmanagers.aspx?search=" + Request.Form["usersearcinput"]);
    }

    public void NumDays_Click(object sender, EventArgs e)
    {
        Response.Redirect("membershipmanagers.aspx?numdays=" + Request.Form["inputnumdays"]);
    }

    public void MembersRep_ItemDataBound(Object s, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            LinkButton delbutton = (LinkButton)(e.Item.FindControl("delbutton"));
            HyperLink viewsuspensionnotelink = (HyperLink)(e.Item.FindControl("viewsuspensionnotelink"));
            LinkButton suspendbutton = (LinkButton)(e.Item.FindControl("suspendbutton"));
            LinkButton ReinstateButton = (LinkButton)(e.Item.FindControl("ReinstateButton"));
            HyperLink editbutton = (HyperLink)(e.Item.FindControl("editbutton"));
            Label lbltotalrecipepostcount = (Label)(e.Item.FindControl("lbltotalrecipepostcount"));
            Label lblfriendscount = (Label)(e.Item.FindControl("lblfriendscount"));
            Label lblcookbookcount = (Label)(e.Item.FindControl("lblcookbookcount"));
            Label lblpostedarticlecount = (Label)(e.Item.FindControl("lblpostedarticlecount"));
            Label lblcountcommentrecipe = (Label)(e.Item.FindControl("lblcountcommentrecipe"));
            Label lblcountcommentarticle = (Label)(e.Item.FindControl("lblcountcommentarticle"));

            int User_ID = (int)DataBinder.Eval(e.Item.DataItem, "UID");
            string User_name = (string)DataBinder.Eval(e.Item.DataItem, "Username");

            //Status
            int isActive = (int)DataBinder.Eval(e.Item.DataItem, "isActive");

            //Item Counter
            int SavedCookBookCount = (int)DataBinder.Eval(e.Item.DataItem, "SavedrecipeCount");
            int FriendsListCount = (int)DataBinder.Eval(e.Item.DataItem, "FriendsCount");
            int SubmittedRecipeCount = (int)DataBinder.Eval(e.Item.DataItem, "PostedRecipeCount");
            int SubmittedArticleCount = (int)DataBinder.Eval(e.Item.DataItem, "PostedArticleCount");
            int UsersCommentRecipeCount = (int)DataBinder.Eval(e.Item.DataItem, "CommentRecipeCount");
            int UsersCommentArticleCount = (int)DataBinder.Eval(e.Item.DataItem, "CommentArticleCount");

            editbutton.Text = "<img src='../images/icon_pencil.gif' alt='Edit' border='0'>";
            editbutton.NavigateUrl = "editprofile.aspx?uid=" + User_ID;

            if (User_ID == 1)
            {
                delbutton.Enabled = false;
                delbutton.Attributes["onclick"] = "alert('You cannot delete the Administrator account. You can only edit the information and photo.')";
                delbutton.Text = "<img border='0' src='../images/user_remove.png'>";
            }
            else
            {
                delbutton.Attributes["onclick"] = "javascript:return confirm('Deleting a user will delete all items associated with the user. Are you sure you want to delete user. " + User_name + " User, UserID#  " + User_ID + "?')";
                delbutton.Text = "<img border='0' src='../images/user_remove.png'>";
            }

            if (SavedCookBookCount != 0)
            {
                string strURL3 = "popupviewusercookbook.aspx?uid=" + User_ID + "&uname=" + User_name + "&keepThis=true&TB_iframe=true&height=300&width=400";
                lblcookbookcount.Text = "<a class='thickbox' target='_blank' href=" + strURL3 + ">" + SavedCookBookCount + "</a>";
                lblcookbookcount.Attributes.Add("onmouseover", "Tip('Click to View - <b>" + User_name + "</b> has (" + SavedCookBookCount + ") recipe saved in Cook Book.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lblcookbookcount.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lblcookbookcount.Text = SavedCookBookCount.ToString();
            }

            if (SubmittedRecipeCount != 0)
            {
                string strURL = "../findallrecipebyauthor.aspx?author=" + User_name;
                lbltotalrecipepostcount.Text = "<a target='_blank' href=" + strURL + ">" + SubmittedRecipeCount + "</a>";
                lbltotalrecipepostcount.Attributes.Add("onmouseover", "Tip('Click to View - <b>" + User_name + "</b> had submitted (" + SubmittedRecipeCount + ") recipe.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lbltotalrecipepostcount.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lbltotalrecipepostcount.Text = SubmittedRecipeCount.ToString();
            }

            if (SubmittedArticleCount != 0)
            {
                string strURL4 = "../findallarticlebyauthor.aspx?author=" + User_name;
                lblpostedarticlecount.Text = "<a target='_blank' href=" + strURL4 + ">" + SubmittedArticleCount + "</a>";
                lblpostedarticlecount.Attributes.Add("onmouseover", "Tip('Click to View - <b>" + User_name + "</b> had submitted (" + SubmittedArticleCount + ") article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lblpostedarticlecount.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lblpostedarticlecount.Text = SubmittedArticleCount.ToString();
            }

            if (FriendsListCount != 0)
            {
                string strURL2 = "popupviewuserfriendslist.aspx?uid=" + User_ID + "&uname=" + User_name + "&keepThis=true&TB_iframe=true&height=300&width=400";
                lblfriendscount.Text = "<a class='thickbox' href=" + strURL2 + ">" + FriendsListCount + "</a>";
                lblfriendscount.Attributes.Add("onmouseover", "Tip('Click to View - <b>" + User_name + "</b> has (" + FriendsListCount + ") friends in Friends List.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lblfriendscount.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lblfriendscount.Text = FriendsListCount.ToString();
            }

            if (UsersCommentRecipeCount != 0)
            {
                lblcountcommentrecipe.Text = "<a class='content2' href=commentsmanager.aspx?find=" + User_name + ">" + UsersCommentRecipeCount + "</a>";
                lblcountcommentrecipe.Attributes.Add("onmouseover", "Tip('Click to view the <b>" + UsersCommentRecipeCount + "</b> recipe comments made by <b>" + User_name + "</b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lblcountcommentrecipe.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lblcountcommentrecipe.Text = UsersCommentRecipeCount.ToString();
            }

            if (UsersCommentArticleCount != 0)
            {
                lblcountcommentarticle.Text = "<a class='content2' href=articlecommentsmanager.aspx?find=" + User_name + ">" + UsersCommentArticleCount + "</a>";
                lblcountcommentarticle.Attributes.Add("onmouseover", "Tip('Click to view the <b>" + UsersCommentArticleCount + "</b> article comments made by <b>" + User_name + "</b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                lblcountcommentarticle.Attributes.Add("onmouseout", "UnTip()");
            }
            else
            {
                lblcountcommentarticle.Text = UsersCommentArticleCount.ToString();
            }

            if (isActive != 0)
            {
                if (User_ID == 1)
                {
                    suspendbutton.Enabled = false;
                    suspendbutton.Attributes["onclick"] = "alert('You cannot suspend the Administrator account.')";
                }

                ReinstateButton.Visible = false;
                suspendbutton.Text = "<img src='../images/inc_grencheck.gif' alt='Suspend' border='0'>";
                suspendbutton.Attributes.Add("onmouseover", "Tip('<b>Status:</b> Active<br>Suspend <b>" + User_name + "</b> account.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            }
            else
            {
                ReinstateButton.Visible = true;
                suspendbutton.Visible = false;
                ReinstateButton.Text = "<img src='../images/lock_user_icon.png' alt='Reinstate' border='0'>";
                ReinstateButton.Attributes.Add("onmouseover", "Tip('<b>Status:</b> Suspended-lock<br>Click to reinstate <br><b>" + User_name + "</b> account.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                ReinstateButton.Attributes.Add("onmouseout", "UnTip()");
                ReinstateButton.Attributes["onclick"] = "javascript:return confirm('Are you sure you want to reinstate. " + User_name + " User, UserID#  " + User_ID + "?')";
                viewsuspensionnotelink.Visible = true;
                viewsuspensionnotelink.Text = "<img src='../images/note_icon_smll1.gif' alt='Suspenion note' border='0'>";
                viewsuspensionnotelink.NavigateUrl = "popupviewusersuspenionnote.aspx?uid=" + User_ID + "&keepThis=true&TB_iframe=true&height=300&width=400";
                viewsuspensionnotelink.Attributes.Add("onmouseover", "Tip('View <b>" + User_name + "</b> suspension log note.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                viewsuspensionnotelink.Attributes.Add("onmouseout", "UnTip()");
            }

            suspendbutton.Attributes.Add("onmouseout", "UnTip()");
            delbutton.Attributes.Add("onmouseover", "Tip('Delete (<b>" + User_name + "</b>) user.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            delbutton.Attributes.Add("onmouseout", "UnTip()");
            editbutton.Attributes.Add("onmouseover", "Tip('Edit (<b>" + User_name + "</b>) user profile.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            editbutton.Attributes.Add("onmouseout", "UnTip()");
        }
    }

    public void EditSuspendDelete_User(Object sender, RepeaterCommandEventArgs e)
    {
        int UserID;
        string UserName;
        string UserEmail;

        if ((e.CommandName == "Delete"))
        {
            UserID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("deleteuser.aspx?uid=" + UserID);
        }

        if ((e.CommandName == "Suspend"))
        {
            //Passing multiple command argument separated by comma so we can split it.
            string[] commandArgsSuspend = e.CommandArgument.ToString().Split(new char[] { ',' });
            UserID = int.Parse(commandArgsSuspend[0].ToString()); // Get the UserID
            UserName = commandArgsSuspend[1].ToString(); // Get the UserName

            Response.Redirect("suspenduserwithnote.aspx?uname=" + UserName + "&uid=" + UserID);
        }

        if ((e.CommandName == "ReInstate"))
        {
            string[] commandArgsReinstate = e.CommandArgument.ToString().Split(new char[] { ',' });
            UserID = int.Parse(commandArgsReinstate[0].ToString());
            UserName = commandArgsReinstate[1].ToString();
            UserEmail = commandArgsReinstate[2].ToString();

            Blogic.ReinstateUserAccount(UserID);

            EmailTemplate SendeMail = new EmailTemplate();

            SendeMail.SendAccountSuspensionReinstateEmail(UserEmail, UserName, "Account Resintate", 2);

            SendeMail = null;

            Response.Redirect("confirmusersuspenddeleteedit.aspx?mode=ReInstate&uid=" + UserID);
        }
    }

    private void SortOptionLinks(int OrderBy, int Sort_By, int iPage)
    {
        if (OrderBy == 1)
        {
            SortLinkHits.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkHits.Text = "Hits";
            SortLinkHits.ToolTip = "Sort by profile views ASC Order";
            SortLinkHits.Attributes.Add("onmouseover", "Tip('Sort by profile views ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkHits.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage1.ImageUrl = Util.SortOptionArrowImage;
            ArrowImage1.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkHits.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkHits.Text = "Hits";
                SortLinkHits.Attributes.Add("onmouseover", "Tip('Sort by profile views DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkHits.Attributes.Add("onmouseout", "UnTip()");
                ArrowImage1.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImage1.Visible = true;
            }
        }
        else
        {
            SortLinkHits.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=1" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkHits.Text = "Hits";
            SortLinkHits.Attributes.Add("onmouseover", "Tip('Sort by profile views ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkHits.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage1.Visible = false;
        }

        if (OrderBy == 2)
        {
            SortLinkEmail.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkEmail.Text = "Email";
            SortLinkEmail.Attributes.Add("onmouseover", "Tip('Sort by email ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"); 
            SortLinkEmail.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageEmail.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageEmail.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkEmail.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkEmail.Text = "Email";
                SortLinkEmail.Attributes.Add("onmouseover", "Tip('Sort by email DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkEmail.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageEmail.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageEmail.Visible = true;
            }
        }
        else
        {
            SortLinkEmail.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=2" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkEmail.Text = "Email";
            SortLinkEmail.Attributes.Add("onmouseover", "Tip('Sort by email ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkEmail.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageEmail.Visible = false;
        }

        if (OrderBy == 3)
        {
            SortLinkUsername.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkUsername.Text = "Username";
            SortLinkUsername.Attributes.Add("onmouseover", "Tip('Sort by username ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkUsername.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage2.ImageUrl = Util.SortOptionArrowImage;
            ArrowImage2.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkUsername.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkUsername.Text = "Username";
                SortLinkUsername.Attributes.Add("onmouseover", "Tip('Sort by username DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkUsername.Attributes.Add("onmouseout", "UnTip()");
                ArrowImage2.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImage2.Visible = true;
            }
            if (Sort_By == 0)
            {
                SortLinkUsername.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkUsername.Text = "Username";
                SortLinkUsername.Attributes.Add("onmouseover", "Tip('Sort by username DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkUsername.Attributes.Add("onmouseout", "UnTip()");
                ArrowImage2.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImage2.Visible = true;
            }
        }
        else
        {
            SortLinkUsername.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=3" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkUsername.Text = "Username";
            SortLinkUsername.Attributes.Add("onmouseover", "Tip('Sort by username DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkUsername.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage2.Visible = false;
        }

        if (OrderBy == 4)
        {
            SortLinkDateJoined.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkDateJoined.Text = "Date Joined";
            SortLinkDateJoined.Attributes.Add("onmouseover", "Tip('Sort by Date Joined ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkDateJoined.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage4.ImageUrl = Util.SortOptionArrowImage;
            ArrowImage4.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkDateJoined.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkDateJoined.Text = "Date Joined";
                SortLinkDateJoined.Attributes.Add("onmouseover", "Tip('Sort by Date Joined DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkDateJoined.Attributes.Add("onmouseout", "UnTip()");
                ArrowImage4.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImage4.Visible = true;
            }
        }
        else
        {
            SortLinkDateJoined.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=4&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkDateJoined.Text = "Date Joined";
            SortLinkDateJoined.Attributes.Add("onmouseover", "Tip('Sort by Date Joined ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkDateJoined.Attributes.Add("onmouseout", "UnTip()");
            ArrowImage4.Visible = false;

        }

        if (OrderBy == 5)
        {
            SortLinkLastVisit.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkLastVisit.Text = "Last Visit";
            SortLinkLastVisit.Attributes.Add("onmouseover", "Tip('Sort by last visit ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkLastVisit.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageLastVisit.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageLastVisit.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkLastVisit.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkLastVisit.Text = "Last Visit";
                SortLinkLastVisit.Attributes.Add("onmouseover", "Tip('Sort by last visit DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkLastVisit.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageLastVisit.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageLastVisit.Visible = true;
            }
        }
        else
        {
            SortLinkLastVisit.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=5" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkLastVisit.Text = "Last Visit";
            SortLinkLastVisit.Attributes.Add("onmouseover", "Tip('Sort by last visit DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkLastVisit.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageLastVisit.Visible = false;
        }

        if (OrderBy == 6)
        {
            SortLinkStatus.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkStatus.Text = "Status";
            SortLinkStatus.Attributes.Add("onmouseover", "Tip('Sort by status ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkStatus.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageStatus.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageStatus.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkStatus.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkStatus.Text = "Status";
                SortLinkStatus.Attributes.Add("onmouseover", "Tip('Sort by status DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkStatus.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageStatus.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageStatus.Visible = true;
            }
        }
        else
        {
            SortLinkStatus.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=6" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkStatus.Text = "Status";
            SortLinkStatus.Attributes.Add("onmouseover", "Tip('Sort by status DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkStatus.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageStatus.Visible = false;
        }

        if (OrderBy == 7)
        {
            SortLinkCookBook.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCookBook.Text = "CB";
            SortLinkCookBook.Attributes.Add("onmouseover", "Tip('<b>Cook Book</b> - Sort by number of recipe saved ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCookBook.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCookBook.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageCookBook.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkCookBook.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkCookBook.Text = "CB";
                SortLinkCookBook.Attributes.Add("onmouseover", "Tip('<b>Cook Book</b> - Sort by number of recipe saved DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkCookBook.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageCookBook.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageCookBook.Visible = true;
            }
        }
        else
        {
            SortLinkCookBook.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=7" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCookBook.Text = "CB";
            SortLinkCookBook.Attributes.Add("onmouseover", "Tip('<b>Cook Book</b> - Sort by number of recipe saved DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCookBook.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCookBook.Visible = false;
        }

        if (OrderBy == 8)
        {
            SortLinkFriends.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkFriends.Text = "FL";
            SortLinkFriends.Attributes.Add("onmouseover", "Tip('<b>Friends List</b> - Sort by number of friends ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkFriends.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageFriends.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageFriends.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkFriends.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkFriends.Text = "FL";
                SortLinkFriends.Attributes.Add("onmouseover", "Tip('<b>Friends List</b> -Sort by number of friends DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkFriends.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageFriends.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageFriends.Visible = true;
            }
        }
        else
        {
            SortLinkFriends.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=8" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkFriends.Text = "FL";
            SortLinkFriends.Attributes.Add("onmouseover", "Tip('<b>Friends List</b> -Sort by number of friends DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkFriends.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageFriends.Visible = false;
        }

        if (OrderBy == 9)
        {
            SortRecipeCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortRecipeCount.Text = "Recipe";
            SortRecipeCount.Attributes.Add("onmouseover", "Tip('Sort by number of recipe submitted ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortRecipeCount.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageRecipeCount.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageRecipeCount.Visible = true;

            if (Sort_By == 2)
            {
                SortRecipeCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortRecipeCount.Text = "Recipe";
                SortRecipeCount.Attributes.Add("onmouseover", "Tip('Sort by number of recipe submitted DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortRecipeCount.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageRecipeCount.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageRecipeCount.Visible = true;
            }
        }
        else
        {
            SortRecipeCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=9" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortRecipeCount.Text = "Recipe";
            SortRecipeCount.Attributes.Add("onmouseover", "Tip('Sort by number of recipe submitted DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortRecipeCount.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageRecipeCount.Visible = false;
        }

        if (OrderBy == 10)
        {
            SortLinkArticleCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkArticleCount.Text = "Article";
            SortLinkArticleCount.Attributes.Add("onmouseover", "Tip('Sort by number of article submitted ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkArticleCount.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageArticleCount.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageArticleCount.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkArticleCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkArticleCount.Text = "Article";
                SortLinkArticleCount.Attributes.Add("onmouseover", "Tip('Sort by number of article submitted DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkArticleCount.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageArticleCount.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageArticleCount.Visible = true;
            }
        }
        else
        {
            SortLinkArticleCount.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=10" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkArticleCount.Text = "Article";
            SortLinkArticleCount.Attributes.Add("onmouseover", "Tip('Sort by number of article submitted DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkArticleCount.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageArticleCount.Visible = false;
        }

        if (OrderBy == 12)
        {
            SortLinkCommentRecipe.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCommentRecipe.Text = "CR";
            SortLinkCommentRecipe.Attributes.Add("onmouseover", "Tip('<b>Comment Recipe</b> - Sort by number of recipe comments users wrote ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCommentRecipe.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCommentRecipe.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageCommentRecipe.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkCommentRecipe.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkCommentRecipe.Text = "CR";
                SortLinkCommentRecipe.Attributes.Add("onmouseover", "Tip('<b>Comment Recipe</b> - Sort by number of recipe comments users wrote DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkCommentRecipe.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageCommentRecipe.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageCommentRecipe.Visible = true;
            }
        }
        else
        {
            SortLinkCommentRecipe.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=12" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCommentRecipe.Text = "CR";
            SortLinkCommentRecipe.Attributes.Add("onmouseover", "Tip('<b>Comment Recipe</b> - Sort by number of recipe comments users wrote DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCommentRecipe.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCommentRecipe.Visible = false;
        }

        if (OrderBy == 13)
        {
            SortLinkCommentArticle.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=2&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCommentArticle.Text = "CA";
            SortLinkCommentArticle.Attributes.Add("onmouseover", "Tip('<b>Comment Article</b> - Sort by number of article comments users wrote ASC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCommentArticle.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCommentArticle.ImageUrl = Util.SortOptionArrowImage;
            ArrowImageCommentArticle.Visible = true;

            if (Sort_By == 2)
            {
                SortLinkCommentArticle.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=" + OrderBy + "&sb=1&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
                SortLinkCommentArticle.Text = "CA";
                SortLinkCommentArticle.Attributes.Add("onmouseover", "Tip('<b>Comment Article</b> - Sort by number of article comments users wrote DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
                SortLinkCommentArticle.Attributes.Add("onmouseout", "UnTip()");
                ArrowImageCommentArticle.ImageUrl = Util.SortOptionArrowUpImage;
                ArrowImageCommentArticle.Visible = true;
            }
        }
        else
        {
            SortLinkCommentArticle.NavigateUrl = Request.CurrentExecutionFilePath + "?ob=13" + "&sb=" + Sort_By + "&page=" + iPage + "&ps=" + psPageSize + "&search=" + SearchInput + "&numdays=" + NumDays;
            SortLinkCommentArticle.Text = "CA";
            SortLinkCommentArticle.Attributes.Add("onmouseover", "Tip('<b>Comment Article</b> - Sort by number of article comments users wrote DESC order', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')");
            SortLinkCommentArticle.Attributes.Add("onmouseout", "UnTip()");
            ArrowImageCommentArticle.Visible = false;
        }
    }
}
