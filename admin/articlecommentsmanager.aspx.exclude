<%@ Page Language="C#" AutoEventWireup="true" CodeFile="articlecommentsmanager.aspx.cs" Inherits="admin_articlecommentmanager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Article Comment Manager</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function SelectAll()
{
      var ChkAll = document.getElementById('ArticleComments_ctl01_chkAll');     
      var IsChecked = ChkAll.checked;
      var Chk = ChkAll;

      Parent = document.getElementById('ArticleComments');          
      var items = Parent.getElementsByTagName('input');                         

      for(i = 0; i < items.length; i++)
      {               
          if(items[i].id != Chk && items[i].type=="checkbox")
          {           
              if(items[i].checked!= IsChecked)
              {    
                  items[i].click();    
              }
          }
     }            
}
</script> 
</head>
<body>
<form id="form1" style="margin-top: 2px; margin-bottom: 1px;" runat="server">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%" colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="50%"><div style="padding-left: 6px;"><h3>Recipe Comments Manager</h3></div>
<div style="padding-left: 6px;"><asp:Label  Font-Names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="padding-left: 6px; margin-bottom: 16px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="content2" ID="lblSortColName" runat="server" />&nbsp;<asp:Label CssClass="content2" ID="lblCurrentSort" runat="server" />
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
<div class="dcntmenu"><span class="contadmin">Admin Tasks Menu</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div class="divmenu2">
<asp:Label ID="lbCountArticle" runat="server" />
<br />
<br />
<asp:Image ID="img2" ImageAlign="AbsBottom" ImageURL="../images/commentadmin_icon.gif" AlternateTexT="Comment Manager" runat="server" />
<asp:HyperLink tooltip="Click this link to edit/delete recipe comments" runat="server" ID="countcommentlink" NavigateUrl="commentsmanager.aspx"><asp:Label ID="lbCountComments" runat="server" /></asp:HyperLink> 
</div>
</div>
</div>
<br />
<fieldset><legend style="font-size:11px">Search User Who Comment</legend>
      <div class="dcnt2" style="margin-top: 2px;">
          <input type="text" name="searcinput" id="searcinput" class="textboxsearch" size="20" value="Search..." onfocus="if(this.value=='Search...')value='';" onblur="if(this.value=='')value='Search...';" runat="server">&nbsp;<asp:Button ID="Sbuton" runat="server" cssClass="submitadmin" Text="Search" OnClick="SearchUser_Click" />
        </div>         
    </fieldset>
<br />
<fieldset><legend style="font-size:11px">Top 25 Users Who Comment</legend>
    <asp:Repeater id="Top25UsersWhoCommentAnArticle" runat="server">
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <img src="../images/user-icon.gif" />&nbsp;<a href="articlecommentsmanager.aspx?find=<%# Eval("Author")%>" onmouseover="Tip('<b><%# Eval("Author")%></b> wrote (<%# Eval("TotalComments")%>) comments.<br>Click to view all comments by <b><%# Eval("Author")%></b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" class="content2"><%# Eval("Author")%></a>&nbsp;<span class="content2">(<%# Eval("TotalComments")%>)</span>
            </div>         
       </ItemTemplate>
  </asp:Repeater>
    </fieldset>
<br>
<!--End Admin Task Panel-->
</td>
    <td width="79%" valign="top">
<!--Begin update edit form-->
<asp:Panel ID="Panel1" runat="server">
<div style="padding-left: 21px; width:46%;">
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><asp:Label ID="lblheaderform" cssClass="contadmin" runat="server" /></div>
</div>
<div class="contentdisplay3">
<div class="contentdis5">    
<span class="content2">Comment:</span>
<br />
<asp:TextBox runat="server" id="Comments" cssClass="textbox" textmode="multiline" columns="46" rows="5" />
<br />
<asp:Button runat="server" Text="Update" id="updatebutton" cssClass="submitadmin" onclick="Update_Comments" />
<input type="text" runat="server" id="KeyIDs" name="KeyIDs" class="textbox" size="3" maxlenght="3" readOnly="True" style="visibility:hidden;"> 
</div>
</div>
</div>
<br />
</asp:Panel>
<!--End update edit form-->
<table width="100%" border="0" cellspacing="1">
  <tr>
    <th scope="row"><div align="left">
     <asp:GridView runat="server" id="ArticleComments" cssclass="content2" AutoGenerateColumns="False" 
     Backcolor="#ffffff" BorderStyle="none" BorderColor="#E1EDFF" cellpadding="5" Width="95%" HorizontalAlign="Center" PageSize="50" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="NewPage" OnSorting="ArticleComments_Sorting" OnRowDataBound="ArticleComments_RowDataBound" DataKeyNames="COM_ID" OnRowCommand="ArticleComments_RowCommand"> 
     <HeaderStyle Font-Bold="True" BackColor="#B1D4EA" ForeColor="White" cssclass="header" />                          
     <Columns>
          <asp:TemplateField HeaderText="Select">
            <HeaderTemplate>
                <asp:CheckBox ID="chkAll" ToolTip="Check to select or disselect all check boxes" onclick="javascript:SelectAll();" runat="server" />
            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="chkDelete" runat="server" />
            </ItemTemplate>
          </asp:TemplateField>                  
         <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
               <asp:ImageButton ToolTip="Edit this comment" ID="EditImgButton" CommandArgument='<%# Eval("COM_ID") + "," + Eval("COMMENTS") %>' CommandName="EditComment" ImageUrl="../images/icon_edit.gif" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
       <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
           <asp:ImageButton ToolTip="Delete this comment" ID="DelImgButton" CommandArgument='<%# Eval("COM_ID") + "," + Eval("ID") %>' CommandName="DeleteComment" ImageUrl="../images/icon_delete.gif" runat="server" OnClientClick="return confirm('Are you sure you want to delete this comment?');" />
        </ItemTemplate>
      </asp:TemplateField>
     <asp:boundfield DataField="COM_ID" HeaderText="Key" SortExpression="COM_ID" />  
     <asp:boundfield DataField="ID" HeaderText="ID" SortExpression="ID" />  
     <asp:boundfield DataField="Author" HeaderText="Author" SortExpression="Author" />  
     <asp:boundfield DataField="Date" dataformatstring="{0:MMM d, yyyy}" htmlencode="false" HeaderText="Date" SortExpression="Date" />
     <asp:boundfield DataField="COMMENTS" HeaderText="Comments" SortExpression="COMMENTS" /> 
     <asp:hyperlinkfield  HeaderText="Details" Text="View" datanavigateurlfields="ID" datanavigateurlformatstring="../recipedetail.aspx?id={0}#DIS" target="_blank"/> 
     </Columns>
     <PagerStyle CssClass="content12" />
    </asp:GridView>
    <div style="margin-left: 30px; margin-top: 10px;"><asp:Button ID="btnDeleteAll" ToolTip="Delete Selected Comments" runat="server" CssClass="submitadmin" Text="Delete All" OnClick="DeleteAllSelectedItems_Click" OnClientClick="return confirm('Are you sure you want to delete the selected comments?');" /></div>                                                                                   
   </div></th>
 </tr>
</table>
</td>
  </tr>
</table>
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
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
</body>
</html>

