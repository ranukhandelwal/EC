<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popuplast25userswhocommentedarecipe.aspx.cs" Inherits="popuplast25userswhocommentedarecipe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Last 25 Users Who Commented a Recipe</title>
        <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="margin-bottom: 8px; margin-top: 8px;">
        <span class="content2"><b>Last 25 Users Who Commented a Recipe</b></span>
     </div>
        <asp:Repeater id="UserRecipeComment" runat="server">     
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <span class="content2"><a title="View complete profile" href="javascript:void(0)" onClick="window.open('../popupuserprofile.aspx?uid=<%# Eval("UID")%>','','width=880,height=700,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;" class="content2"><%# Eval("UserName")%></a> commented <a title="View this recipe" href="../recipedetail.aspx?id=<%# Eval("ID")%>#DIS" target="_blank" class="content2"><%# Eval("Name")%></a> recipe on: <%# Eval("Date", "{0:M/d/yyyy}")%></span>
            </div>         
       </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>
