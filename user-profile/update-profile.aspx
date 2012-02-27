<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/UserMain.master"
    AutoEventWireup="true" CodeBehind="update-profile.aspx.cs" Inherits="ExamCrazy.user_profile.update_profile" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<%@Register TagPrefix="ucl" TagName="login" Src="~/Control/Login.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/contentxd.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%# ResolveUrl("~/js/Ajaxrequest.js")%>"></script>
    <script type="text/javascript" src="<%# ResolveUrl("~/js/validator.js")%>"></script>
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
        <legend>User Profile Update</legend>
        <div style="padding-top: 25px;">
            <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                EnableViewState="false" />
            <asp:Panel ID="HideFormIfLogin" runat="server">
                <div style="margin-top: 1px; margin-bottom: 20px;">
                    <span class="content2">Fields mark with red asterisk (<span class="cred2">*</span>)
                        are required</span>
                </div>
                <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Username:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Label ID="lbluname" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Email:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Label ID="lblemail" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Firstname:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Label ID="lblfirstname" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Lastname:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Label ID="lbllastname" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Sex:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:RadioButtonList ID="RadioButtonSex" RepeatColumns="2" RepeatDirection="Horizontal"
                                    runat="server">
                                </asp:RadioButtonList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Country:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="Cntry" runat="server" onchange="getStatesList()" CssClass="ddl"
                                    AutoPostBack="false">
                                    <asp:ListItem Value="none" Selected="True">Select a Country</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldCntry" ControlToValidate="Cntry"
                                    SetFocusOnError="true" CssClass="cred2" InitialValue="none" ErrorMessage="Country is blank"
                                    Display="Dynamic"> </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">State/Province:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="ddlstate" name="ddlstate" runat="server" onchange="getCitiesList()"
                                    CssClass="ddl" AutoPostBack="false" Enabled="false">
                                    <asp:ListItem Value="none" Selected="True">Select State</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="ddlstate"
                                    SetFocusOnError="true" CssClass="cred2" InitialValue="none" ErrorMessage="State is blank"
                                    Display="Dynamic"> </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">City/Town:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="ddlcity" name="ddlcity" runat="server" 
                                    CssClass="ddl" AutoPostBack="false" Enabled="false">
                                    <asp:ListItem Value="none" Selected="True">Select City</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="ddlcity"
                                    SetFocusOnError="true" CssClass="cred2" InitialValue="none" ErrorMessage="City is blank"
                                    Display="Dynamic"> </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Address:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="Address" class="textbox" textmode="multiline" cols="60"
                                    rows="10" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Mobile:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Mobile" name="Mobile" class="txtinput" size="10" runat="server"
                                    onkeypress="return NumberOnly(event)" onmouseover="Tip('Mobile no is max 10 digit,<br>contain numbers only', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                        id="Span1"></span>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldMobile" ControlToValidate="Mobile"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Mobile is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">DOB:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                DOB
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Show Interest:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:CheckBoxList ID="ExamCategoryList" runat="server" AutoPostBack="false" RepeatColumns="4"
                                    CellPadding="5" CellSpacing="5" Width="100%">
                                </asp:CheckBoxList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Newsletter:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="Newsletter" runat="server" CssClass="ddl" AutoPostBack="false">
                                    <asp:ListItem Value="1">Subscription Yes</asp:ListItem>
                                    <asp:ListItem Value="0">Subscription No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Allow contact:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="ContactMe" runat="server" CssClass="ddl" AutoPostBack="false">
                                    <asp:ListItem Value="1">Allow other users to email me</asp:ListItem>
                                    <asp:ListItem Value="0">Don't allow other users to email me</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Website:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Website" name="Website" class="txtinput" size="35" runat="server"
                                    onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">About me:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="AboutMe" class="textbox" textmode="multiline" cols="60"
                                    rows="10" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%">
                        </td>
                        <td width="74%">
                            <input type="text" class="txtinput" id="hd" name="hd" runat="server" style="visibility: hidden;">
                            <br />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                            <asp:Button runat="server" Text="Submit" ID="AddComments" CssClass="submitadmin"
                                OnClick="Update_User" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </fieldset>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
