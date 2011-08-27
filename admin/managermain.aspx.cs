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
//using EC.BL.Providers.Recipes;
using EC.Common;
using EC.Model;
using EC.Common.Utilities;
using EC.BL.Providers.User;


public partial class admin_managermain : BasePageAdmin
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Get admin username from the sessioan variable and place it in the label.
        lblusername.Text = "Welcome Admin:&nbsp;" + UserIdentity.AdminUsername + "<br><span class='content2'>Login session will expire in " + Session.Timeout + " mins.</span>";

        ProviderSiteStatistics SiteStats = new ProviderSiteStatistics();
        //SiteStats.fillup();

        lbltotalrecipe.Text = "Recipes: " + string.Format("{0:#,###}", SiteStats.TotalRecipe);
        lbltotalarticle.Text = "Articles: " + SiteStats.TotalArticle;
        lbltotalrecipecomments.Text = "Recipe Comments: " + SiteStats.TotalRecipeComments;
        lbltotalarticlecomments.Text = "Article Comments: " + SiteStats.TotalArticleComments;
        lbltotalsavedrecipeincookbook.Text = "Recipes in CookBook: " + SiteStats.TotalSavedRecipesInCookBook;
        lbltotaluserswhousecookbook.Text = "Users in CookBook: " + SiteStats.TotalUsersWhoUseCookBook;
        lbltotaluserswhousefriendslist.Text = "Users in FriendsList: " + SiteStats.TotalUsersWhoUseFriendsList;
        lbltotalprivatemessage.Text = "Private Messages: " + SiteStats.TotalPrivateMessage;
        lbltotalRegisteredUsers.Text = "Total Members: " + SiteStats.TotalMembers;
        lbltotaluserjoinedtoday.Text = "Joined Today: " + SiteStats.TotalUsersJoinedToday;
        lbltotaluserjoininaweek.Text = "Joined Last 7 Days: " + SiteStats.TotalUsersJoinedInAWeek;
        lbltotaluserjoinedinamonth.Text = "Joined Last 31 Days: " + SiteStats.TotalUsersJoinedInAMonth;

        SiteStats = null;
    }

    //Handles logout
    public void LogoutButton_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("adminlogin.aspx");
    }
}
