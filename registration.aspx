<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true"
    Inherits="registration" CodeBehind="registration.aspx.cs" %>

<%@ Register TagPrefix="ucl" TagName="sidemenu" Src="Control/sidemenu.ascx" %>
<%@ Register TagPrefix="ucl" TagName="searchtab" Src="Control/searchtab.ascx" %>
<%@ Register TagPrefix="ucl" TagName="CalendarDatePicker" Src="Control/DatePicker.ascx" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
    <link href="CSS/thickbox.css" rel="stylesheet" type="text/css" />
    <link href="css/popupcalendarpicker.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.datepick.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="LeftPanelHolder" runat="server">
    <h1>
        Why ExamCrazy</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="size1of1">
        <div class="size1of1" style="background-color: #FFF9EC; margin-top: 0px;">
            &nbsp;&nbsp;<a href="default.aspx" class="dsort" title="Back to ExamCrazy.Com homepage">Home</a>&nbsp;<span
                class="bluearrow">»</span>&nbsp; <span class="content2">You are here: User Registration
                    Form</span>
        </div>
        <div style="margin-left: 15px;">
            <!--Begin Insert ExamCrazy Form-->
            <table border="0" cellpadding="2" align="center" cellspacing="2" width="95%">
                <tr>
                    <td width="68%">
                        <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
                            <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana"
                                Visible="false" />
                        </div>
                        <fieldset>
                            <legend>User Registration Form</legend>
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
                                                    <span class="content12">Username:</span><span class="cred2">*</span></div>
                                            </td>
                                            <td width="74%" valign="top">
                                                <div style="margin-bottom: 6px">
                                                    <input type="text" id="Username" name="Username" class="txtinput" size="20" runat="server"
                                                        onkeypress="return LetterNumberDashUnderscoreOnly(event)" onkeyup="UnameKeyDown()"
                                                        onmouseover="Tip('Username must be at least 6 characters long<br>and 15 characters maximun, and should only<br>contain letters, numbers, dash or underscore dot @.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                                            id="idforresults"></span>
                                                    <br />
                                                    <input type="button" id="subbutton" value="Check availability" title="Check if username is available."
                                                        disabled="disabled" class="submitadmin" onclick="sendRequestTextUsernamePost()" />&nbsp;
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldUname" ControlToValidate="Username"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Username is blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%" valign="top">
                                                <div style="margin-bottom: 6px">
                                                    <span class="content12">Password:</span><span class="cred2">*</span></div>
                                            </td>
                                            <td width="74%" valign="top">
                                                <div style="margin-bottom: 6px">
                                                    <input type="password" id="Password1" name="Password1" class="txtinput" size="20"
                                                        runat="server" onclick="ValUsername()" onkeyup="PassKeyDown()" onmouseover="Tip('Password must be at least 6 characters long<br> and 12 characters maximun, and should only<br>contain Alphabet letters and numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff', ValPassword1()" />&nbsp;<span
                                                            id="passwordval"></span>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldPassword1" ControlToValidate="Password1"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Password is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
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
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                                            id="repeatpass"></span>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldPassword2" ControlToValidate="Password2"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Password 2 is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
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
                                                    <input type="text" id="Email" name="Email" class="txtinput" size="30" runat="server"
                                                        onclick="CheckIfPasswordMatch()" onkeyup="EmailKeyDown()" onmouseover="Tip('Email should not exceed 45 characters long.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                                            id="idforresultsemail"></span>
                                                    <br />
                                                    <input type="button" id="subbutemail" value="Verify email" title="Check if email already in used. Cannot use the same email."
                                                        disabled="disabled" class="submitadmin" onclick="sendRequestEmailTextPost()" />&nbsp;
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldEmail" ControlToValidate="Email"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Email is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
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
                                                    <input type="text" id="Firstname" name="Firstname" class="txtinput" size="20" runat="server"
                                                        onkeypress="return LetterOnly(event)" onkeyup="FirstLastnameKeyDown()" onclick="ValEmail()"
                                                        onmouseover="Tip('Firstname should be Alphabet letters<br>and cannot contain numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                                            id="resultfirstname"></span>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldFirstname" ControlToValidate="Firstname"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Firstname is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
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
                                                    <input type="text" id="Lastname" name="Lastname" class="txtinput" size="20" runat="server"
                                                        onkeypress="return LetterOnly(event)" onkeyup="FirstLastnameKeyDown()" onclick="ValFirstname()"
                                                        onmouseover="Tip('Lastname should be Alphabet letters<br>and cannot contain numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                        onmouseout="UnTip()" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;<span
                                                            id="resultlastname"></span>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldLastname" ControlToValidate="Lastname"
                                                        SetFocusOnError="true" CssClass="cred2" ErrorMessage="Lastname is blank" Display="Dynamic"> </asp:RequiredFieldValidator>
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
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
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
                                                    <asp:DropDownList ID="Cntry" runat="server" onchange="ValLastname()" CssClass="ddl"
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
                                                    <input type="text" id="State" name="State" class="txtinput" size="20" runat="server"
                                                        onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;
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
                                                    <input type="text" id="City" name="City" class="txtinput" size="20" onclick="ValLastname()"
                                                        runat="server" onfocus="this.style.backgroundColor='#FFFCF9'" onblur="this.style.backgroundColor='#ffffff'" />&nbsp;
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
                                                        onkeypress="return NumberOnly(event)" onkeyup="UnameKeyDown()" onmouseover="Tip('Mobile no is max 10 digit,<br>contain numbers only', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
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
                                                    <ucl:CalendarDatePicker ID="Date1" runat="server" />
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
                                                    <asp:CheckBoxList ID="ExamCategoryList" runat="server" AutoPostBack="false"
                                                        RepeatColumns="4" CellPadding="5" CellSpacing="5" Width="100%">
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
                                                        <asp:ListItem Value="1" Selected>Subscription Yes</asp:ListItem>
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
                                                        <asp:ListItem Value="1" Selected>Allow other users to email me</asp:ListItem>
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
                                                <span class="content12">Photo:<br />
                                                    (Optional)</span>
                                            </td>
                                            <td width="74%">
                                                <asp:FileUpload ID="UserImageFileUpload" runat="server" />&nbsp;<span class="content2"><br />
                                                    Maximum Image size is 200 x 200 and less than 20,000 bytes.</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">
                                            </td>
                                            <td width="74%">
                                                <input type="text" class="txtinput" id="hd" name="hd" runat="server" style="visibility: hidden;">
                                                <br />
                                                <span class="content2">Security Code:</span>
                                                <br />
                                                <img height="30" alt="" src="imgsecuritycode.aspx" width="80">
                                                <br />
                                                <asp:Label ID="lblinvalidsecode" CssClass="cred2" runat="server" Visible="false" />
                                                <asp:TextBox ID="txtsecfield" CssClass="txtinput" runat="server" Width="70"></asp:TextBox><asp:RequiredFieldValidator
                                                    runat="server" ID="reqSec" ControlToValidate="txtsecfield" CssClass="cred2" ErrorMessage="Security code is blank"
                                                    Display="Dynamic"> </asp:RequiredFieldValidator><br />
                                                <br />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                                                    ShowMessageBox="true" ShowSummary="false" HeaderText="The following fields need attention:" />
                                                <asp:Button runat="server" Text="Submit" ID="AddComments" CssClass="submitadmin"
                                                    OnClick="Add_User" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </div>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
    </div>
</asp:Content>
