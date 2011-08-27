<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeFile="popupviewuserfriendslist.aspx.cs" Inherits="admin_popupviewuserfriendslist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>User Friends List</title>
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
        <asp:Repeater id="MyFriendsList" runat="server">     
        <ItemTemplate>
        <div class="dcnt2" style="margin-top: 6px;">
        <img src="../images/iconuser.gif" /> <a class="thickbox content12" title="View <%# Eval("Username") %> friend" onmouseover="Tip('<b>User name:</b> <%# Eval("Username") %><br><b>Full name:</b> <%# Eval("FirstName") %> <%# Eval("LastName") %><br><b>Country:</b> <%# Eval("Country") %><br><b>Profile views:</b> (<%# Eval("Hits") %>)<br><b>Date joined:</b> <%# Eval("DateJoined", "{0:M/d/yyyy}")%><br><b>Last visit:</b> (<%# Eval("LastVisit") %>)<br>Added to Friends List on: <%# Eval("Date", "{0:M/d/yyyy}")%><br><b>Photo:</b><br><img src=&quot;../UserImages/<%# Eval("Photo")%>&quot; width=&quot;160&quot; height=&quot;140&quot;>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" href='#'><%# Eval("Username")%></a>
        </div>        
       </ItemTemplate>
 
      </asp:Repeater> 
    </div>
    </form>
</body>
</html>
