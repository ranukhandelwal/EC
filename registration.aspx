<%@ Page Title="" Language="C#" MasterPageFile="~/ExamCrazy-Register.master" AutoEventWireup="true" Inherits="registration" Codebehind="registration.aspx.cs" %>
<%@ Register TagPrefix="ucl" TagName="sidemenu" Src="Control/sidemenu.ascx" %>
<%@ Register TagPrefix="ucl" TagName="searchtab" Src="Control/searchtab.ascx" %>
<%@ Register TagPrefix="ucl" TagName="CalendarDatePicker" Src="Control/DatePicker.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div style="margin-left: 10px; margin-right: 12px; background-color: #FFF9EC; margin-top: 0px;">
    &nbsp;&nbsp;<a href="default.aspx" class="dsort" title="Back to ExamCrazy.Com homepage">Home</a>&nbsp;<span class="bluearrow">»</span>&nbsp; <span class="content2">You are here: User Registration Form</span>
    </div>
    <div style="margin-left: 15px;">
    <!--Begin Insert Recipe Form-->
    <asp:PlaceHolder id="PlaceHolder1" runat="server">
    <table border="0" cellpadding="2" align="center" cellspacing="2" width="95%">
      <tr>
    <td width="68%">
    <div style="padding: 2px; text-align: left; margin-left: 1px; margin-right: 26px;">
    <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana" Visible="false" /> 
    </div>
    <fieldset><legend>User Registration Form</legend>
     <div style="padding-top: 25px;">
     <asp:Label ID="lblWarningMessage" runat="server" CssClass="content12" Visible="false" EnableViewState="false" />
     <asp:Panel ID="HideFormIfLogin" runat="server">
     <div style="margin-top: 1px; margin-bottom: 20px;">
    <span class="content2">Fields mark with red asterisk (<span class="cred2">*</span>) are required</span>
    </div>
    <table border="0" cellpadding="2" align="left" cellspacing="2" width="80%">
      <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Username:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">  
    <input type="text" id="Username" name="Username" class="txtinput" size="20" runat="server" onkeypress="return LetterNumberDashUnderscoreOnly(event)" onkeyup="UnameKeyDown()" onmouseover="Tip('Username must be at least 6 characters long<br>and 15 characters maximun, and should only<br>contain letters, numbers, dash or underscore.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFBE1'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;<span id="idforresults"></span>
    <br />
    <input type="button" id="subbutton" value="Check availability" title="Check if username is available." disabled="disabled" class="submitadmin" onClick="sendRequestTextUsernamePost()" />&nbsp;
          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldUname" ControlToValidate="Username" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Username is blank"
          display="Dynamic"></asp:RequiredFieldValidator>
          </div>
    </td>
      </tr>
      
            <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Password:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="password" id="Password1" name="Password1" class="txtinput" size="20" runat="server" onclick="ValUsername()" onkeyup="PassKeyDown()" onmouseover="Tip('Password must be at least 6 characters long<br> and 12 characters maximun, and should only<br>contain Alphabet letters and numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFBE1'" onBlur="this.style.backgroundColor='#ffffff', ValPassword1()" />&nbsp;<span id="passwordval"></span>
           <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldPassword1" ControlToValidate="Password1" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Password is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
   </div>
    </td>
      </tr>
      
             <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Repeat Password:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="password" id="Password2" name="Password2" class="txtinput" size="20" runat="server" onkeyup="PassKeyDown()" onmouseover="Tip('Password must be at least 6 characters long<br> and 12 characters maximun, and should only<br>contain Alphabet letters and numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFBE1'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;<span id="repeatpass"></span>
               <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldPassword2" ControlToValidate="Password2" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Password 2 is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
          </div>
    </td>
      </tr>
      
               <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Email:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="Email" name="Email" class="txtinput" size="30" runat="server" onclick="CheckIfPasswordMatch()" onkeyup="EmailKeyDown()" onmouseover="Tip('Email should not exceed 45 characters long.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;<span id="idforresultsemail"></span>
        <br />
    <input type="button" id="subbutemail" value="Verify email" title="Check if email already in used. Cannot use the same email." disabled="disabled" class="submitadmin" onClick="sendRequestEmailTextPost()" />&nbsp;
          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldEmail" ControlToValidate="Email" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Email is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
     </div>
    </td>
      </tr>
      
       <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Firstname:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="Firstname" name="Firstname" class="txtinput" size="20" runat="server" onkeypress="return LetterOnly(event)" onkeyup="FirstLastnameKeyDown()" onclick="ValEmail()" onmouseover="Tip('Firstname should be Alphabet letters<br>and cannot contain numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;<span id="resultfirstname"></span>
          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldFirstname" ControlToValidate="Firstname" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Firstname is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
 </div>
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Lastname:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="Lastname" name="Lastname" class="txtinput" size="20" runat="server" onkeypress="return LetterOnly(event)" onkeyup="FirstLastnameKeyDown()" onclick="ValFirstname()" onmouseover="Tip('Lastname should be Alphabet letters<br>and cannot contain numbers.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;<span id="resultlastname"></span>
              <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldLastname" ControlToValidate="Lastname" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Lastname is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
 </div>
    </td>
      </tr>
      
      <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Sex:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
        <asp:RadioButtonList ID="RadioButtonSex" runat="server">
        <asp:ListItem>Male</asp:ListItem>  <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    </div>
    </td>
      </tr>
      <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Country:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <asp:DropDownList id="Country" runat="server" onchange="ValLastname()" cssClass="ddl" AutoPostBack="false">
        <asp:Listitem Value="none" Selected=True>Select a Country</asp:Listitem>
    </asp:DropDownList>
              <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldCountry" ControlToValidate="Country" SetFocusOnError="true"
          cssClass="cred2"
          InitialValue="none"
          ErrorMessage = "Country is blank"
          display="Dynamic"> </asp:RequiredFieldValidator>
    </div>
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">State/Province:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="State" name="State" class="txtinput" size="20" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </div>
    </td>
      </tr>
         <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">City/Town:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="City" name="City" class="txtinput" size="20" onclick="ValLastname()" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </div>
    </td>
      </tr>
      
      
       
      
        <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">DOB:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
        <ucl:CalendarDatePicker ID="Date1" runat="server" />
        </div>
    </td>
      </tr>
      
         <tr>5
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Preparing for which Exam:</span></div></td>
        <td width="74%" valign="top">
        
        
        <div style="margin-bottom: 6px">
        <asp:Repeater id="ExamCategoryList" runat="server">     
        
        
        
        <ItemTemplate>
        <asp:CheckBoxList id="CheckBoxExamCategory" CellSpacing="5" CellPadding="2" RepeatColumns="2" RepeatDirection="Horizontal" runat="server">    
                         
             <asp:ListItem Value="Ajay"/>
        
       </asp:CheckBoxList>   
        
       </ItemTemplate>
       
    </asp:Repeater>
    </div>
       
    
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Fav food 2:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="FavoriteFoods2" name="FavoriteFoods2" class="txtinput" size="25" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </div>
    </td>
      </tr>
      
         <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Fav food 3:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="FavoriteFoods3" name="FavoriteFoods3" class="txtinput" size="25" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </div>
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Newsletter:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <asp:dropdownlist id="Newsletter" runat="server" cssClass="ddl" AutoPostBack="false">
    <asp:Listitem Value="1" selected>Subscription Yes</asp:Listitem>
    <asp:Listitem Value="0">Subscription No</asp:Listitem>
    </asp:dropdownlist>
    </div>
    </td>
      </tr>
      
       <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Allow contact:</span><span class="cred2">*</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <asp:dropdownlist id="ContactMe" runat="server" cssClass="ddl" AutoPostBack="false">
    <asp:Listitem Value="1" selected>Allow other users to email me</asp:Listitem>
    <asp:Listitem Value="0">Don't allow other users to email me</asp:Listitem>
    </asp:dropdownlist>
    </div>
    </td>
      </tr>
      
        <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">Website:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <input type="text" id="Website" name="Website" class="txtinput" size="35" runat="server" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" />&nbsp;
    </div>
    </td>
      </tr>
      
      
      <tr>
        <td width="15%" valign="top"><div style="margin-bottom: 6px"><span class="content12">About me:</span></div></td>
        <td width="74%" valign="top">
        <div style="margin-bottom: 6px">
    <textarea runat="server" id="AboutMe" class="textbox" textmode="multiline" cols="60" rows="10" onFocus="this.style.backgroundColor='#FFFCF9'" onBlur="this.style.backgroundColor='#ffffff'" /> </div></td></tr><tr>
        <td width="15%"><span class="content12">Photo:<br />(Optional)</span></td><td width="74%">
    <asp:FileUpload ID="UserImageFileUpload" runat="server" />&nbsp;<span class="content2"><br />Maximum Image size is 200 x 200 and less than 20,000 bytes.</span> </td></tr><tr>
        <td width="15%"></td>
        <td width="74%">
    <input type="text" class="txtinput" ID="hd" name="hd" runat="server" style="visibility:hidden;"> <br />
    <span class="content2">Security Code:</span> <br />
    <img height="30" alt="" src="imgsecuritycode.aspx" width="80"> <br />
      <asp:Label ID="lblinvalidsecode" cssClass="cred2" runat="server" visible="false" />
     <asp:TextBox ID="txtsecfield" Cssclass="txtinput" runat="server" Width="70"></asp:TextBox><asp:RequiredFieldValidator runat="server"
          id="reqSec" ControlToValidate="txtsecfield"
          cssClass="cred2"
          ErrorMessage = "Security code is blank"
          display="Dynamic"> </asp:RequiredFieldValidator><br /><br />
<asp:ValidationSummary
ID="ValidationSummary1"
runat="server"
EnableClientScript="true"
ShowMessageBox="true"
ShowSummary="false"
HeaderText="The following fields need attention:" />
    <asp:Button runat="server" Text="Submit" id="AddComments" cssClass="submitadmin" OnClick="Add_User" />
    </td>
      </tr>
    </table>
    </asp:Panel>
     </div>
    </fieldset>
           </td></tr></table></asp:PlaceHolder></div><asp:Literal id="JSLiteral" runat="server"></asp:Literal></asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="RightPanel" Runat="Server">
<div style="margin-left: 10px; margin-right: 12px; background-color: #FFF000; margin-top: 0px;">
    <span><b>Why to Join ExamCrazy.Com</b></span> <br><br>

Preparation material, articles, free practice tests for all Engineering and management tests in India. <br><br>
Get detailed information on thousands of colleges and courses in India. <br><br>
Discuss your problems with faculty and thousands of other students <br><br>
Ask ExamCrazy.com counsellor for courses and admission related free advice </div></asp:Content>