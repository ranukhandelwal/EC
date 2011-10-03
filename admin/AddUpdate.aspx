<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true"
    CodeBehind="AddUpdate.aspx.cs" Inherits="ExamCrazy.admin.AddUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">

    <script type="text/javascript" src="<%=ResolveUrl("~/js/validator.js")%>"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Add Update
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/FeedManager.aspx" class="content12" title="Back to Feed manager main page"
        runat="server">Feed Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="lblreset"
            Visible="false" CssClass="content12" EnableViewState="false" />
    <img id="Img2" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A2"
        href="~/admin/AddFeed.aspx" class="content12" title="Add Feed page" runat="server">Add
        Feed page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="Label1" Visible="false" CssClass="content12"
            EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Add Update
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 28px; margin-right: 20px; margin-top: 5px; background-color: #fff;
        padding-left: 2px; padding-top: 1px;">
        <fieldset>
            <legend>New Update Form</legend>
            <div style="padding-top: 25px;">
                <asp:Label ID="lblWarningMessage" runat="server" CssClass="cred" Visible="false"
                    EnableViewState="false" />
                <div style="margin-top: 1px; margin-bottom: 20px;">
                    <span class="content2">Fields mark with red asterisk (<span class="cred2">*</span>)
                        are required</span>
                </div>
                <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
                    <tr>
                        <td colspan="2" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12"><b>Summary Section</b></span><br />
                                <span class="content8">Will be added in feed</span></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Title:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="UpdateTitle" name="JobTitle" class="txtinput" size="80" runat="server"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('Title should only contain <br />letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Title/Post Name" />&nbsp;<span id="idforresults"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldUname" ControlToValidate="UpdateTitle"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Link:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="TitleLink" name="TitleLink" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Title Link, compulsary<br />Full link of page with www.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="ExamCrazy_Vacancy.asp" />&nbsp;<span id="Span6"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ControlToValidate="TitleLink"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="UpdateLink is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Display In:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:CheckBoxList ID="CheckBoxDisplayIn" runat="server" CssClass="cselect" AutoPostBack="false"
                                    RepeatColumns="4" CellPadding="5" CellSpacing="15">
                                </asp:CheckBoxList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <td>
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                    ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                    </tr>
                    <asp:Panel Visible="true" ID="SubmitBtn" runat="server" Style="margin-top: 30px;">
                        <tr>
                            <td align="left">
                                <asp:Button runat="server" Text="Submit" ID="Submit" CssClass="submitadmin" OnClick="SubmitFeed" />
                            </td>
                            <td align="right">
                                <asp:Button runat="server" Text="Save" ID="Save" CssClass="submitadmin" OnClick="SaveFeed" />
                            </td>
                        </tr>
                    </asp:Panel>
                </table>
            </table>
        </fieldset>
    </div>
</asp:Content>
