<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="membershipmanagers" Codebehind="membershipmanagers.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Membership Manager</title>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../js/alertbox.js"></script>
    <script type="text/javascript" src="../js/thickbox-compressed.js"></script>
    <script type="text/javascript" src="../js/dragtable.js"></script>
    <script type="text/javascript" src="../js/dropdownmenu.js"></script>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" /> 
   <link href="../CSS/thickbox.css" rel="stylesheet" type="text/css" />      
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
#sddm {margin-top: 6px;}
</style>
<![endif]-->
</head>
<body>
<script type="text/javascript" src="../js/wz_tooltip.js"></script>
    <form id="form1" runat="server">
<table cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="21%" align="left" valign="top">
    <div style="margin-left: 5px; margin-top: 14px;">
        <h3>Membership Manager</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</div>
</div>
</td>
</tr>
</table> 
  <table cellpadding="0" cellspacing="0" width="100%">
  <tr>
  <tr>
    <td width="100%" align="left" valign="top">
<div style="margin-top: 20px; margin-left: 12px; margin-right: 12px;">
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
<fieldset><legend><span class="sortcat">Membership Manager</span></legend>
    <div style="margin-bottom: 5px; margin-top: 10px;">
     <asp:Label runat="server" id="lblcounter" CssClass="content12" style="color: #333333" EnableViewState="false" />&nbsp;&nbsp;-&nbsp;&nbsp;<asp:Label cssClass="content2" style="color: #333333" id="lblsortname" runat="server" EnableViewState="false" />&nbsp;<asp:Label CssClass="content2" style="color: #333333" runat="server" id="lblmsg" Visible="false" />
    </div>
     <div style="clear:both"></div>
     <div style="margin-left: 6px; margin-bottom: 18px; width: 780px; float: left;">
     <fieldset><legend><span class="sortcat">Browse User Name</span></legend>
      <div style="margin-top: 8px; float: left;">
      <asp:Label cssClass="corange" runat="server" id="lblletter" />&nbsp;
      <asp:Label id="lblalphaletter" runat="server" /></div><ul id="sddm">
       <li><a href="javascript:void(0)" onmouseover="mopen('m1')" onmouseout="mclosetime()">Other Options <img src="../images/arrow_down2.gif" border="0" /></a>
          <div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
             <asp:HyperLink ID="linklastupdateprofile" runat="server" />
             <a href="deleteduserlogview.aspx" onmouseover="Tip('View all deleted users log.<br>Find out the reason why the user is deleted.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">View Deleted Users History Log</a>
             <a class="thickbox" href="popupgetuserswhohasnotactivatedaccount.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View all users who has not activated their account after registration.<br>You can resend an account activation email.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">View Users Who Has Not Activated Account</a>
             <a class="thickbox" href="popuplast20userswhosumittedrecipe.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View the last 20 users who submitted a recipe.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">Last 20 Users Who Submitted a Recipe</a>
             <a class="thickbox" href="popuplast20userswhosubmittedarticle.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View the last 20 users who submitted an article.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">Last 20 Users Who Submitted an Article</a>
             <a class="thickbox" href="popuplast25userswhoaddafriend.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View the last 25 users who added a friend in Friends List.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">Last 25 Users Who Added a Friend</a>
             <a class="thickbox" href="popuplast25userswhoaddedrecipeincookbook.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View the last 25 users who added a friend in Friends List.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">Last 25 Users Who Added a Recipe in CookBook</a>
             <a class="thickbox" href="popuplast25userswhocommentedarecipe.aspx?keepThis=true&TB_iframe=true&height=360&width=400" onmouseover="Tip('View the last 25 users who commented a recipe.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">Last 25 Users Who Commented a Recipe</a>
          </div>
      </li>
    </ul>    
      </fieldset>
     </div>
      <div style="margin-bottom: 10px; margin-right: 25px; float: right;">
      <fieldset><legend><span class="sortcat">Search</span></legend>
     <div style="margin-top: 8px; padding-right: 6px;">
     <input type="text" name="usersearcbasicinput" id="usersearcinput" class="textboxsearch" size="20" value="Search..." onfocus="if(this.value=='Search...')value='';" onblur="if(this.value=='')value='Search...';" runat="server">&nbsp;
     <asp:Button ID="Sbuton" runat="server" cssClass="submitadmin" Text="Search" OnClick="SearchUser_Click" />&nbsp;<a class="content2" href="javascript:void(0)" onmouseover="Tip('<b>Search user hint:</b><br>You can search by the following fields:<br>User Name<br>Email Address<br>Firtsname<br>Lastname<br>City<br>State<br>Country', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">hint?</a>
     </div>
    </fieldset>
    </div>
     <div style="clear:both"></div>
<div style="margin-left: 5px; margin-right: 15px;">
    <div>
    <table cellpadding="0" cellspacing="0" width="100%" class="draggable" style="border-left: 1px solid #E1EDFF; border-right: 1px solid #E1EDFF;">
      <tr bgcolor="#D1E9F1">
        <td width="12%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkUsername" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImage2" runat="server" /></td>
        <td width="8%" class="gridtdheader" style="cursor: move;">Photo</td>
        <td width="6%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkHits" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImage1" runat="server" /></td>
        <td width="8%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkDateJoined" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImage4" runat="server" /></td>
        <td width="8%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkLastVisit" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageLastVisit" runat="server" /></td>
        <td width="20%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkEmail" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageEmail" runat="server" /></td>      
        <td width="3%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkCommentRecipe" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageCommentRecipe" runat="server" /></td>
        <td width="3%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkCommentArticle" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageCommentArticle" runat="server" /></td>        
        <td width="3%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkCookBook" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageCookBook" runat="server" /></td>
        <td width="3%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkFriends" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageFriends" runat="server" /></td>
        <td width="4%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortRecipeCount" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageRecipeCount" runat="server" /></td>
        <td width="4%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkArticleCount" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageArticleCount" runat="server" /></td>  
        <td width="4%" class="gridtdheader" style="cursor: move;"><asp:HyperLink id="SortLinkStatus" cssClass="dsortgrid" runat="server" />&nbsp;<asp:Image id="ArrowImageStatus" runat="server" /></td>
        <td width="4%" align="center" class="gridtdheader"><b>Edit</b></td>
        <td width="4%" class="gridtdheader" style="cursor: move;"><b>Delete</b></td>
      </tr>
    <asp:Repeater id="MembersRep" runat="server" OnItemDataBound="MembersRep_ItemDataBound" OnItemCommand="EditSuspendDelete_User">    
    <ItemTemplate>
      <tr onmouseover="this.className='rowhoover';" onmouseout="this.className='row<%# Container.ItemIndex % 2 %>';" class="row<%# Container.ItemIndex % 2 %>">
        <td width="12%" class="tdgrid" align="left" valign="middle">&nbsp;<img src="../images/user_user1.png" />&nbsp;<a class="thickbox content2" onmouseover="Tip('Click to view the complete profile.<br><br><b>-- Login Password --</b><br><b>Login Password: <%# DecryptPass(Eval("Password")) %></b><br><br><b>-- Partial User Info --</b><br><b>Full Name:</b> <%# Eval("FirstName") %> <%# Eval("LastName") %><br><b>Date Joined: </b><%# Eval("RegistrationDate", "{0:M/d/yyyy}")%><br><b>Profile Last Updated On: </b><%# Eval("LastUpdated", "{0:M/d/yyyy}")%><br><b>City: </b><%# Eval("CityID") %><br><b>State: </b><%# Eval("StateID") %><br><b>Country:</b> <%# Eval("CountryID") %><br><br><b>-- Features Settings --</b><br><b>Show FriendsList in Profile:</b>  %>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" href='../popupuserprofile.aspx?uid=<%# Eval("UID") %>&keepThis=true&TB_iframe=true&height=600&width=850'><%# Eval("Username")%></a></td>
         <td width="8%" class="tdgrid" align="left" valign="middle"><div style="padding-top: 4px; padding-bottom: 4px; padding-left: 5px;"><img src='../UserImages/<%# Eval("Photo")%>' width='40' height='30' onmouseover="Tip('<b>Photo:</b><br><img src=&quot;../UserImages/<%# Eval("Photo")%>&quot; width=&quot;160&quot; height=&quot;140&quot;>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"></div></td>  
        <td width="6%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("Hits")%></td>
        <td width="8%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("RegistrationDate", "{0:M/d/yyyy}")%></td>
        <td width="8%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;&nbsp;<%# Eval("LastLoginDate", "{0:M/d/yyyy}")%></td>
        <td width="20%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;<%# Eval("Email1")%></td>      
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lblcountcommentrecipe" EnableViewState="false" /></td>
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lblcountcommentarticle" EnableViewState="false" /></td>       
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lblcookbookcount" EnableViewState="false" /></td>
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lblfriendscount" EnableViewState="false" /></td>      
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lbltotalrecipepostcount" EnableViewState="false" /></td>
        <td width="4%" class="tdgrid" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" id="lblpostedarticlecount" EnableViewState="false" /></td> 
        <td width="4%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;&nbsp;<asp:LinkButton id="ReinstateButton" cssClass="content2" CommandName='ReInstate' CommandArgument='<%# Eval("UID") + "," + Eval("Username") + "," + Eval("Email1") %>' runat="server" /><asp:LinkButton id="suspendbutton" cssClass="content2" CommandName='Suspend' CommandArgument='<%# Eval("UID") + "," + Eval("Username") %>' runat="server" />&nbsp;&nbsp;<asp:HyperLink id="viewsuspensionnotelink" Visible="false" CssClass="thickbox dt" runat="server" /></td>
        <td width="4%" class="tdgrid" align="left" valign="middle">&nbsp;&nbsp;&nbsp;<asp:HyperLink id="editbutton" cssClass="content2" runat="server" /></td>
        <td width="4%" class="tdgrid" align="center" valign="middle"><asp:LinkButton id="delbutton" cssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("UID") %>'/></td>
      </tr>
           </ItemTemplate>
          </asp:Repeater>
           </table> 
    </div> 
</div>   
    <!--Begin Record count,page count and paging link-->
    <div style="margin-left: 4px; margin-top: 22px;">
    <asp:label ID="lblRecpage"
      Runat="server"
      cssClass="content2" style="color: #333333" EnableViewState="false" /><asp:label ID="lbps" runat="server" cssClass="content2" style="color: #333333" EnableViewState="false" />&nbsp;
    <select name="url" class="ddl" Width="170" onchange="javascript:document.location = options[selectedIndex].value">
    <option selected>
    <%=psPageSize + " Records Per Page"%>
    </option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=5&search=<%=SearchInput%>&numdays=<%=NumDays%>">5 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=10&search=<%=SearchInput%>&numdays=<%=NumDays%>">10 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=20&search=<%=SearchInput%>&numdays=<%=NumDays%>">20 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=40&search=<%=SearchInput%>&numdays=<%=NumDays%>">40 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=60&search=<%=SearchInput%>&numdays=<%=NumDays%>">60 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=80&search=<%=SearchInput%>&numdays=<%=NumDays%>">80 Records Per Page</option>
    <option value="membershipmanagers.aspx?ob=<%=psOrderBy%>&sb=<%=psSortBy%>&page=<%=psPageIndex%>&ps=100&search=<%=SearchInput%>&numdays=<%=NumDays%>">100 Records Per Page</option>
    </select>
    <div style="margin-top: 10px;">
    <asp:Label cssClass="content2" id="lbPagerLink" runat="server" Font-Bold="True" EnableViewState="false" />
    </div>
    </div>
    <!--End Record count,page count and paging link-->
     </fieldset>
     
     <div style="width: 460px">
     
     <div style="margin-top: 25px; width: 223px; float:left">
      <fieldset><legend><span class="sortcat">Member Statistics</span></legend>
            <div style="padding-right: 8px; padding-left: 8px; padding-top: 6px; line-height: 18px;">
            <asp:Label CssClass="content2" runat="server" id="lbltotaluserjoinedtoday" EnableViewState="false" /><br />
            <asp:Label CssClass="content2" runat="server" id="lbltotaluserjoininaweek" EnableViewState="false" /><br />
            <asp:Label CssClass="content2" runat="server" id="lbltotaluserjoinedinamonth" EnableViewState="false" /><br />
            </div>
          <div style="margin-left: 7px; margin-top: 8px; padding-right: 6px;">
     <input type="text" id="inputnumdays" class="textboxsearch" size="5" value="31" onfocus="if(this.value=='31')value='';" onblur="if(this.value=='')value='31';" runat="server">&nbsp;
     <asp:Button runat="server" Text="Submit" id="numdaybutton" CssClass="submitadmin" OnClick="NumDays_Click"/>&nbsp;<a class="content2" href="javascript:void(0)" onmouseover="Tip('Enter the number of days<br>you want to view users who<br>joined in the given<br>number of days difference.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()">hint?</a>
     </div>
       </fieldset>
    </div>
    
    <div style="margin-top: 25px; width: 223px; float:right">
      <fieldset><legend><span class="sortcat">Other Statistics</span></legend>
            <div style="padding-right: 8px; padding-left: 8px; padding-top: 6px; line-height: 18px;">
            <asp:Label CssClass="content2" runat="server" id="lbltotalunactivatedaccount" EnableViewState="false" /><br />
            <asp:Label CssClass="content2" runat="server" id="lbltotalsuspendedaccount" EnableViewState="false" /><br />
            </div>
       </fieldset>
    </div>
    
    </div>
    
   </div>
</td>
  </tr>
</table>
    </form> 
    <!--Begin Footer-->
<div style="clear:both; margin-top: 50px;"><br /></div>
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
<br />
</body>
</html>
