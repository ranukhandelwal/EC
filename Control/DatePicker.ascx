<%@ Control Language="C#" AutoEventWireup="true" Inherits="CalendarDatePicker" Codebehind="DatePicker.ascx.cs" %>
<asp:Literal ID="litCSS" runat="server"></asp:Literal>
<asp:Literal ID="litJS" runat="server"></asp:Literal>
<table id="tbl_control" cellSpacing="0" cellPadding="0" border="0" style="border-style:none; border-width:0px; white-space: nowrap;">
	<tr>
		<td align="middle" style="border-style:none; border-width:0px; height: 30px;"><asp:textbox id="txt_Date" onclick="ValLastname()" runat="server" CssClass="txtinput" Width="70" onmouseover="Tip('Date of birth format should be 1/1/2001 or 01/05/2001.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')" onmouseout="UnTip()"></asp:textbox>&nbsp;
		</td>
		<td style="border-style:none; border-width:0px; height: 30px;"><asp:image id="imgCalendar" runat="server" ToolTip="Pick a date" ImageUrl="~/images/calendar2.gif"></asp:image>
		          <asp:RequiredFieldValidator runat="server"
          id="RequiredFieldDOB" ControlToValidate="txt_Date" SetFocusOnError="true"
          cssClass="cred2"
          ErrorMessage = "Please enter your Date of Birth."
          display="Dynamic"> </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator id="RegularExpressionDOB" runat="server"
            ControlToValidate="txt_Date" SetFocusOnError="true"
            ValidationExpression="^((((0[13578])|([13578])|(1[02]))[\/](([1-9])|([0-2][0-9])|(3[01])))|(((0[469])|([469])|(11))[\/](([1-9])|([0-2][0-9])|(30)))|((2|02)[\/](([1-9])|([0-2][0-9]))))[\/]\d{4}$|^\d{4}$"
            Display="Static"
            cssClass="cred2">
 Invalid date format. Date format should be 1/1/2009 or 01/01/2009.
 </asp:RegularExpressionValidator>
		</td>
	</tr>
</table>