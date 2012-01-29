<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="__user.aspx.cs" Inherits="ExamCrazy.User.__user" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<%@ Register TagPrefix="ucl" TagName="discussion" Src="~/Control/DiscussionForm.ascx" %>
<%@ Register TagPrefix="ucl" TagName="announce" Src="~/Control/Announcement.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblwelcomeusername" runat="server" />
    <ucl:announce ID="announce" runat="server" />
    <ucl:discussion ID="discussion" runat="server" />
</asp:Content>
