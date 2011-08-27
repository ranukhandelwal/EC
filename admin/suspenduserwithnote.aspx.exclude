<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="suspenduserwithnote.aspx.cs" Inherits="admin_suspenduserwithnote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Suspending a User</title>
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
<fieldset><legend><span class="sortcat">Suspending User</span></legend>
    <div style="margin-bottom: 20px; margin-top: 14px;">
      <asp:Repeater id="SuspenionLogNote" runat="server">
   <ItemTemplate>
<div class="dcnt2" style="border: 1px solid #D7E9FD; margin-bottom: 7px; width: 450px;">
<span class="content2"><b>Date:</b> <%# Eval("Date")%></span>
<br />
<span class="content2"><b>Type:</b> <%# Eval("Type")%></span>
<br />
<span class="content2"><b>Note:</b><br /><%# Eval("Note")%></span>
</div>
   </ItemTemplate>
  </asp:Repeater>  
    </div>
    <div style="margin-bottom: 16px; margin-top: 10px;">
     <asp:Label runat="server" id="lblusernamesuspend" CssClass="content12" EnableViewState="false" />
     </div>
     <span class="content12">Type: </span><asp:dropdownlist id="Type" runat="server" cssClass="ddl" AutoPostBack="false">
    <asp:Listitem Value="Copyright Violation" Selected=True>Copyright Violation</asp:Listitem>
    <asp:Listitem Value="Email Spamming">Email Spamming</asp:Listitem>
    <asp:Listitem Value="Private Message Spamming">Private Message Spamming</asp:Listitem>
    <asp:Listitem Value="Recipe Submission Violation">Recipe Sumission Violation</asp:Listitem>
    <asp:Listitem Value="Article Submission Violation">Recipe Sumission Violation</asp:Listitem>
    <asp:Listitem Value="Profile Information Violation">Profile Information Violation</asp:Listitem>
    <asp:Listitem Value="Harrassing Members">Harrassing Members</asp:Listitem>
    <asp:Listitem Value="Website Security Risk">Website Security Risk</asp:Listitem>
    </asp:dropdownlist>
     <br />
     <span class="content12">Reason:</span><span class="cred2">*</span>
     <br />    
<textarea runat="server" id="Note" class="textbox" cols="70" rows="4" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
              <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldNote" ControlToValidate="Note" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter a reason."
          display="Dynamic"> </asp:RequiredFieldValidator>
        <br />
     <asp:Button runat="server" Text="Submit" id="SuspendButton" cssClass="submitadmin" OnClick="Suspend_User" />
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
