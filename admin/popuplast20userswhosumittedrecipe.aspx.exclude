<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popuplast20userswhosumittedrecipe.aspx.cs" Inherits="popuplast20userswhosumittedrecipe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Last 20 Users Who Submitted Recipe</title>
        <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="margin-bottom: 8px; margin-top: 8px;">
        <span class="content2"><b>Last 20 Users Who Submitted a Recipe</b></span>
     </div>
        <asp:Repeater id="UserSubmittedRecipe" runat="server">     
        <ItemTemplate>
            <div class="dcnt2" style="margin-top: 2px;">
             <a title="Browse" href="../findallrecipebyauthor.aspx?author=<%# Eval("UserName")%>" target="_blank" class="content2"><%# Eval("UserName")%></a> - <span class="content2">Last Submitted Date On: <%# Eval("Date", "{0:M/d/yyyy}")%></span>
            </div>         
       </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>
