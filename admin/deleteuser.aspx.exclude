<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteuser.aspx.cs" Inherits="admin_deleteuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Deleting a User</title>
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
<table cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="21%" align="left" valign="top">
    <div style="margin-left: 5px; margin-top: 25px;">
        <h3>Membership Manager</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
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
<br />
<span class="bluearrow2">»</span>&nbsp;<a title="Back to membership manager page" href="membershipmanagers.aspx">Membership Manager</a>
<br />
<br />
</div>
</div>
</div>
</div>
<br />
<!--End Admin Task Panel-->
</td>
    <td width="79%" align="left" valign="top">
    <div style="margin-top: 20px; margin-left: 16px; width: 700px;">
<asp:Literal id="JSLiteral" runat="server"></asp:Literal>
<fieldset><legend><span class="sortcat">Deleting a User</span></legend>
    <span class="content2"><b>Note:</b> Deleting a user will delete all items associated with the user such as CookBook, Published Recipe, Published Article.<br />Are you sure you want to delete this user?</span>
    <br /><br />
     <asp:Label runat="server" id="lblusernametodelete" CssClass="content12" EnableViewState="false" />
     <br /><br />
     <span class="content12">Reason:</span><span class="cred2">*</span>&nbsp;<span class="content2">350 maximun characters.</span>
     <br />    
<textarea runat="server" id="Reason" class="textbox" cols="70" rows="4" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
              <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldNote" ControlToValidate="Reason" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter a reason."
          display="Dynamic"> </asp:RequiredFieldValidator>
        <br />
     <asp:Button runat="server" Text="Submit" id="SuspendButton" cssClass="submitadmin" OnClick="DeleteUser_Click" />
     <br /><br /><br />
     </fieldset>
    </div>
</td>
  </tr>
</table>
    </form> 
    <!--Begin Footer-->
<div style="clear:both; margin-top: 150px;"><br /></div>
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
