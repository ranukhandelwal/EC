<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="admin_editprofile" %>
<%@ Register TagPrefix="ucl" TagName="CalendarDatePicker" Src="../Control/DatePicker.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editting Profile in Admin</title>
    <script type="text/javascript" src="../js/rcipejs.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/CheckUserNameEmailAjax.js"></script>
    <script type="text/javascript" src="../js/validator.js"></script>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 5px; margin-top: 25px;">
        <h3>Membership Manager</h3>
<div style="margin-top: 6px;"><asp:Label font-names="verdana" font-size="9" ID="lblusername" runat="server" /></div>
<div style="margin-bottom: 4px; margin-top: 10px;">
<img src="../images/arrow.gif" align="absmiddle" /><a href="managermain.aspx" class="content12" title="Back to manager main page">Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server" id="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</div>
</div>
    <div>
    <!--Begin Insert Recipe Form-->
    <asp:PlaceHolder id="PlaceHolder1" runat="server">
    <table border="0" cellpadding="2" align="center" cellspacing="2" width="95%">
      <tr>
    <td width="68%">
    <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
    <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana" Visible="false" /> 
    </div>
    <fieldset><legend><asp:Label ID="lbllegendheader" runat="server" EnableViewState="false" /></legend>
     <div style="padding-top: 1px;">
    <table border="0" cellpadding="2" align="left" cellspacing="2" width="80%">
            <tr>
        <td width="15%" valign="top"><span class="content12">Password:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Password1" name="Password1" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
           <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldPassword1" ControlToValidate="Password1" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter a password."
          display="Dynamic"> </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator id="RegularExpressionPassword1" runat="server"
            ControlToValidate="Password1" SetFocusOnError="true"
            ValidationExpression="\w{6,12}"
            Display="Static"
            cssClass="cred2">
 Password must be at least 6 characters long and 12 characters maximun, and should only contain AlphaNumeric.
 </asp:RegularExpressionValidator>  
    </td>
      </tr>
      
             <tr>
        <td width="15%" valign="top"><span class="content12">Repeat Password:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Password2" name="Password2" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
               <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldPassword2" ControlToValidate="Password2" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please re-type the password."
          display="Dynamic"> </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator id="RegularExpressionPassword2" runat="server"
            ControlToValidate="Password2" SetFocusOnError="true"
            ValidationExpression="\w{6,12}"
            Display="Static"
            cssClass="cred2">
 Password must be at least 6 characters long and 12 characters maximun, and should only contain AlphaNumeric.
 </asp:RegularExpressionValidator> 
    </td>
      </tr>
      
               <tr>
        <td width="15%" valign="top"><span class="content12">Email:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Email" name="Email" class="txtinput" size="30" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldEmail" ControlToValidate="Email" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please an email address."
          display="Dynamic"> </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator id="RegularExpressionEmail" runat="server"
            ControlToValidate="Email" SetFocusOnError="true"
            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Display="Static"
            cssClass="cred2">
 Invalid email address. Email address must be a valid format.
 </asp:RegularExpressionValidator>
 <div style="margin-top: 12px;"></div>
    </td>
      </tr>
      
                   <tr>
        <td width="15%" valign="top"><span class="content12">Firstname:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Firstname" name="Firstname" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldFirstname" ControlToValidate="Firstname" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter your firstname."
          display="Dynamic"> </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionFirstname" runat="server"
            ControlToValidate="Firstname" SetFocusOnError="true"
            ValidationExpression="^[a-zA-Z ]+$"
            Display="Static"
            cssClass="cred2">
 Firstname should be alphabet and not contain illegal characters.
 </asp:RegularExpressionValidator> 
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><span class="content12">Lastname:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Lastname" name="Lastname" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
              <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldLastname" ControlToValidate="Lastname" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter your lasttname."
          display="Dynamic"> </asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator id="RegularExpressionLastname" runat="server"
            ControlToValidate="Lastname" SetFocusOnError="true"
            ValidationExpression="^[a-zA-Z ]+$"
            Display="Static"
            cssClass="cred2">
 Lastname should be alphabet and not contain illegal characters.
 </asp:RegularExpressionValidator> 
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><span class="content12">City/Town:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="City" name="City" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    <br /><br />
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><span class="content12">State/Province:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="State" name="State" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    <br /><br />
    </td>
      </tr>
      
       <tr>
        <td width="15%" valign="top"><span class="content12">Country:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <asp:DropDownList id="Country" runat="server" cssClass="ddl" AutoPostBack="false">
    </asp:DropDownList>
    <br /><br />
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><span class="content12">DOB:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
        <ucl:CalendarDatePicker ID="Date1" runat="server" />
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><span class="content2">Fav food 1:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="FavoriteFoods1" name="FavoriteFoods1" class="txtinput" size="25" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    <br /><br />
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><span class="content12">Fav food 2:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="FavoriteFoods2" name="FavoriteFoods2" class="txtinput" size="25" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    <br /><br />
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><span class="content12">Fav food 3:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="FavoriteFoods3" name="FavoriteFoods3" class="txtinput" size="25" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    <br /><br />
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><span class="content12">Newsletter:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <asp:dropdownlist id="Newsletter" runat="server" cssClass="ddl" AutoPostBack="false">
    <asp:Listitem Value="1" selected>Subscription Yes</asp:Listitem>
    <asp:Listitem Value="0">Subscription No</asp:Listitem>
    </asp:dropdownlist>
    <br /><br />
    </td>
      </tr>
      
       <tr>
        <td width="15%" valign="top"><span class="content12">Allow contact:</span><span class="cred2">*</span></td>
        <td width="74%" valign="top">
    <asp:dropdownlist id="ContactMe" runat="server" cssClass="ddl" AutoPostBack="false">
    <asp:Listitem Value="1" selected>Allow other users to email me</asp:Listitem>
    <asp:Listitem Value="0">Don't allow other users to email me</asp:Listitem>
    </asp:dropdownlist>
    <br /><br />
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><span class="content12">Website:</span></td>
        <td width="74%" valign="top">
    <input type="text" id="Website" name="Website" class="txtinput" size="35" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </td>
      </tr>
          
      <tr>
        <td width="15%" valign="top"><span class="content2">About me:</span></td>
        <td width="74%" valign="top">
    <textarea runat="server" id="AboutMe" class="textbox" textmode="multiline" cols="60" rows="10" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />
    </td>
      </tr>

        <tr>
        <td width="15%"><span class="content12">Photo:<br />(Optional)</span></td>
        <td width="74%">
        <div style="margin-top: 9px;">
        <asp:Image ID="userimageedit" Width="180" Height="130" runat="server"/>
        </div>
    <asp:FileUpload ID="UserImageFileUpload" runat="server" />&nbsp;<span class="content2"><br />Maximum Image size is 200 x 200 and less than 20,000 bytes.
    <br />
    <b>Note:</b> If you don't want to update your photo, just leave it blank.
    </span>
    </td>
      </tr>
      <tr>
        <td width="15%"></td>
        <td width="74%">
    <input type="text" class="txtinput" ID="hd" name="hd" runat="server" style="visibility:hidden;">
    <br />
    <asp:Button runat="server" Text="Submit" id="AddComments" cssClass="submitadmin" OnClick="Update_User" />
    </td>
      </tr>
    </table>
     </div>
    </fieldset>
    </td>
      </tr>
    </table>
    </asp:PlaceHolder>
    </div>
    <asp:Literal id="JSLiteral" runat="server"></asp:Literal>
    <!--End Insert Recipe Form-->
    </form>
        <!--Begin Footer-->
<div style="clear:both; margin-top: 80px;"><br /></div>
<div class="footerwrap">
<br />
<img src="../images/returntop.gif" alt="return to top" align="absmiddle" border="0" /><a class="dt2" title="Return to top of the page" href="#Top">Return to top</a>
<br />
<span class="content2">
Copyright © 2000 - 2008 Ex-designz.net. All rights reserved. Developed By <a class="dt2" title="Website" href="http://www.ex-designz.net">Dexter Zafra - Ex-designz.net</a></span>
<br />
  <asp:HyperLink id="Powered" cssClass="dt2" ToolTip="Visit our portal website" NavigateURL="http://www.ex-designz.net" runat="server">Powered By Ex-designz.net World Recipe .NET version</asp:HyperLink>
 </div>
<!--End Footer-->
</body>
</html>
