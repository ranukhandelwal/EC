<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popupviewusersuspenionnote.aspx.cs" Inherits="admin_popupviewusersuspenionnote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Viewing Suspension Note</title>
        <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
<!--[if gte IE 5]>
<style>
fieldset {background: #ffffff;}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 20px;">
      <asp:Repeater id="SuspenionLogNote" runat="server">
   <ItemTemplate>
<div class="dcnt2" style="border: 1px solid #D7E9FD; margin-bottom: 7px;">
<span class="content2"><b>Date:</b> <%# Eval("Date")%></span>
<br />
<span class="content2"><b>Type:</b> <%# Eval("Type")%></span>
<br />
<span class="content2"><b>Note:</b><br /><%# Eval("Note")%></span>
</div>
   </ItemTemplate>
  </asp:Repeater>  
    </div>
    </form>
</body>
</html>
