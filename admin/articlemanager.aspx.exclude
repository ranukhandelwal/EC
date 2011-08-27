<%@ Page Language="C#" AutoEventWireup="true" CodeFile="articlemanager.aspx.cs" Inherits="admin_articlemanager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>XD World Recipe Article Manager</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
<table cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="21%" align="left" valign="top">
    <div style="margin-left: 5px;">
        <h3>Article Manager</h3>
<div><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main Page</a>
</div>
</div>
</td>
    <td width="79%"></td>
  </tr>
  <tr>
    <td width="21%" align="left" valign="top">
<!--Begin Admin Task Panel-->
<div style="margin-top: 20px; margin-left: 5px;">
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Admin Tasks Menu</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div class="divmenu2">
<asp:Label ID="lbCountArticle" runat="server" />
<br />
<br />
<span class="bluearrow2">»</span>&nbsp;<a title="Back to article category manager default view" href="articlemanager.aspx">Default View</a>
<br />
<br />
<asp:Image ID="img4" ImageAlign="AbsBottom" ImageURL="../images/addnewcategoryimg.gif" AlternateText="Click this link to Add a New article Category" runat="server" />
<a title="Click This link to add new article category" href="articlemanager.aspx#this"
  ID="AddNewCategory"
  onserverclick="ChangeToAddCat"
  runat="server">Add New Article Category</a> 
  <br />
  <br />
</div>
</div>
</div>
</div>
<br />
<!--End Admin Task Panel-->
<div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Last 10 Updated Articles</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div class="divmenu2">
        <asp:Repeater id="LastUpdatedArticles" runat="server">     
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <span class="arrowgr">&raquo;</span>&nbsp;<a title="View article." href="javascript:void(0)" onmouseover="Tip('Click to view<br><b>Author: </b><%# Eval("Author")%><br><b>Updated on:</b> <%# Eval("DateUpdated")%>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onClick="window.open('articlepreview.aspx?aid=<%# Eval("AID")%>','','width=700,height=850,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" class="content12"><%# Eval("Title")%></a>
            </div>         
       </ItemTemplate>
    </asp:Repeater>
</div>
</div>
</div>
<br />
</td>
    <td width="79%" align="left" valign="top">
        <div style="margin-left: 20px; margin-top: 20px; margin-right: 50px;">
        <asp:Panel ID="Panel2" runat="server" Width="500px">
        <div style="width:400px">
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><asp:Label ID="lblheaderform" cssClass="contadmin" runat="server" /></div>
</div>
<div class="contentdisplay3">
<div class="contentdis5">
<asp:Label ID="lblnamedis2" cssClass="content2" runat="server" />
<asp:TextBox runat="server" id="CategoryName" cssClass="textbox" width="200px" maxlenght="18" />
<asp:Button runat="server" Text="Update" id="updatebutton" tooltip="Click to update" cssClass="submitadmin" OnClick="Update_Category" />
<asp:Button runat="server" Text="Add" tooltip="Click to add new category" id="AddNewCat" cssClass="submitadmin" OnClick="Add_Category"/>
<input type="text"  runat="server" id="CategoryID" name="CategoryID" class="textbox" size="2" maxlenght="2" readOnly="True" style="visibility:hidden;">
<br />
<asp:Panel ID="Panel3" runat="server">
<div style="padding-top: 4px; padding-bottom: 6px;">
<span class="content2">
<span class="cred">Are you sure you want to delete this category?
<br />
Note: all article belong to this category will be deleted as well.
</span>
<br />
<asp:Button runat="server" Text="Delete" tooltip="Click to delete category and its associated recipes" id="DelCategory" cssClass="submitadmin" />
</span>
</div>
</asp:Panel>
</div>
</div>
<br />
</div>
</asp:Panel>
<div style="margin-bottom: 16px;">
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
    <fieldset><legend>Article Waiting for Approval</legend>
    <div style="margin-bottom: 5px;">
    <asp:Label ID="lblcountunapproverecipe" cssClass="content12" runat="server" />
    </div>
    <asp:Repeater id="UnApprovedArticleList" runat="server" OnItemDataBound="UnApprovedArticleList_ItemDataBound" OnItemCommand="ApprovedDelete_Article">
   <ItemTemplate>
<div class="dcnt2">
<asp:LinkButton id="approvebutton" cssClass="content2" CommandName='Approved' CommandArgument='<%# Eval("ID") + "," + Eval("UID")%>' runat="server" />&nbsp;&nbsp;<asp:HyperLink id="editunapprovebutton" cssClass="content2" runat="server" />&nbsp;&nbsp;<asp:LinkButton id="delbuttonunapprove" cssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("ID") + "," + Eval("UID")%>'/>&nbsp;&nbsp;<a class="dt" href='javascript:void(0)' onClick="window.open('articlepreview.aspx?aid=<%# Eval("ID") %>','','width=850,height=700,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" onmouseover="Tip('Click to preview and review article.<br><b>Category: </b><%# Eval("Category") %><br><b>Author: </b><%# Eval("Author") %><br><b>Posted on: </b> <%# Eval("Date", "{0:M/d/yyyy}")%>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"><%# Eval("Title")%></a></span>
</div>
   </ItemTemplate>
  </asp:Repeater>
    </fieldset>
</div>
    <fieldset><legend>Available Article Category</legend>
    <div style="margin-bottom: 5px;">
     <span class="content12">Edit/Delete a category</span>
     </div>
    <asp:Repeater id="ArtCategoryList" runat="server" OnItemDataBound="ArtCategoryList_ItemDataBound" OnItemCommand="Delete_Category">
   <ItemTemplate>
<div class="dcnt2">
<asp:HyperLink id="editbutton2" NavigateUrl='<%# "articlemanager.aspx?editcatid=" + Eval("CAT_ID") + "&catname=" + Eval("CAT_NAME") %>' cssClass="content2" runat="server" />&nbsp;&nbsp;<asp:LinkButton id="delbutton2" cssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("CAT_ID") %>'/>&nbsp;&nbsp;<span class="catart1"><%# Eval("CAT_NAME") %> (<%# Eval("REC_COUNT") %>)</span>
</div>
   </ItemTemplate>
  </asp:Repeater>
    </fieldset>
    </div>
    <div style="margin-left: 20px; margin-top: 20px; margin-right: 50px;">   
    <fieldset><legend>Updating Article Category Listing</legend>
    <div style="margin-bottom: 5px;">
    <span class="content12">Select a category</span>
    </div>
    <asp:Repeater id="AdminUpdateArtCatList" runat="server">
   <ItemTemplate>
<div class="dcnt2">
<img src="../images/arrow.gif" alt="" /><a class="dtcat" title="Update an article in <%# Eval("CAT_NAME") %> category" href='<%# Eval("CAT_ID", "articlemanager.aspx?catid={0}") %>' onmouseover="Tip('Click this link to edit or delete an article in <b><%# Eval("CAT_NAME") %></b> category.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"><%# Eval("CAT_NAME") %> (<%# Eval("REC_COUNT") %>)</a>
</div>
   </ItemTemplate>
  </asp:Repeater>
    </fieldset>    
    </div>
    <div style="margin-left: 20px; margin-top: 20px; margin-right: 50px;">  
    <asp:Panel ID="Panel1" runat="server" Width="700px">
    <fieldset><legend><asp:Label font-names="verdana" ID="lbcatname" runat="server" /> Category</legend>
    <asp:Literal id="Error" runat="server"></asp:Literal>
    <asp:Repeater id="ArticleCat" runat="server" OnItemDataBound="ArticleCat_ItemDataBound" OnItemCommand="Delete_Article">
      <ItemTemplate>
<div class="dcnt2">
<asp:HyperLink id="editbutton3" cssClass="content2" runat="server" />&nbsp;&nbsp;<asp:LinkButton id="delbutton3" cssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("ID") %>'/>&nbsp;&nbsp;<a class="dt" href='javascript:void(0)' onClick="window.open('articlepreview.aspx?aid=<%# Eval("ID") %>','','width=850,height=700,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" onmouseover="Tip('Click to preview article.<br><b>Author: </b><%# Eval("Author") %><br><b>Hits: </b><%# Eval("Hits") %><br><b>Posted on: </b> <%# Eval("Post_Date", "{0:M/d/yyyy}")%>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"><%# Eval("Title")%></a></span>
</div>
      </ItemTemplate>
  </asp:Repeater>
  </fieldset> 
    </asp:Panel>
    </div>
</td>
  </tr>
</table>
    </form>
    <script type="text/javascript" src="../js/wz_tooltip.js"></script>
    <!--Begin Footer-->
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
