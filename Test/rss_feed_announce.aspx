<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="rss_feed_announce.aspx.cs" Inherits="ExamCrazy.Test.rss_feed_announce" %>
<%@ Register TagPrefix="ucl" TagName="rsssidemenu" Src="~/Control/rsssidemenu.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelHolder" runat="server">
<ucl:rsssidemenu id="rsscont" runat="server"></ucl:rsssidemenu>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
