<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popupviewusercookbook.aspx.cs" Inherits="admin_popupviewusercookbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>User CookBook</title>
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
    <div style="margin: 20px;">
    <div style="margin-bottom: 10px; margin-top: 8px;">
    <asp:Label runat="server" CssClass="content12" id="lblusernameheader" EnableViewState="false" />     
    </div>
     <div style="margin-bottom: 10px; margin-top: 8px;">
     <asp:Label runat="server" id="lblcounter" CssClass="content12" EnableViewState="false" />
     </div>
        <asp:Repeater id="SavedRecipeInCookBook" runat="server">
       <ItemTemplate>
        <div class="dcnt2" style="margin-top: 6px;">
        <a class="content12" onmouseover="Tip('<b>Recipe Name:</b> <%# Eval("RecipeName") %><br><b>Author:</b> <%# Eval("Author") %><br><b>Category:</b> <%# Eval("Category") %><br><b>Hits:</b> (<%# Eval("Hits") %>)<br><b>Rating:</b> (<%# Eval("Rating") %>)<br><b>Comments:</b> (<%# Eval("Comments") %>)<br>Added to the CookBook on: <%# Eval("Date", "{0:M/d/yyyy}")%><br><b>Photo:</b><br><img src=&quot;../RecipeImageUpload/<%# Eval("RecipeImage")%>&quot; width=&quot;150&quot; height=&quot;120&quot;>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" href='#'><%# Eval("RecipeName")%></a>
        </div>       
       </ItemTemplate>
      </asp:Repeater>
    </div>
    </form>
</body>
</html>
