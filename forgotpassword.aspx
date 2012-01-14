<%@ Page Title="" Language="C#" MasterPageFile="~/LeftRight.master" AutoEventWireup="true"
    CodeBehind="forgotpassword.aspx.cs" Inherits="ExamCrazy.forgotpassword" %>
    <%@ MasterType VirtualPath="~/LeftRight.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/contentxd.css" rel="stylesheet" type="text/css" />
    <link href="CSS/thickbox.css" rel="stylesheet" type="text/css" />
    <link href="css/popupcalendarpicker.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.datepick.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="<%# ResolveUrl("~/js/Ajaxrequest.js")%>"></script>

    <script type="text/javascript" src="<%# ResolveUrl("~/js/validator.js")%>"></script>

    <script type="text/javascript" src="<%# ResolveUrl("~/js/jquery.timePicker.js")%>"></script>

    <script type="text/javascript" src="<%# ResolveUrl("~/js/jquery.datepick.js")%>"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
  <div class="breadCrumsMenu unit">
                            <a class="unit" href="index.aspx" title="home">Home</a>
                            <div class="breadArrow">
                                &gt;</div>
                            ForgotPassword</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 10px; margin-bottom: 12px; margin-right: 12px; background-color: #FFF9EC;
        margin-top: 0px;">
        &nbsp;&nbsp;<a href="index.aspx" class="dsort" title="Back to recipe homepage">Home</a>&nbsp;<span
            class="bluearrow">»</span>&nbsp; <span class="content2">You are here: Password recovery
                page</span>
    </div>
    <div style="margin-left: 15px;">
        <table border="0" cellpadding="2" align="left" cellspacing="2" width="75%">
            <tr>
                <td width="68%">
                    <fieldset>
                        <legend>
                            <asp:Label runat="server" ID="passrecoveryheader" EnableViewState="false" /></legend>
                        <div style="padding-top: 1px;">
                            <div style="margin-top: 18px; margin-bottom: 8px;">
                                <span class="content12">If you forgot your password, enter the email address you used
                                    when you register to recover it.
                                    <br />
                                    We will send you an email containing your username and password. </span>
                            </div>
                            <span class="content12">Email:</span>
                            <input type="text" id="useremailrecoverpass" name="useremailrecoverpass" onkeyup="LostPassKeyDown()"
                                class="txtinput" size="30" runat="server" />&nbsp;<input type="button" id="passsubbutton"
                                    value="Submit" disabled="disabled" class="submitadmin" onclick="sendRequestLostPasswordTextPost()" />
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldEmail" ControlToValidate="useremailrecoverpass"
                                SetFocusOnError="true" CssClass="cred2" ErrorMessage="Please enter an email address."
                                Display="Dynamic"> </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionLostPassEmail" runat="server"
                                ControlToValidate="useremailrecoverpass" SetFocusOnError="true" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Static" CssClass="cred2">
 Invalid email address. Email address must be a valid format.
                            </asp:RegularExpressionValidator>
                            <div style="margin-top: 12px; margin-bottom: 2px;">
                                <div id="idforresultslostpass">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
