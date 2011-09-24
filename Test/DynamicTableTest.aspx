<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true"
    CodeBehind="DynamicTableTest.aspx.cs" Inherits="ExamCrazy.Test.DynamicTableTest" %>
<%@ Register TagPrefix="ucl" TagName="login" Src="~/Control/DynamicTable.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelHolder" runat="server">
Dynamic Table Test
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<ucl:login ID="dynamictable" runat="server" />
</asp:Content>
