<%@ Control Language="C#" AutoEventWireup="true" Inherits="Login" Codebehind="Login.ascx.cs" %>
<div class="loginerrmsgwrapper">
<asp:Label runat="server" CssClass="InvalidCred" id="lblinvalidcredential" Visible="false" EnableViewState="false" Text="The submitted credentials are not valid.<br>Please check they are correct." />
 <asp:requiredfieldvalidator id="RequiredFieldValidatorUnameMain"
      controltovalidate="uname"
      CssClass="InvalidCred"
      validationgroup="LoginGroup"
      errormessage="User Name is empty"
      runat="Server">
    </asp:requiredfieldvalidator>
     <asp:requiredfieldvalidator id="RequiredFieldValidatorUPassMain"
      controltovalidate="upass"
      CssClass="InvalidCred"
      validationgroup="LoginGroup"
      errormessage="Password is empty"
      runat="Server">
    </asp:requiredfieldvalidator>
</div>
<asp:Panel ID="loginpanel" runat="server">
<div class="loginboxlabelwrapper"><span class="content2">User Name</span>
<asp:TextBox ID="uname" cssClass="textboxsearch" TextMode=SingleLine Width="104px" Text="" runat="server" ToolTip="Enter username" />
</div>
<div class="loginboxlabelwrapper"><span class="content2">Password</span>
<asp:TextBox ID="upass" cssClass="textboxsearch" TextMode=Password Text="password" Width="104px" runat="server" ToolTip="Enter password" />&nbsp;<asp:Button ID="usubmit" runat="server" OnClick="Login_Click" cssClass="submitadmin" Text="Login" causesvalidation="true" validationgroup="LoginGroup" />
</div>
<div class="contrememberme">
<input type="checkbox" name="rememberme" id="rememberme" value="1" checked runat="server" /><span class="content2"> Remember me? &nbsp;<a href="forgotpassword.aspx" title="Click here to request your password." onmouseover="Tip('If you forgot your password,<br>click on this link to recover it.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)" onmouseout="UnTip()">Forgot Password</a>&nbsp;|&nbsp;<a href="registration.aspx" title="Click here to register." onmouseover="Tip('If you are not a registered user,<br>click on this link to register now for free.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)" onmouseout="UnTip()">Register</a></span>
</div>
</asp:Panel>
<asp:Panel Visible="false" ID="DisplayUserInfo" runat="server" style="margin-top: 30px;">
<asp:Label cssClass="content01" runat="server" Visible="false" id="lblnewfriendalert" /><asp:Label cssClass="content01" runat="server" Visible="false" id="lblPrivateMessageAlert" /><asp:Label cssClass="content12" runat="server" id="lblusername" />&nbsp;&nbsp;<asp:Button ID="Buttonlogout" runat="server" OnClick="Logout_Click" cssClass="submitadmin" Text="Logout" />
</asp:Panel>
