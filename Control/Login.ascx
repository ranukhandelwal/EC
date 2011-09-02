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
<div class="mod loginForm unit">
                                <h3>
                                    User Login</h3>
                                <label>
                                    User Name</label>
                                
                                <asp:TextBox ID="uname" TextMode=SingleLine Text="" runat="server" ToolTip="Enter username" />
                                <label>
                                    Password</label>
                                <asp:TextBox ID="upass" TextMode=Password Text="password" runat="server" ToolTip="Enter password" />
                                <label>
                                    <a href="~/forgotpassword.aspx" title="Click here to request your password." onmouseover="Tip('If you forgot your password,<br>click on this link to recover it.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)" onmouseout="UnTip()" runat="server">Forgot Password?</a></label>
                                <label>
                                    <a href="~/registration.aspx" title="Click here to register." onmouseover="Tip('If you are not a registered user,<br>click on this link to register now for free.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db', ABOVE, true)" onmouseout="UnTip()"  runat="server">New Registration?</a></label>
                                    <div class="unitExt">
                                <asp:ImageButton ID="usubmit" runat="server" OnClick="Login_Click" 
                                    Text="Login" causesvalidation="true" 
                                    validationgroup="LoginGroup"  
                                    ImageUrl="~/img/loginbtn.gif" />
                                    </div>
                                
                            </div>

</asp:Panel>
<asp:Panel Visible="false" ID="DisplayUserInfo" runat="server" style="margin-top: 30px;">
<asp:Label cssClass="content01" runat="server" Visible="false" id="lblnewfriendalert" /><asp:Label cssClass="content01" runat="server" Visible="false" id="lblPrivateMessageAlert" /><asp:Label cssClass="content12" runat="server" id="lblusername" />&nbsp;&nbsp;<asp:Button ID="Buttonlogout" runat="server" OnClick="Logout_Click" cssClass="submitadmin" Text="Logout" />
</asp:Panel>
