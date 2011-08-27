<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categorymanager.aspx.cs" Inherits="admin_categorymanager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>XD Recipe Category Manager</title>
<style type="text/css" media="screen">@import "../css/cssreciaspx.css";</style>
</head>
<body>
<form id="Form1" style="margin-top: 16px; margin-bottom: 1px;" runat="server">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%" colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="50%"><div style="padding-left: 20px;"><h3>Recipe Category Manager</h3></div>
<div style="padding-left: 20px;"><asp:Label  Font-Names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="padding-left: 20px; margin-bottom: 16px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</div>
</td>
  </tr>
</table>
</td>
  </tr> 
  <tr>
    <td width="21%" align="left" valign="top">
<!--Begin Admin Task Panel-->
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin"><a name="Top"></a>Admin Tasks Menu</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div class="divmenu2">
<asp:Label ID="lbCountRecipe" runat="server" />
<br />
<br />
<asp:Image ID="img3" ImageAlign="AbsBottom" ImageURL="../images/admincategory_icon.gif" AlternateText="Category Manager" runat="server" />
<asp:HyperLink tooltip="Click this link to edit/delete and add a recipe category" runat="server" ID="catmanagerlink" NavigateUrl="categorymanager.aspx"><asp:Label ID="lbCountCat" runat="server" /></asp:HyperLink> 
<br />
<asp:Image ID="img4" ImageAlign="AbsBottom" ImageURL="../images/addnewcategoryimg.gif" AlternateText="Click this link to Add a New Category" runat="server" />
<a title="Click This link to add new category" href="categorymanager.aspx#this"
  ID="AddNewCategory"
  onserverclick="ChangeToAddCat"
  runat="server">Add New Category</a> 
  <br />
  <br />
  Group # 1 = Main Course
  <br />
  Group # 2 = Ethnic Regional
</div>
</div>
</div>
<br />
<!--End Admin Task Panel-->
</td>
   <td width="79%" valign="top">
  <!--Begin update edit form-->
<asp:Panel ID="Panel1" runat="server">
<div style="padding-left: 21px; width:47%;">
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><asp:Label ID="lblheaderform" cssClass="contadmin" runat="server" /></div>
</div>
<div class="contentdisplay3">
<div class="contentdis5">
<asp:Label ID="lblnamedis2" cssClass="content2" runat="server" />
<asp:TextBox runat="server" id="CategoryName" cssClass="textbox" size="18" maxlenght="18" />
<asp:Dropdownlist runat="server" ID="GroupID" AutoPostBack="False" cssClass="cselect" width="150px">
<asp:Listitem Value="1" selected>Main Course</asp:Listitem>
<asp:Listitem Value="2">Ethnic Regional</asp:Listitem>
</asp:Dropdownlist>
<asp:Button runat="server" Text="Update" id="updatebutton" tooltip="Click to update" cssClass="submitadmin" OnClick="Update_Category" />
<asp:Button runat="server" Text="Add" tooltip="Click to add new category" id="AddNewCat" cssClass="submitadmin" onclick="Add_Category" />
<input type="text"  runat="server" id="CategoryID" name="CategoryID" class="textbox" size="2" maxlenght="2" readOnly="True" style="visibility:hidden;">
<br />
<asp:Panel ID="Panel3" runat="server">
<div style="padding-top: 4px; padding-bottom: 6px;">
<span class="content2">
<asp:Label ID="lblrcdcount2" runat="server" />
<br />
<span class="cred">Are you sure you want to delete this category?
<br />
Note: all recipes belong to this category will be deleted as well.
</span>
<br />
<asp:Button runat="server" Text="Delete" tooltip="Click to category category and its associated recipes" id="DelCategory" cssClass="submitadmin" onclick="Delete_Category" />
</span>
</div>
</asp:Panel>
</div>
</div>
<br />
</div>
</asp:Panel>
<!--End update edit form-->
<!--End display edit category name form-->
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
<table width="100%" border="0" cellspacing="1" align="left">
  <tr>
    <th scope="row"><div align="left">
     <asp:DataGrid runat="server" id="Recipes_table" cssclass="hlink" AutoGenerateColumns="False" 
     Backcolor="#ffffff" BorderStyle="none" BorderColor="#E1EDFF" cellpadding="5" Width="95%" HorizontalAlign="Center" PageSize="100" OnItemDataBound="dgCat_ItemDataBound" AllowPaging="false" OnPageIndexChanged="New_Page" onItemCommand="Edit_Handle"> 
  <HeaderStyle Font-Bold="True" BackColor="#B1D4EA" ForeColor="#ffffff" cssclass="header" />
  <AlternatingItemStyle BackColor="White" />                                   
  <Columns>
  <asp:BoundColumn DataField="CatID" HeaderText="CAT_ID" />
  <asp:BoundColumn DataField="Category" HeaderText="Category Name" />
   <asp:BoundColumn DataField="Group" HeaderText="Group" />
  <asp:ButtonColumn Text='<img border="0" src="../images/icon_edit.gif">' HeaderText="Edit" CommandName="edit" />
  <asp:ButtonColumn Text='<img border="0" src="../images/icon_delete.gif">' HeaderText="Delete" CommandName="delete" />
  </Columns>
   <PagerStyle Mode="NumericPages" BackColor="#fcfcfc" HorizontalAlign="left" />
    </asp:DataGrid>                                                                                            
   </div></th>
 </tr>
</table>
</td>
  </tr>
</table>
</form>
<br />
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
<br />
<br />
</body>
</html>
