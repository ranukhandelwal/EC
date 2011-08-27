<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popuplast25userswhoaddedrecipeincookbook.aspx.cs" Inherits="popuplast25userswhoaddedrecipeincookbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Last 25 Users Who Added a Recipe in Cook Book</title>
        <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="margin-bottom: 8px; margin-top: 8px;">
        <span class="content2"><b>Last 25 Users Who Added a Recipe in Cook Book</b></span>
     </div>
        <asp:Repeater id="UserCookBook" runat="server">     
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <a title="View all recipe of this user in CookBook" href="javascript:void(0)" onClick="window.open('popupviewusercookbook.aspx?uid=<%# Eval("UID")%>&uname=<%# Eval("UserName")%>','','width=400,height=360,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" class="content2"><%# Eval("UserName")%></a><span class="content2"> added <a title="View this recipe" href="javascript:void(0)" onClick="window.open('viewing.aspx?id=<%# Eval("RecipeID")%>','','width=900,height=820,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" class="content2"><%# Eval("RecipeName")%></a> recipe on: <%# Eval("Date", "{0:M/d/yyyy}")%></span>
            </div>         
       </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>