<%@ Page Title="" Language="C#" MasterPageFile="~/LeftRight.master" AutoEventWireup="true"
    CodeBehind="EmailTest.aspx.cs" Inherits="ExamCrazy.Test.EmailTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <asp:Button runat="server" Text="Test email" ID="subbutemail" CssClass="submitadmin"
                                                        OnClick="SendTestEmail" />
    &nbsp;
</asp:Content>
