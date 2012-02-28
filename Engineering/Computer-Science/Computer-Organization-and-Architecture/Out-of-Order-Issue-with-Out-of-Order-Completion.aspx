<%@ Page Language="C#" MasterPageFile="~/Masters/super_scalar_processors_links.master" AutoEventWireup="True" CodeBehind="Out-of-Order-Issue-with-Out-of-Order-Completion.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Out_of_Order_Issue_with_Out_of_Order_Completion" %>
<%@ MasterType VirtualPath="~/Masters/super_scalar_processors_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Out-of-Order Issue with Out-of-Order Completion</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; With in-order issue, no new instruction can be issued when the processor has detected a conflict and is stalled, until after the conflict has been resolved. 
<br>
<br>The processor is not allowed to look ahead for further instructions, which could be executed in parallel with the current ones. 
<br>&bull; Out-of-order issue tries to resolve the above problem. Taking the set of decoded instructions the processor looks ahead and issues any instruction, in any order, as long as the program execution is correct. 
<br>We consider the instruction sequence in slide 15. 
<br>&bull; I6 can be now issued before I5 and in parallel with I4; the sequence takes only 6 cycles (compared to 8 if we have in-order issue&amp;in-order completion and to 7 with in-order issue&amp;out-of-order completion). <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Decode/
<br>Issue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>Execute &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>Write back/
<br>Complete &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>Cycle </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br>l1 </td>

      
      <td class="txt">
	<br>l2</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l3 
</td>

      
      <td class="txt">
	<br>l4
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l5 
</td>

      
      <td class="txt">
	<br>l6
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr></table>
<br>
</td>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp;</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l1 
</td>

      
      <td class="txt">
	<br>l2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l1 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>l3
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>l6 
</td>

      
      <td class="txt">
	<br>l4
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>l5 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>
</td>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp;</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l1 
</td>

      
      <td class="txt">
	<br>l3
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l4 
</td>

      
      <td class="txt">
	<br>l6
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l5 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr></table>
<br>
</td>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>1</td>
</tr>

    <tr>

      
      <td class="txt">
<br>2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>3
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>4 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>5
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>6
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>7
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>8
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>&bull; With out-of-order issue&amp; out-of-order completion the processor has to bother about true data dependency and both about output-dependency and antidependency! 
<br>Output dependency can be violated (the addition completes before the multiplication): 
<br>MUL R4,R3,R1 R4  R3 * R1
<br>- - - - - - - - - - - - - -
<br>ADD R4,R2,R5 R4  R2 + R5
<br>Antidependency can be violated (the operand in R3 is used after it has been over-written): 
<br>MUL R4,R3,R1 R4  R3 * R1
<br>- - - - - - - - - - - - - -
<br>ADD R3,R2,R5 R3  R2 + R5 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss About Computer Organization and Architecture </b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Superscalar Processors</b>
<br>Discussion forum for Superscalar Processors</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br><b>Thread / Thread Starter</b>
</td>

      
      <td class="txt">
	<br><b>Last Post</b>
</td>

      
      <td class="txt">
	<br><b>Replies</b>
</td>

      
      <td class="txt">
	<br><b>Views</b>
</td>
</tr></table>
<br>
<br>
	<br>Bottom of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>To start your new thread you must login here.</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered else register here</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>EXISTING USER LOGIN</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br><b>(Members Login)</b> </td>
</tr>

    <tr>

      
      <td class="txt">
<br>Username: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>NEW USER REGISTERATION FORM</b> </td>
</tr>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
<br></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Login-Id</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_out-of-order-issue-with-out-of-order-completion/image1.wmf"></sub>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>Bottom of Form
</td>
</tr></table>
<br>
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
