<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true"
    CodeBehind="EditFeed.aspx.cs" Inherits="EditFeed" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">

    <script type="text/javascript" src="<%=ResolveUrl("~/js/validator.js")%>"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Edit Feed
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/FeedManager.aspx" class="content12" title="Back to Feed manager main page"
        runat="server">Feed Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" ID="lblreset"
            Visible="false" CssClass="content12" EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Edit Feed
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 28px; margin-right: 20px; margin-top: 5px; background-color: #fff;
        padding-left: 2px; padding-top: 1px;">
        <fieldset>
            <legend>Edit Feed Form</legend>
            <div style="padding-top: 25px;">
                <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false"
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
                                <input type="text" id="title" name="title" class="txtinput" size="80" runat="server"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('Title should only contain <br />letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Title/Post Name" />&nbsp;<span id="idforresults"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldTitle" ControlToValidate="title"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">FeedID:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="FeedID" name="FeedID" class="txtinput" size="80" runat="server"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('Title should only contain <br />letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Title/Post Name" />&nbsp;<span id="Span3"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="FeedID"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Author:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Author" name="Author" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Author of feed, normally Administrator', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Author" />&nbsp;<span id="Span1"></span>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldAuthor" ControlToValidate="Author"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Author is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Link:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Link" name="Link" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Link, of feed', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Link" />&nbsp;<span id="Span2"></span>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="Link"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Link is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
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
                                    rows="50" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="Important Dates here" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="Summary"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Summary is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Description:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="Description" class="textbox" textmode="multiline" cols="100"
                                    rows="50" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="Important Dates here" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="Description"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Imp Date is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Settings:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="CategoryName" runat="server" CssClass="cselect" AutoPostBack="false">
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="FeedState" runat="server" CssClass="cselect" AutoPostBack="false">
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <asp:Panel ID="isJob" runat="server" Visible="true">
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
                    </asp:Panel>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <br />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                            <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update" />&nbsp;<br />
                        </td>
                </table>
        </fieldset>
    </div>
</asp:Content>
