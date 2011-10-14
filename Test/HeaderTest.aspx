<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeaderTest.aspx.cs" Inherits="ExamCrazy.Test.HeaderTest" %>

<%@ Register TagPrefix="ucl" TagName="HeaderCtr" Src="~/Control/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script type="text/javascript" src="<%# ResolveUrl("~/js/jquery.min.js")%>"></script>

    <script type="text/javascript" src="<%# ResolveUrl("~/js/drop_menu.js")%>"></script>

    <script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script>

    <link href="~/css/grids.css" rel="stylesheet" type="text/css" />
    <link href="~/css/libraries.css" rel="stylesheet" type="text/css" />
    <link href="~/css/mod.css" rel="stylesheet" type="text/css" />
    <link href="~/css/template.css" rel="stylesheet" type="text/css" />
    <link href="~/css/content.css" rel="stylesheet" type="text/css" />
    <link href="~/css/thickbox.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="<%# ResolveUrl("~/js/jquery-1.6.1.min.js")%>"></script>

    <script type="text/javascript" src="<%# ResolveUrl("~/js/jquery.li-scroller.1.0.js")%>"></script>

    <!-- Syntax hl -->
    <link rel="stylesheet" href="~/css/li-scroller.css" type="text/css" media="screen" />

    <script type="text/javascript">
        $(function() {
            $("ul#ticker01").liScroll();
            $("ul#ticker02").liScroll({ travelocity: 0.15 });
            //Syntax

        });
    </script>

</head>
<body>

    <script type="text/javascript" src="<%=ResolveUrl("~/js/wz_tooltip.js")%>"></script>

    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="page">
            <div class="header unit">
                <ucl:HeaderCtr ID="HeaderCtr1" runat="server" />
            </div>
            <div class=" size1of4 unit">
            </div>
            <div class=" size3of4 unit">
            </div>
        </div>
    </div>
    </form>
</body>
</html>
