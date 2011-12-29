<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmsubmitarticle.aspx.cs" Inherits="confirmsubmitarticle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <META HTTP-EQUIV="refresh" CONTENT="3; URL=default.aspx">
    <title>Confirm</title>
        <link href="CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
       <style type="text/css">
      body
      {
         font-family: Verdana, Arial, Serif;
         font-size: 12px;
      }
   </style>
</head>
<body>
<!--Begin Header-->
<div class="headerwrap">
<table border="0" cellpadding="0" cellspacing="0" width="97%">
  <tr>
   <td width="50%" rowspan="2" valign="top"><a title="Myasp-net.com" href="default.aspx"><img src="images/recipelogo.gif" width="357" height="70" border="0" alt="Myasp-net.com" /></a></td>
    <td width="50%" align="right" valign="top">

</td>
  </tr>
  <tr>
    <td width="50%" align="right"><span class="chdate"><%=DateTime.Now.ToString("f")%></span></td>
  </tr>
</table>
</div>
<!--End Header-->
    <form id="form1" runat="server">
<div style="text-align: center; margin-top: 65px;">
<h3><asp:Label ID="lblconfirmmsg" runat="server" /></h3>
<br />
<span class="content2">Please wait, you will be redirected in 3 seconds back to the submit recipe page.</span>
<br />
<br />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="default.aspx" cssClass="content2">Go to home page</asp:HyperLink>
</span></div>    
    </form>
</body>
</html>
