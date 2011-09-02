<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="LoginControl.aspx.cs" Inherits="ExamCrazy.Test.LoginControl" %>
<%@ Register TagPrefix="ucl" TagName="login" Src="~/Control/Login.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelHolder" runat="server">
<ucl:login ID="login" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
Contents here
</asp:Content>
