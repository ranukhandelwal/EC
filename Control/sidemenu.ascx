<%@ Control Language="C#" AutoEventWireup="true" Inherits="sidemenu" EnableViewState="false" Codebehind="sidemenu.ascx.cs" %>
<!--Begin Navigation Menu-->
<div class="toproundbluesidemenu">
<div class="toproundbluesidemenuheader"><span class="content3">Main Menu</span></div>
</div>
<div style="padding-top: 0px; padding-left: 0px;">
<div id="b2">
<asp:Panel ID="PanelSideMenuShowUsersLinks" runat="server">
<ul>
<li><a title="Back to hompeage" href="index.aspx">Home</a></li>
    <li><a title="Configure site settings" href="myaccount.aspx">My Account</a></li>
    <li><a title="View, delete and send private message to other members." href="pmview.aspx">My PM Inbox</a></li>
    <li><a title="View my CookBook." href="mycookbook.aspx">My CookBook</a></li>
    <li><a title="View my Friends List." href="myfriendslist.aspx">My Friends List</a></li>
    <li><a title="Browse all members." href="members.aspx">Browse Members</a></li>
    <li><a title="View events valendar." href="events.aspx">Events Calendar</a></li>
    <li><a title="View 100 Newest Recipes" href="sort.aspx?sid=4">Newest Recipes</a></li>
    <li><a title="View 100 Most Popular Recipes" href="sort.aspx?sid=1">Most Popular Recipes</a></li>
    <li><a title="View 100 Highest Rated Recipes" href="sort.aspx?sid=2">Highest Rated Recipes</a></li>
    <li><a title="XD Recipe Support Forum" href="http://www.ex-designz.net/forum.asp?f=29">Support Forum</a></li>
    <li><a title="Download World Recipe v2 C# SQL ASP .NET" href="http://www.ex-designz.net/softwaredetail.asp?fid=1884">Download Here!</a></li>
    <li><a title="Submit a recipe" href="addrecipe.aspx">Submit a Recipe</a></li>
    <li><a title="Publish a cooking related article" href="addarticle.aspx">Publish an Article</a></li>
    <li><a title="About XD Recipe Portal v2" href="http://www.myasp-net.com/">About XD Recipe Portal</a></li>
</ul>
</asp:Panel>
<asp:Panel ID="PanelSideMenuShowAdminLoginLink" runat="server">
<ul>
<li><a title="Back to hompeage" href="index.aspx">Home</a></li>
    <li><a title="XD Portal Administrator Login" href="admin/adminlogin.aspx">Admin Login</a></li>
    <li><a title="Configure site settings" href="myaccount.aspx">My Account</a></li>
    <li><a title="View, delete and send private message to other members." href="pmview.aspx">My PM Inbox</a></li>
    <li><a title="View my CookBook." href="mycookbook.aspx">My CookBook</a></li>
    <li><a title="View my Friends List." href="myfriendslist.aspx">My Friends List</a></li>
    <li><a title="Browse all members." href="members.aspx">Browse Members</a></li>
    <li><a title="View events valendar." href="events.aspx">Events Calendar</a></li>
    <li><a title="View 100 Newest Recipes" href="sort.aspx?sid=4">Newest Recipes</a></li>
    <li><a title="View 100 Most Popular Recipes" href="sort.aspx?sid=1">Most Popular Recipes</a></li>
    <li><a title="View 100 Highest Rated Recipes" href="sort.aspx?sid=2">Highest Rated Recipes</a></li>
    <li><a title="XD Recipe Support Forum" href="http://www.ex-designz.net/forum.asp?f=29">Support Forum</a></li>
    <li><a title="Download World Recipe v2 C# SQL ASP .NET" href="http://www.ex-designz.net/softwaredetail.asp?fid=1884">Download Here!</a></li>
    <li><a title="Submit a recipe" href="addrecipe.aspx">Submit a Recipe</a></li>
    <li><a title="Publish a cooking related article" href="addarticle.aspx">Publish an Article</a></li>
    <li><a title="About XD Recipe Portal v2" href="http://www.myasp-net.com/">About XD Recipe Portal</a></li>
</ul>
</asp:Panel>
<asp:Panel ID="PanelSideMenuHideUsersLinks" runat="server">
<ul>
<li><a title="Back to hompeage" href="index.aspx">Home</a></li>
    <li><a title="View 100 Newest Recipes" href="sort.aspx?sid=4">Newest Recipes</a></li>
    <li><a title="View 100 Most Popular Recipes" href="sort.aspx?sid=1">Most Popular Recipes</a></li>
    <li><a title="View 100 Highest Rated Recipes" href="sort.aspx?sid=2">Highest Rated Recipes</a></li>
    <li><a title="Browse all members." href="members.aspx">Browse Members</a></li>
    <li><a title="View events valendar." href="events.aspx">Events Calendar</a></li>
    <li><a title="XD Recipe Support Forum" href="http://www.ex-designz.net/forum.asp?f=29">Support Forum</a></li>
    <li><a title="Download World Recipe v2 C# SQL ASP .NET" href="http://www.ex-designz.net/softwaredetail.asp?fid=1884">Download Here!</a></li>
    <li><a title="Admin Recipe Manager - Edit/delete and move recipe to different category" href="admin/adminlogin.aspx">Admin Login</a></li>
    <li><a title="Submit a recipe" href="addrecipe.aspx">Submit a Recipe</a></li>
    <li><a title="Publish a cooking related article" href="addarticle.aspx">Publish an Article</a></li>
    <li><a title="About XD Recipe Portal v2" href="http://www.myasp-net.com/">About XD Recipe Portal</a></li>
</ul>
</asp:Panel>
</div>
</div>
<div style="clear:both;">&nbsp;</div>
<!--End Navigation Menu-->