<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true"
    CodeBehind="AddJob.aspx.cs" Inherits="ExamCrazy.admin.AddJob" %>

<asp:Content ID="Content5" ContentPlaceHolderID="headerquerycss" runat="server">

    <script type="text/javascript" src="<%=ResolveUrl("~/js/validator.js")%>"></script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageName" runat="server">
    Add Jobs
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/FeedManager.aspx" class="content12" title="Back to Feed manager main page"
        runat="server">Feed Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="lblreset"
            Visible="false" CssClass="content12" EnableViewState="false" />
    <img id="Img2" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A2"
        href="~/admin/AddFeed.aspx" class="content12" title="Add Feed page" runat="server">Add
        Feed page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="Label1" Visible="false" CssClass="content12"
            EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageNameBox" runat="server">
    Add Jobs
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 28px; margin-right: 20px; margin-top: 5px; background-color: #fff;
        padding-left: 2px; padding-top: 1px;">
        <fieldset>
            <legend>New Job Form</legend>
            <div style="padding-top: 25px;">
                <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
                    EnableViewState="false" />
                <div style="margin-top: 1px; margin-bottom: 20px;">
                    <span class="content2">Fields mark with red asterisk (<span class="cred2">*</span>)
                        are required</span>
                </div>
                <table border="0" cellpadding="2" align="left" cellspacing="2" width="100%">
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Title:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="JobTitle" name="JobTitle" class="txtinput" size="80" runat="server"
                                    onkeypress="return ValidateText(event)"  onmouseover="Tip('Title should only contain <br />letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                        id="idforresults"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldUname" ControlToValidate="JobTitle"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Summary:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="Summary" class="textbox" textmode="multiline" cols="100"
                                    rows="5" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)"  onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="Summary"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="How To Apply is blank"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">How To Apply:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="HowToApply" class="textbox" textmode="multiline" cols="100"
                                    rows="50" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)"  onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="AboutCompany"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="How To Apply is blank"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">About Company:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="AboutCompany" class="textbox" textmode="multiline" cols="100"
                                    rows="50" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)"  onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="AboutCompany"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Important Dates:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="LastDate" class="textbox" textmode="multiline" cols="100"
                                    rows="1" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)"  onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="LastDate"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Imp Date is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    <td>
                    <td>
                     <br />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                                    ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                                                <asp:Button runat="server" Text="Submit" ID="AddComments" CssClass="submitadmin"
                                                    OnClick="Add_Feed" />
                </table>
        </fieldset>
    </div>
</asp:Content>
