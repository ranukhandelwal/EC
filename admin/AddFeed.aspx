<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true"
    CodeBehind="AddFeed.aspx.cs" Inherits="AddFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageName" runat="server">
    Add Feed
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/FeedManager.aspx" class="content12" title="Back to Feed manager main page"
        runat="server">Feed Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="lblreset"
            Visible="false" CssClass="content12" EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageNameBox" runat="server">
    Add Feed
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr align="center">
            <td align="center">
                <span class="bluearrow2">
                    <br />
                    <br />
                    <br />
                    <br />
                    »</span>&nbsp;<asp:HyperLink runat="server" ID="lblmanagerjoblink" CssClass="dt"
                        NavigateUrl="AddJob.aspx">
                        <asp:Label ID="lblmanagerjob" runat="server" /></asp:HyperLink>
                <td align="center">
                    <span class="bluearrow2">
                        <br />
                        <br />
                        <br />
                        <br />
                        »</span>&nbsp;<asp:HyperLink runat="server" ID="lblmanagerupdatelink" CssClass="dt"
                            NavigateUrl="AddUpdate.aspx">
                            <asp:Label ID="lblmanagerupdate" runat="server" /></asp:HyperLink>
                    <tr align="center">
                        <td align="center" colspan="2">
                            <span class="bluearrow2">
                                <br />
                                <br />
                                <br />
                                <br />
                                »</span>&nbsp;<asp:HyperLink runat="server" ID="lblmanagerannouncelink" CssClass="dt"
                                    NavigateUrl="AddAnnouncement.aspx">
                                    <asp:Label ID="lblmanagerannounce" runat="server" /></asp:HyperLink>
    </table>
</asp:Content>
