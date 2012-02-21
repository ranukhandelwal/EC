<%@ Control Language="C#" AutoEventWireup="true" Inherits="Login" CodeBehind="Login.ascx.cs" %>
<asp:Panel Visible="false" ID="invalidcredential1" runat="server">
    <div class="loginerrmsgwrapper">
        <asp:Label runat="server" CssClass="InvalidCred" ID="lblinvalidcredential1" Visible="true"
            EnableViewState="false" Text="The submitted credentials are not valid.<br>Please check they are correct." />
    </div>
</asp:Panel>
<asp:Panel ID="loginpanel1" runat="server" Visible="false">
    <div class="mod loginForm unit">
        <h3>
            User Login</h3>
        <label>
            User Name</label>
        <asp:TextBox ID="uname1" TextMode="SingleLine" Text="" runat="server" ToolTip="Enter username" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUnameMain" ControlToValidate="uname1"
            CssClass="InvalidCred" ValidationGroup="LoginGroup1" ErrorMessage="User Name is empty"
            runat="Server">
        </asp:RequiredFieldValidator>
        <label>
            Password</label>
        <asp:TextBox ID="upass1" TextMode="Password" Text="password" runat="server" ToolTip="Enter password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUPassMain" ControlToValidate="upass1"
            CssClass="InvalidCred" ValidationGroup="LoginGroup1" ErrorMessage="Password is empty"
            runat="Server">
        </asp:RequiredFieldValidator>
        <label>
            <a href="~/forgotpassword.aspx" title="Click here to request your password." onmouseover="Tip('If you forgot your password,<br>click on this link to recover it.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)"
                onmouseout="UnTip()" runat="server">Forgot Password?</a></label>
        <label>
            <a href="~/registration.aspx" title="Click here to register." onmouseover="Tip('If you are not a registered user,<br>click on this link to register now for free.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)"
                onmouseout="UnTip()" runat="server">New Registration?</a></label>
        <div class="unitExt">
            <asp:ImageButton ID="usubmit" runat="server" OnClick="Login_Click1" Text="Login"
                CausesValidation="true" ValidationGroup="LoginGroup1" ImageUrl="~/img/loginbtn.gif" />
        </div>
    </div>
</asp:Panel>
<asp:Panel ID="loginpanel2" runat="server" Visible="false">
    <label>
        Register User</label>
    <asp:TextBox ID="uname2" TextMode="SingleLine" Text="User Name" name="User Name"
        ToolTip="Enter username" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="uname2"
        CssClass="InvalidCred" ValidationGroup="LoginGroup2" ErrorMessage="User Name is empty"
        runat="Server">
    </asp:RequiredFieldValidator>
    <asp:TextBox ID="upass2" TextMode="Password" Text="password" runat="server" ToolTip="Enter password" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="upass2"
        CssClass="InvalidCred" ValidationGroup="LoginGroup2" ErrorMessage="Password is empty"
        runat="Server">
    </asp:RequiredFieldValidator>
    <asp:Button class="button" ID="usubmit2" OnClick="Login_Click2" runat="server" Text="Login"
        CausesValidation="true" ValidationGroup="LoginGroup2" />
    <a href="~/registration.aspx" title="New User" runat="server">New User</a>
</asp:Panel>
<asp:Panel ID="loginpanel3" runat="server" Visible="false">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('a.login-window').click(function () {

                //Getting the variable's value from a link 
                var loginBox = $(this).attr('href');

                //Fade in the Popup
                $(loginBox).fadeIn(300);

                //Set the center alignment padding + border see css style
                var popMargTop = ($(loginBox).height() + 24) / 2;
                var popMargLeft = ($(loginBox).width() + 24) / 2;

                $(loginBox).css({
                    'margin-top': -popMargTop,
                    'margin-left': -popMargLeft
                });

                // Add the mask to body
                $('body').append('<div id="mask"></div>');
                $('#mask').fadeIn(300);

                return false;
            });

            // When clicking on the button close or the mask layer the popup closed
            $('a.close, #mask').live('click', function () {
                $('#mask , .login-popup').fadeOut(300, function () {
                    $('#mask').remove();
                });
                return false;
            });
        });
    </script>
    <a href="#login-box" class="login-window">Login / Sign In</a>
    <div id="login-box" class="login-popup">
        <a href="#" class="close">
            <img src="close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
        <fieldset class="textbox">
            <label>
                UserName</label>
            <asp:TextBox ID="uname3" TextMode="SingleLine" Text="" runat="server" ToolTip="Enter username" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="uname3"
                CssClass="InvalidCred" ValidationGroup="LoginGroup3" ErrorMessage="User Name is empty"
                runat="Server">
            </asp:RequiredFieldValidator>
            <br>
            <label>
                Password </label>
            <asp:TextBox ID="upass3" TextMode="Password" Text="password" runat="server" ToolTip="Enter password" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="upass3"
                CssClass="InvalidCred" ValidationGroup="LoginGroup3" ErrorMessage="Password is empty"
                runat="Server">
            </asp:RequiredFieldValidator>
            <asp:Button class="button" ID="usubmit3" OnClick="Login_Click3" runat="server" Text="Login"
                CausesValidation="true" ValidationGroup="LoginGroup3" />
            <p>
                <a class="forgot" href="#">Forgot your password?</a>
            </p>
            <p>
                <a id="A1" href="~/registration.aspx" title="New User" runat="server">New User</a>
            </p>
        </fieldset>
    </div>
</asp:Panel>
<asp:Panel Visible="false" ID="invalidcredential2" runat="server">
    <div class="loginerrmsgwrapper">
        <asp:Label runat="server" CssClass="InvalidCred" ID="lblinvalidcredential2" Visible="true"
            EnableViewState="false" Text="Invalid Login." />
    </div>
</asp:Panel>
<asp:Panel Visible="false" ID="DisplayUserInfo" runat="server">
    <asp:Label CssClass="content12" runat="server" ID="lblusername" />&nbsp;&nbsp;<asp:Button
        ID="Buttonlogout" class="button" runat="server" OnClick="Logout_Click" Text="Logout" />
</asp:Panel>
