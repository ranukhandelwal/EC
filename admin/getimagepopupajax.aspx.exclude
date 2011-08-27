<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getimagepopupajax.aspx.cs" Inherits="admin_getimagepopupajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Image</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 220px; height: 190px; border: solid 1px #A0BEE2; background-color: #FFFFFF;">
     <div style="text-align: right; margin-right: 3px;"><a href="javascript:void(0);" title="close" onclick="ajax_hideTooltip();return false;" class="dt">Close</a></div>
    <div style="text-align: center; margin: 4px;">
    <asp:Image id="recipeimage" runat="server" Width="150" Height="120" EnableViewState="false" /> 
    <br />
    <asp:Label ID="lblimgname" CssClass="content2" runat="server" />
    <br />
    <asp:Label ID="lblimgsize" CssClass="content2" runat="server" />
    <br />
    <a href="editing.aspx?id=<%=Request.QueryString["id"]%>" title="Edit photo" class="dt" style="font-size: 11px;">Edit Photo</a>
    </div> 
    </div>
    </form>
</body>
</html>
