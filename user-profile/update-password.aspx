<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="update-password.aspx.cs" Inherits="ExamCrazy.user_profile.update_password" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/contentxd.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%# ResolveUrl("~/js/Ajaxrequest.js")%>"></script>
    <script type="text/javascript" src="<%# ResolveUrl("~/js/validator.js")%>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
        <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana"
            Visible="false" />
    </div>
    <fieldset>
        <legend>User Password Update</legend>
        <div style="padding-top: 25px;">
            <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                EnableViewState="false" />
        </div>
        <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">Old Password:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <input type="password" id="OldPassword" name="OldPassword" class="txtinput" size="20"
                            runat="server" onkeyup="PassKeyDown()" onmouseover="Tip('Enter your old password here', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                            onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                id="Span1"></span>
                        <asp:RequiredFieldValidator ValidationGroup="UpdatePwd" runat="server" ID="RequiredFieldValidator1"
                            ControlToValidate="OldPassword" SetFocusOnError="true" CssClass="cred2" ErrorMessage="Password is blank"
                            Display="Dynamic"> </asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">New Password:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <input type="password" id="Password1" name="Password1" class="txtinput" size="20"
                            runat="server" onkeyup="PassKeyDown()" onmouseover="Tip('Password must be at least 6 characters long<br> and 12 characters maximun, and should only<br>contain Alphabet letters and numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                            onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff', ValPassword1()" />&nbsp;<span
                                id="passwordval"></span>
                        <asp:RequiredFieldValidator ValidationGroup="UpdatePwd" runat="server" ID="RequiredFieldPassword1"
                            ControlToValidate="Password1" SetFocusOnError="true" CssClass="cred2" ErrorMessage="Password is blank"
                            Display="Dynamic"> </asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">Repeat Password:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <input type="password" id="Password2" name="Password2" class="txtinput" size="20"
                            runat="server" onkeyup="PassKeyDown()" onmouseover="Tip('Password must be at least 6 characters long<br> and 12 characters maximun, and should only<br>contain Alphabet letters and numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                            onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff', CheckIfPasswordMatch()" />&nbsp;<span
                                id="repeatpass"></span>
                        <asp:RequiredFieldValidator ValidationGroup="UpdatePwd" runat="server" ID="RequiredFieldPassword2"
                            ControlToValidate="Password2" SetFocusOnError="true" CssClass="cred2" ErrorMessage="Repear Password is blank"
                            Display="Dynamic"> </asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top" colspan="2">
                    <asp:ValidationSummary ID="UpdatePwd" runat="server" EnableClientScript="true"
                        ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                    <asp:Button runat="server" Text="Submit" ID="BtnUpdatePassword" CssClass="submitadmin"
                        OnClick="UpdatePassword" />
                </td>
            </tr>
        </table>
    </fieldset>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
