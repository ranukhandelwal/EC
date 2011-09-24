<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true"
    CodeBehind="EditFeed.aspx.cs" Inherits="EditFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Edit Feed
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/FeedManager.aspx" class="content12" title="Back to Feed manager main page"
        runat="server">Feed Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="lblreset"
            Visible="false" CssClass="content12" EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Edit Feed
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 28px; margin-right: 20px; margin-top: 5px; background-color: #fff;
        padding-left: 2px; padding-top: 1px;">
        <fieldset>
            <legend>Edit Feed Form</legend>
            <div style="padding-top: 25px;">
                <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                    EnableViewState="false" />
                <div style="margin-top: 1px; margin-bottom: 20px;">
                    <span class="content2">Fields mark with red asterisk (<span class="cred2">*</span>)
                        are required</span>
                </div>
                <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
                    <tr>
                        <td colspan="2" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12"><b>Summary Section</b></span><br />
                                <span class="content8">Will be added in feed</span></div>
                        </td>
                    </tr>
                    <tr>
    
                </table>
        </fieldset>
    </div>
</asp:Content>
