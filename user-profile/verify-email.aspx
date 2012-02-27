<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="verify-email.aspx.cs" Inherits="ExamCrazy.user_profile.verify_email" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<%@Register TagPrefix="ucl" TagName="login" Src="~/Control/Login.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<ucl:login ID="login" runat="server" />
    <asp:Label ID="lblmessage" runat="server"></asp:Label>
    <asp:Panel ID="pnlDefault" runat="server" Visible="false">
        <asp:Label ID="lblDefault" runat="server"></asp:Label>
        <asp:Button runat="server" Text="Request Email Verification Link" ID="BtnEmailVerification"
            CssClass="submitadmin" OnClick="SendEmailVerificationLink" Visible="false" />
    </asp:Panel>
    <asp:Panel ID="pnlActivation" runat="server" Visible="false">
    </asp:Panel>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
