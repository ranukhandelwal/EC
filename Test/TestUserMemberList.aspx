<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true" CodeBehind="TestUserMemberList.aspx.cs" Inherits="ExamCrazy.Test.TestUserMemberList" %>
<%@ Register TagPrefix="ucl" TagName="memlist" Src="~/Control/MemberList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<ucl:memlist id="usrlist" runat="server"></ucl:memlist>
</asp:Content>
