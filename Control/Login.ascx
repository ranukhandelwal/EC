<%@ Control Language="C#" AutoEventWireup="true" Inherits="Login" CodeBehind="Login.ascx.cs" %>
<div class="loginerrmsgwrapper">
    <asp:Label runat="server" CssClass="InvalidCred" ID="lblinvalidcredential1" Visible="false"
        EnableViewState="false" Text="The submitted credentials are not valid.<br>Please check they are correct." />
</div>
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
            <asp:ImageButton ID="usubmit" runat="server" OnClick="Login_Click1" Text="Login" CausesValidation="true"
                ValidationGroup="LoginGroup1" ImageUrl="~/img/loginbtn.gif" />
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
    <asp:Button class="button" ID="usubmit2" OnClick="Login_Click2" runat="server" Text="Login" CausesValidation="true"
        ValidationGroup="LoginGroup2" />
    <a href="~/registration.aspx" title="New User" runat="server">New User</a>
</asp:Panel>
<div class="loginerrmsgwrapper">
    <asp:Label runat="server" CssClass="InvalidCred" ID="lblinvalidcredential2" Visible="false"
        EnableViewState="false" Text="Invalid Login." />
</div>
<asp:Panel Visible="false" ID="DisplayUserInfo" runat="server" >
 <asp:Label CssClass="content12" runat="server" ID="lblusername" />&nbsp;&nbsp;<asp:Button
        ID="Buttonlogout" class="button" runat="server" OnClick="Logout_Click" 
        Text="Logout" />
</asp:Panel>
