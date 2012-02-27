<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="update-email.aspx.cs" Inherits="ExamCrazy.user_profile.update_email" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<%@Register TagPrefix="ucl" TagName="login" Src="~/Control/Login.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="<%# ResolveUrl("~/js/validator.js")%>"></script>
    <script type="text/javascript" src="<%# ResolveUrl("~/js/Ajaxrequest.js")%>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<ucl:login ID="login" runat="server" />
    <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
        <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana"
            Visible="false" />
    </div>
    <fieldset>
        <legend>User Email Update</legend>
        <div style="padding-top: 25px;">
            <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                EnableViewState="false" />
        </div>
        <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">Old Email:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <asp:Label ID="lblOldEmail" runat="server"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">Verification Status:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <asp:Label ID="lblVerifStatus" runat="server"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top">
                    <div style="margin-bottom: 6px">
                        <span class="content12">New Email ID:</span><span class="cred2">*</span></div>
                </td>
                <td width="74%" valign="top">
                    <div style="margin-bottom: 6px">
                        <div style="margin-bottom: 6px">
                            <input type="text" id="Email" name="Email" class="txtinput" size="30" runat="server"
                                onkeyup="EmailKeyDown()" onmouseover="Tip('Email should not exceed 45 characters long.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff', ValEmail()" />&nbsp;<span
                                    id="idforresultsemail"></span>
                            <br />
                            <input type="button" id="subbutemail" value="Verify email" title="Check if email already in used. Cannot use the same email."
                                disabled="disabled" class="submitadmin" onclick="sendRequestEmailTextPost()" />&nbsp;
                            <asp:RequiredFieldValidator runat="server" ValidationGroup="updateemail" ID="RequiredFieldEmail" ControlToValidate="Email"
                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Email is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="15%" valign="top" colspan="2">
                    <asp:ValidationSummary ID="UpdateEmailID" ValidationGroup="updateemail" runat="server" EnableClientScript="true"
                        ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                    <asp:Button runat="server" Text="Submit" ID="BtnUpdateEmail" CssClass="submitadmin"
                        OnClick="UpdateEmail" />
                </td>
            </tr>
        </table>
    </fieldset>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
