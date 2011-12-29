<%@ Page Title="" Language="C#" MasterPageFile="~/AdminArticle.master" AutoEventWireup="true"
    CodeBehind="articlepreview.aspx.cs" Inherits="ExamCrazy.admin.articlepreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Articles
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Article Preview
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 40px; margin-right: 40px;">
        <br />
        <fieldset>
            <legend>Previewing Article</legend>
            <asp:Label ID="lbtitle" CssClass="content12" Style="font-size: 20px; color: #000;"
                runat="server"></asp:Label>
            <br />
            <br />
            <span class="content12" style="color: #000"><b>Summary: </b></span>
            <br />
            <asp:Label ID="lblsummary" CssClass="content12" Style="color: #000" runat="server"></asp:Label>
            <br />
            <br />
            <span class="content12" style="color: #000"><b>Keywords: </b></span>
            <br />
            <asp:Label ID="lblkeyword" CssClass="content12" Style="color: #000" runat="server"></asp:Label>
            <br />
            <br />
            <span class="content12" style="color: #000"><b>Content: </b></span>
            <br />
            <asp:Label ID="lbartdetail" runat="server"></asp:Label>
        </fieldset>
    </div>
</asp:Content>
