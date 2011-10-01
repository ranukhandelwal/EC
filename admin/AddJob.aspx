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
                                <input type="text" id="JobTitle" name="JobTitle" class="txtinput" size="80" runat="server"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('Title should only contain <br />letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Title/Post Name" />&nbsp;<span id="idforresults"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldUname" ControlToValidate="JobTitle"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Logo:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="logoimg" name="LogoImg" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Logo Link, not compulsary<br />Always start with http://www.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="~/images/Examcrazy-logo.png" />&nbsp;<span id="Span1"></span>
                                <br />
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
                                <input type="text" id="JobLink" name="JobLink" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Logo Link, compulsary<br />Just final page name', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="ExamCrazy_Vacancy.asp" />&nbsp;<span id="Span6"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ControlToValidate="JobLink"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="JobLink is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Eligiblity:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Eligiblity" name="Eligiblity" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Short Eligibility', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Short Eligibility" />&nbsp;<span id="Span2"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="Eligiblity"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Eligiblity is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Location:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Location" name="Location" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Short Eligibility', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Short Eligibility" />&nbsp;<span id="Span3"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="Location"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Locations is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Job Category:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="JobCategory" runat="server" CssClass="ddl" AutoPostBack="false">
                                    <asp:ListItem Value="none" Selected="True">Select Job Category</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldCntry" ControlToValidate="JobCategory"
                                    SetFocusOnError="true" CssClass="cred2" InitialValue="none" ErrorMessage="Job Category is blank"
                                    Display="Dynamic"> </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Last Dates to Apply:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="LastDate" class="textbox" textmode="multiline" cols="100"
                                    rows="1" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="Important Dates here" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="LastDate"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Imp Date is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Job Type:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:DropDownList ID="JobType" runat="server" CssClass="ddl" AutoPostBack="false">
                                    <asp:ListItem Value="none" Selected="True">Select Job Type</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="JobType"
                                    SetFocusOnError="true" CssClass="cred2" InitialValue="none" ErrorMessage="Job Type is blank"
                                    Display="Dynamic"> </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Hiring Process:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="HiringProcess" name="HiringProcess" class="txtinput" size="80"
                                    runat="server" onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Hiring Process" />&nbsp;<span id="Span4"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ControlToValidate="HiringProcess"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Hiring Process is blank"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Summary Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="SummaryTbl" name="SummaryTbl" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Summary Table Name" />&nbsp;<span id="Span8"></span>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Summary Table:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Panel Visible="true" ID="SummaryRawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="SummaryTxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="SummaryTxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="SummaryTxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="SummaryTxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__smmrydynamictable" runat="server"></asp:PlaceHolder>
                            </div>
                        </td>
                    </tr>
                    <asp:Panel ID="SummaryPreview" Visible="false" runat="server">
                        <tr>
                            <td width="15%" valign="top">
                                <div style="margin-bottom: 6px">
                                    <span class="content12">Summary Preview:</span></div>
                            </td>
                            <td width="74%" valign="top">
                                <div style="margin-bottom: 6px">
                                    <asp:Label CssClass="content01" runat="server" Visible="true" ID="testsummary" />
                                </div>
                            </td>
                        </tr>
                    </asp:Panel>
                    <tr>
                        <td colspan="2" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12"><b>Detail Section</b></span><br />
                                <span class="content8">Will not be part of feed</span></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Invitation:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Invitation" name="Invitation" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Invitation', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"
                                    onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="ExamCrazy.Com invites application for" />&nbsp;<span id="Span5"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="Invitation"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Invitation is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Detail Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="DetailTbl" name="DetailTbl" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Detail Table Name" />&nbsp;<span id="Span13"></span>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Detail Table:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Panel Visible="true" ID="DetailRawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="DetailTxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ControlToValidate="DetailTxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="DetailTxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ControlToValidate="DetailTxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__dtldynamictable" runat="server"></asp:PlaceHolder>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Detail2 Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="Detail2Tbl" name="Detail2Tbl" class="txtinput" size="80" runat="server"
                                    onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Detail2 Table Name" />&nbsp;<span id="Span12"></span>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Detail Table2:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Panel Visible="true" ID="Detail2RawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="Detail2TxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ControlToValidate="Detail2TxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="Detail2TxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ControlToValidate="Detail2TxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__dtl2dynamictable" runat="server"></asp:PlaceHolder>
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
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="How to Apply and application fee" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="HowToApply"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="How To Apply is blank"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Imp Dates Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="ImpDatesTbl" name="ImpDatesTbl" class="txtinput" size="80"
                                    runat="server" onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Imp Dates Table Name" />&nbsp;<span id="Span11"></span>
                                <br />
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
                                <asp:Panel Visible="true" ID="ImpDatesRawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="ImpDatesTxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17" ControlToValidate="ImpDatesTxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="ImpDatesTxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18" ControlToValidate="ImpDatesTxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__impdatedynamictable" runat="server"></asp:PlaceHolder>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Vacancy Link:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="VacancyLink" name="VacancyLink" class="txtinput" size="80"
                                    runat="server" onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Vacancy Link" />&nbsp;<span id="Span7"></span>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19" ControlToValidate="VacancyLink"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Vacancy Link is blank"
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">How to Prepare:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <textarea runat="server" id="HowToPrepare" class="textbox" textmode="multiline" cols="100"
                                    rows="50" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'"
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="HowToPrepare Here" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ControlToValidate="HowToPrepare"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Paid Test Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="PaidTestTbl" name="PaidTestTbl" class="txtinput" size="80"
                                    runat="server" onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Paid Test Table Name" />&nbsp;<span id="Span10"></span>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Paid Tests:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Panel Visible="true" ID="PaidTestRawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="PaidTestTxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator20" ControlToValidate="PaidTestTxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="PaidTestTxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21" ControlToValidate="PaidTestTxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__paidtestdynamictable" runat="server"></asp:PlaceHolder>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Free Test Table Name:</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <input type="text" id="FreeTestTbl" name="FreeTestTbl" class="txtinput" size="80"
                                    runat="server" onmouseover="Tip('Hiring Process', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                    value="Free Test Table Name" />&nbsp;<span id="Span9"></span>
                                <br />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" valign="top">
                            <div style="margin-bottom: 6px">
                                <span class="content12">Free Tests:</span><span class="cred2">*</span></div>
                        </td>
                        <td width="74%" valign="top">
                            <div style="margin-bottom: 6px">
                                <asp:Panel Visible="true" ID="FreeTestRawTable" runat="server" Style="margin-top: 30px;">
                                    <div>
                                        <div>
                                            <span class="content12">Rows:</span>
                                            <asp:TextBox ID="FreeTestTxtRows" runat="server" Width="30px" Text="0"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" ControlToValidate="FreeTestTxtRows"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Rows is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                            &nbsp;&nbsp;<span class="content12">Cols:</span> &nbsp;<asp:TextBox ID="FreeTestTxtCols"
                                                runat="server" Width="30px" Text="0"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator23" ControlToValidate="FreeTestTxtCols"
                                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Cols is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:PlaceHolder ID="__freetestdynamictable" runat="server"></asp:PlaceHolder>
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
                                    onkeypress="return ValidateText(event)" onmouseover="Tip('This should only contain <br />letters, numbers, dash or underscore dot @. or slash', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()" value="About Company Here" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="AboutCompany"
                                    SetFocusOnError="true" CssClass="cred2" ErrorMessage="Title is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <asp:Panel ID="DetailPreview" Visible="false" runat="server">
                        <tr>
                            <td width="15%" valign="top">
                                <div style="margin-bottom: 6px">
                                    <span class="content12">Details Preview:</span></div>
                            </td>
                            <td width="74%" valign="top">
                                <div style="margin-bottom: 6px">
                                    <asp:Label CssClass="content01" runat="server" Visible="true" ID="testdetails" />
                                </div>
                            </td>
                        </tr>
                    </asp:Panel>
                    <tr>
                        <td>
                            <td>
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                    ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                                <table width="80%">
                                    <asp:Panel Visible="true" ID="GenrBtn" runat="server" Style="margin-top: 30px;">
                                        <tr>
                                            <td colspan="2" align="center">
                                                <asp:Button ID="btnGenerate" OnClick="btnGenerate_Click" runat="server" Text="Generate" />&nbsp;<br />
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel Visible="false" ID="SubmitBtn" runat="server" Style="margin-top: 30px;">
                                        <tr>
                                            <td align="left">
                                                <asp:Button runat="server" Text="Submit" ID="Submit" CssClass="submitadmin" OnClick="SubmitFeed" />
                                            </td>
                                            <td align="right">
                                                <asp:Button runat="server" Text="Save" ID="Save" CssClass="submitadmin" OnClick="SaveFeed" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center">
                                                <br />
                                                <br />
                                                <asp:Button runat="server" Text="Preview" ID="AddComments" CssClass="submitadmin"
                                                    OnClick="PreviewFeed" />
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                </table>
        </fieldset>
    </div>
</asp:Content>
