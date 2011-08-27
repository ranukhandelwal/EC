<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="configuration.aspx.cs" Inherits="configuration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Xd Portal Configuration Manager</title>
           <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
<script type="text/javascript" src="../js/wz_tooltip.js"></script>
<form id="form1" runat="server">
<table cellpadding="0" cellspacing="0" width="50%">
  <tr>
    <td width="21%" align="left" valign="top">
    <div style="margin-left: 5px; margin-top: 25px;">
        <h3>Configuration Manager</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</div>
</div>
</td>
</tr>
</table> 
  <table cellpadding="0" cellspacing="0" align="center" width="90%">
  <tr>
  <tr>
    <td width="100%" align="left" valign="top">
<div style="margin-top: 20px; margin-left: 12px; margin-right: 12px;">
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
<fieldset><legend><span class="sortcat">Configuration</span></legend>
<div style="margin-bottom: 16px; margin-top: 10px; padding-top: 12px;">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="50%" valign="top">
    <!--Begin email configuration panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Email Notification Settings</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<div style="padding: 3px;">
<div style="margin-bottom: 16px">
These email addresses are use in the "From Field" and "To Field" of the email in the submission and comment email notification. You need to change them into a valid email addresses.
</div>
Admin From Email:<br />
<asp:TextBox runat="server" id="adminFromEmail" cssClass="textboxsearch" width="180" EnableViewState="false" />&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('This email will be use in the From Field<br>when sending email notification to user<br>such as registration activation email.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
<div style="padding: 3px;">
To Email:<br />
<asp:TextBox runat="server" id="adminToEmail" cssClass="textboxsearch" width="180" EnableViewState="false" />&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('This email will be use in the To Field<br>when sending email notification to the site Administrator<br>such as recipe, article submission, exception email and comment posting.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
<asp:Button runat="server" id="emailconfig" cssClass="submitadmin" tooltip="Update" Text="Update" OnClick="UpdateAdminEmailSettings_Click" />
</div>
</div>
</div>
</div>
<!--End email configuration panel-->
<div style="clear: both;"><br /></div>
<!--Begin configured show/hide comment panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Enabled/Disabled Recipe Comment</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddlshowhide" runat="server" cssClass="cselect" AutoPostBack="false" EnableViewState="false">
<asp:Listitem Value="1">Enabled Recipe Comment</asp:Listitem>
<asp:Listitem Value="2">Disabled Recipe Comment</asp:Listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="shd" cssClass="submitadmin" tooltip="Show/Hide comment" OnClick="EnabledDisbledRecipeComment_Click" Text="Update"/>&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('<b>Enabled</b> = Show comments and comment form.<br><b>Disabled</b> = Hide comments and comment form.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configured show/hide comment panel-->
<div style="clear: both;"><br /></div>
<!--Begin configured show/hide comment panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Enabled/Disabled Article Comment</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddlshowhidearticlecomment" runat="server" cssClass="cselect" AutoPostBack="false" EnableViewState="false">
<asp:Listitem Value="1">Enabled Article Comment</asp:Listitem>
<asp:Listitem Value="2">Disabled Article Comment</asp:Listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="Button2" cssClass="submitadmin" tooltip="Show/Hide comment" OnClick="EnabledDisableArticleComment_Click" Text="Update"/>&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('<b>Enabled</b> = Show comments and comment form.<br><b>Disabled</b> = Hide comments and comment form.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configured show/hide comment panel-->
    </td>
    <td width="50%" valign="top">
<!--Begin configured profile page-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Configure Profile Page</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddlconfigprofilepage" runat="server" cssClass="cselect" AutoPostBack="false" EnableViewState="false">
<asp:Listitem Value="1">Public Profile Page</asp:Listitem>
<asp:Listitem Value="0">Private Profile Page</asp:Listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="Button1" cssClass="submitadmin" OnClick="ConfigProfilePage_Click" Text="Update"/>&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('<b>Public</b> = Profile page cannot be access by non-member.<br><b>Private</b> = Profile page can be access by any member.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configured show/hide comment panel-->

<div style="clear: both;"><br /></div>
<!--Begin configure CookBook number of recipe allow panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Number of Recipe Allowed to Save in CookBook</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddlconfignumberofrecipeincookbook" runat="server" cssClass="cselect" AutoPostBack="false" EnableViewState="false">
<asp:Listitem Value="20">20 Recipe per user</asp:Listitem>
<asp:Listitem Value="50">50 Recipe per user - default</asp:Listitem>
<asp:Listitem Value="100">100 Recipe per user</asp:Listitem>
<asp:Listitem Value="150">150 Recipe per user</asp:Listitem>
<asp:Listitem Value="200">200 Recipe per user</asp:Listitem>
<asp:Listitem Value="250">250 Recipe per user</asp:Listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="Button3" cssClass="submitadmin" Text="Update" OnClick="CookBookSetting_Click" />&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('Configure the number of recipe the<br>user can save in their CookBook.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configure CookBook number of recipe allow panel-->

<div style="clear: both;"><br /></div>
<!--Begin configure Firends List number of friend allow panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Number of Friends Allowed in Friends List</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddlnumberoffriendsallowed" runat="server" cssClass="cselect" AutoPostBack="false" EnableViewState="false">
<asp:Listitem Value="20">20 Friends per user</asp:Listitem>
<asp:Listitem Value="50">50 Friends per user - default</asp:Listitem>
<asp:Listitem Value="100">100 Friends per user</asp:Listitem>
<asp:Listitem Value="150">150 Friends per user</asp:Listitem>
<asp:Listitem Value="200">200 Friends per user</asp:Listitem>
<asp:Listitem Value="250">250 Friends per user</asp:Listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="Button4" cssClass="submitadmin" Text="Update" OnClick="FriendsListSetting_Click" />&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('Configure the number of friends the<br>user can save in their Friends List.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configure configure Firends List number of friend allow panel-->

<div style="clear: both;"><br /></div>
<!--Begin configured last viewed hours panel-->
<div style="margin-left: 15px; width: 400px;">
    <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Last Viewed Number of Hours</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div style="margin: 12px;">
<asp:dropdownlist id="ddllastviewedhours" runat="server" cssClass="cselect" AutoPostBack="false">
<asp:listitem Value="60">1 hour span</asp:listitem>
<asp:listitem Value="120">2 hours span</asp:listitem>
<asp:listitem Value="180">3 hours span</asp:listitem>
<asp:listitem Value="240">4 hour span</asp:listitem>
<asp:listitem Value="300">5 hours span</asp:listitem>
<asp:listitem Value="360">6 hours span</asp:listitem>
<asp:listitem Value="420">7 hours span</asp:listitem>
<asp:listitem Value="480">8 hour span</asp:listitem>
<asp:listitem Value="960">16 hours span</asp:listitem>
<asp:listitem Value="1860">23 hours span</asp:listitem>
</asp:dropdownlist>
&nbsp;<asp:Button runat="server" id="lvminute" cssClass="submitadmin" OnClick="AdminUpdateLastViewedHours_Click" tooltip="Change number of hours" Text="Update"/>&nbsp;<img src="../images/help.gif" align="absmiddle" border="0" onmouseover="Tip('Configure the number of hours span to display the<br><b>15 Last viewed</b> recipe in the homepage.<br>Current setting is 4 hrs. Any recipe viewed in<br>the last 4 hrs will show in homepage 15 Last Viewed Recipe.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" />
</div>
</div>
</div>
</div>
<!--End configured last viewed hours panel-->
    </td>
  </tr>
</table>
</div>
     </fieldset>
    </div>
</td>
  </tr>
</table>
    </form>
    <!--Begin Footer-->
<div style="clear:both; margin-top: 80px;"><br /></div>
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
