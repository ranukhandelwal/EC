<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="update-image.aspx.cs" Inherits="ExamCrazy.user_profile.update_image" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/contentxd.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%# ResolveUrl("~/js/Ajaxrequest.js")%>"></script>
    <script type="text/javascript" src="<%# ResolveUrl("~/js/validator.js")%>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
            <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana"
                Visible="false" />
        </div>
        <fieldset>
            <legend>Update Image</legend>
            <div style="padding-top: 25px;">
                <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                    EnableViewState="false" />
            </div>
            <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
                <tr>
                    <td width="15%">
                        <span class="content12">Photo:<br />
                            (Optional)</span>
                    </td>
                    <td width="74%">
                        <asp:FileUpload ID="UserImageFileUpload" runat="server" />&nbsp;<span class="content2"><br />
                            Maximum Image size is 200 x 200 and less than 20,000 bytes.</span>
                        <asp:RequiredFieldValidator ValidationGroup="UpdateImageID" runat="server" ID="RequiredFieldValidator1"
                            ControlToValidate="UserImageFileUpload" SetFocusOnError="true" CssClass="cred2"
                            InitialValue="none" ErrorMessage="State is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td width="15%" valign="top" colspan="2">
                        <asp:ValidationSummary ID="UpdatePwd" ValidationGroup="UpdateImageID" runat="server"
                            EnableClientScript="true" ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                        <asp:Button runat="server" Text="Submit" ID="BtnUpdatePassword" CssClass="submitadmin"
                            OnClick="UpdateImage" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </asp:PlaceHolder>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
