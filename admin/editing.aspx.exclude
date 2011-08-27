<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="editing.aspx.cs" Inherits="admin_editing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Editing recipe</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%" colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="50%"><div style="padding-left: 20px;"><h3>Recipe Manager &raquo; Editing Recipe</h3></div>
<div style="padding-left: 20px;"><asp:Label font-name="verdana" font-size="9" ID="lblusername" runat="server" /></div>
</td>
  </tr>
</table>
<br />
</td>
  </tr>
  <tr>
    <td width="21%" align="left" valign="top">
<!--Begin Admin Task Panel-->
<div style="margin-right: 14px;">
 <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div class="dcntmenu"><span class="contadmin">Admin Tasks Menu</span></div>
</div>
<div class="contentdisplayadmin">
<div class="contentdis5">
<div class="divmenu2">
<span class="bluearrow2">»</span>&nbsp;<asp:HyperLink runat="server" ID="lblmangermainpagelink" ToolTip="Back to recipe manager home" NavigateUrl="recipemanager.aspx">Recipe Manager Home</asp:HyperLink>
<br />
</div>

<div style="margin-top: 5px; padding: 7px;">
<span class="content8"><img src="../images/informationicon.gif" style="float: left;" />&nbsp;If you want to move this recipe to different category, select a category from the dropdown menu, otherwise don't do nothing.
</span>
</div>
<div style="margin-top: 5px; padding: 7px;">
<span class="content8"><img src="../images/informationicon.gif" style="float: left;" />&nbsp;Maximum Image size is 200 x 200 and less than 30,000 bytes.
<br />
If you don't want to update or upload a photo, just leave it blank.
</span>
</div>

</div>
</div>
</div>
<!--End Admin Task Panel-->
</td>
    <td width="79%" valign="top">
    <asp:PlaceHolder id="PlaceHolder1" runat="server">
    <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana" Visible="false" />
      <table width="70%" border="0" cellpadding="3" cellspacing="1" align="left">
          <tr>
              <td colspan="2">
               <div class="nifty">
<b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
<div style="text-align: left; padding-left: 6px;padding-bottom: 2px;"><span class="contadmin">Updating Recipe ID #: <%=Request.QueryString["id"]%></span></div>
</div>
    </td>
</tr>
      <tr>
          <td bgcolor="#F4F9FF" class="content2"><b>Name:</b></td>   		
             <td bgcolor="#FBFDFF">
              <asp:TextBox runat="server" id="Name" cssClass="textbox" Width="280px" />
       </td>
   </tr>
<tr>
    <td bgcolor="#F4F9FF" class="content2"><b>Category:</b></td>   		
        <td bgcolor="#FBFDFF">
   <asp:dropdownlist id="CategoryID" runat="server" cssClass="cselect" AutoPostBack="false"></asp:dropdownlist>
  </td>
</tr>
      <tr>
           <td bgcolor="#F4F9FF" class="content2"><b>Author:</b></td>   		
                <td bgcolor="#FBFDFF">
                <asp:Label ID="lblauthorname" runat="server" cssClass="cmaron" EnableViewState="false" />
                  <input type="hidden" id="Userid" size="25" class="textbox" runat="server" />
                 <input type="hidden" id="Author" name="Author" size="25" class="textbox" runat="server" />
        </td>
    </tr>
<tr>
     <td bgcolor="#F4F9FF" class="content2"><b>Hits:</b></td>   		
         <td bgcolor="#FBFDFF">
            <asp:TextBox runat="server" id="Hits" cssClass="textbox" Width="53px" />
       </td>
</tr>
     <tr>
         <td valign="top" bgcolor="#F4F9FF" class="content2"><b>Photo:</b></td>
            	 <td bgcolor="#FBFDFF">       	 
            	 <img src="<%=strRecipeImage%>" style="margin-top: 12px; border: solid 1px #A0BEE2; padding: 1px;" width="150" height="120" />         	 
       </td>
 </tr>
       <tr>
           <td bgcolor="#F4F9FF" valign="top" class="content2"><b>Upload/Edit Photo:</b></td>   		
                <td bgcolor="#FBFDFF">
                 <asp:FileUpload ID="RecipeImageFileUpload" runat="server" />&nbsp;<span class="content2">
        </td>
    </tr>
     <tr>
         <td valign="top" bgcolor="#F4F9FF" class="content2"><b>Ingredients:</b></td>
            	 <td bgcolor="#FBFDFF">
                <asp:TextBox runat="server" id="Ingredients" cssClass="textbox" textmode="multiline" columns="80" rows="18" />
       </td>
 </tr>
         <tr>
               <td valign="top" bgcolor="#F4F9FF" class="content2"><b>Instructions:</b></td>  		
                 <td bgcolor="#FBFDFF">
                    <asp:TextBox runat="server" id="Instructions" cssClass="textbox" textmode="multiline" columns="80" rows="18" />
         </td>
    </tr>
<tr>
       <td align=left colspan=2 bgcolor="#ffffff">
         <div style="margin-left: 135px;">
            <asp:Button runat="server" Text="Update" id="updatebutton" cssClass="submitadmin" tooltip="Click to update" OnClick="Update_Recipe"/>
            <asp:Button runat="server" Text="Cancel" id="cancelbutton" cssClass="submitadmin" tooltip="Click to cancel" OnClick="Cancel_Update"/>
       </div>
     </td>
   </tr>
   </table>
   </asp:PlaceHolder>
  </td>
</tr>
</table>
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
    </div>   
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
</form>
</body>
</html>
