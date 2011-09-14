<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="admin_managermain" Codebehind="managermain.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ExamCrazy Manager</title>
     <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" width="50%">
  <tr>
    <td width="21%" align="left" valign="top">
    <div style="margin-left: 5px; margin-top: 25px;">
        <h3>ExamCrazy Administration Page</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<asp:Button runat="server" id="logout" cssClass="submitadmin" tooltip="Logout" OnClick="LogoutButton_Click" Text="Logout"/>
<br />
</div>
</div>
</td>
</tr>
</table> 
    <div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="50%" valign="top">
    <div style="margin-top: 30px; margin-left: 12px; margin-right: 12px;">
<fieldset>
    <div style="margin-bottom: 16px; margin-top: 10px;">
     </div>
<div style="margin-left: 5px; margin-right: 15px;">
    <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="membershipmanagers.aspx" title="Membership Manager Page"><img src="../images/community-users-icon.jpg" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">&nbsp;User Manager - edit, delete, block and view users statistics.
    </div>
    <div style="clear: both;"><br /></div>
        <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="announcementmanager.aspx" title="Announcement Manager Page"><img src="../images/food-icon.png" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">&nbsp;Announcement Manager - add, edit, deactivate, review and approve jobs, announcement, exams, admissions.
    </div>
    <div style="clear: both;"><br /></div>
    <div style="margin-bottom: 27px; margin-top: 10px;">
    <a href="articlemanager.aspx" title="Article Manager Page"><img src="../images/article-post-edit-icon.jpg" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">&nbsp;Article Manager - edit, delete, add new category, review and approve article.
    </div>   
      <div style="clear: both;"><br /></div>
        <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="categorymanager.aspx" title="Recipe Category Manager Page"><img src="../images/categegory-folder-icon.jpg" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">Recipe Category Manager - edit, delete and add new category.
    </div>
    
     </div>
</div>
     </fieldset>
    </div>
    </td>
    <td width="50%" valign="top">
        <div style="margin-top: 30px; margin-left: 12px; margin-right: 12px;">
<fieldset>
    <div style="margin-bottom: 16px; margin-top: 10px;">
     </div>
<div style="margin-left: 5px; margin-right: 15px;">
    <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="commentsmanager.aspx" title="Recipe Comments Manager Page"><img src="../images/comment-edit-icon.jpg" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 7px;">&nbsp;&nbsp;Recipe Comments Manager - edit and delete recipe comments.
    </div>
       <div style="clear: both;"><br /></div>
        <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="articlecommentsmanager.aspx" title="Article Comment Manager Page"><img src="../images/comment-edit-icon.jpg" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">&nbsp;&nbsp;Article Comments Manager - edit and delete article comments.
    </div>
    <div style="clear: both;"><br /></div>
    <div style="margin-bottom: 16px; margin-top: 10px;">
    <a href="configuration.aspx" title="Site Configuration Manager Page"><img src="../images/Icon_tools_large.png" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">Site Configuration Manager - configured email, number of hours last viewed recipe, enabled/disbled recipe comments and set profile page public or private.
    </div>
     <div style="clear: both;"><br /></div>
    <div style="margin-bottom: 27px; margin-top: 10px;">
    <a href="exceptionlogmanager.aspx" title="Exception Error Log Viewer"><img src="../images/error_icon.png" style="float:left; border: 0;" /></a><div class="content12" style="padding-top: 20px; padding-left: 4px;">&nbsp;Exception Log Manager - view error log, edit, and delete exceptions.
    </div>
     </div>
</div>
     </fieldset>
    </div>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="50%" valign="top">
    <div style="margin-top: 30px; margin-left: 12px; margin-right: 12px;">
<fieldset><legend><span class="sortcat">Statistics</span></legend>
    <div style="margin-bottom: 16px; margin-top: 10px;">
     </div>
<div style="margin-left: 5px; margin-right: 15px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="21%">
            <div style="margin-top: 5px; margin-left: 35px; margin-bottom: 16px;">
           <div class="containersitestat">
    <div style="padding-left: 3px; padding-top: 8px; padding-bottom: 3px;">
    <img src="../images/stats_icon.gif" align="absmiddle" />&nbsp;<span class="content3">Site Statistics</span>
    </div>
    <div style="padding-right: 8px; padding-left: 8px; padding-top: 2px; line-height: 17px;">
     <asp:Label runat="server" id="lbltotalrecipe" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotalarticle" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotalrecipecomments" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotalarticlecomments" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotalsavedrecipeincookbook" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotaluserswhousecookbook" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotaluserswhousefriendslist" EnableViewState="false" /><br />
     <asp:Label runat="server" id="lbltotalprivatemessage" EnableViewState="false" />
    </div>
</div>
        </div>
    </td>
    <td width="21%">
           <div style="margin-top: 5px; margin-left: 35px; margin-bottom: 16px;">
        <div class="containersitestat">
            <div style="padding-left: 3px; padding-top: 8px; padding-bottom: 3px;">
            <img src="../images/stats_icon.gif" align="absmiddle" />&nbsp;<span class="content3">Members Statistics</span>
            </div>
            <div style="padding-right: 8px; padding-left: 8px; padding-top: 2px; line-height: 18px;">
            <asp:Label runat="server" id="lbltotalRegisteredUsers" EnableViewState="false" /><br />
            <asp:Label runat="server" id="lbltotaluserjoinedtoday" EnableViewState="false" /><br />
            <asp:Label runat="server" id="lbltotaluserjoininaweek" EnableViewState="false" /><br />
            <asp:Label runat="server" id="lbltotaluserjoinedinamonth" EnableViewState="false" /><br />
            </div>
       </div>
     </div> 
    </td>
    <td width="56%">
    </td>
  </tr>
</table>
</div>
     </fieldset>
    </div>
    </td>
    <td width="50%" valign="top">
            <div style="margin-top: 30px; margin-left: 12px; margin-right: 12px;">
<fieldset><legend><span class="sortcat">Other</span></legend>
    <div style="margin-bottom: 16px; margin-top: 10px;">
    </div>

    </fieldset>
    </div>
    </td>
  </tr>
</table>
    </div>
    </form>
<!--Begin Footer-->
<div style="clear:both; margin-top: 85px;"><br /></div>
<div class="footerwrap">
<br />
<img src="../images/returntop.gif" alt="return to top" align="absmiddle" border="0" /><a class="dt2" title="Return to top of the page" href="#Top">Return to top</a>
<br />
<span class="content2">
Copyright © 2000 - 2008 Ex-designz.net. All rights reserved. Developed By <a class="dt2" title="Website" href="http://www.ex-designz.net">Dexter Zafra - Ex-designz.net</a></span>
<br />
  <asp:HyperLink id="Powered" cssClass="dt2" ToolTip="Visit our portal website" NavigateURL="http://www.ex-designz.net" runat="server">Powered By Ex-designz.net World Recipe .NET version</asp:HyperLink>
 </div>
<!--End Footer-->
</body>
</html>
