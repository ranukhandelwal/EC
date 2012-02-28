<%@ Page Language="C#" MasterPageFile="~/Masters/super_scalar_processors_links.master" AutoEventWireup="True" CodeBehind="In-Order-Issue-with-In-Order-Completionbr.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.In_Order_Issue_with_In_Order_Completionbr" %>
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
	<b>In-Order Issue with In-Order Completion</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; Instructions are issued in the exact order that would correspond to sequential execution; results are written (completion) in the same order. 
<br>
<br>- An instruction cannot be issued before the previous one has been issued; 
<br>- An instruction completes only after the previous one has completed. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br>l3
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
	<br>l6 
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
<br>l1 
</td>

      
      <td class="txt">
	<br>l2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l3 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l4 
</td>

      
      <td class="txt">
	<br>&nbsp;
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
<br>l6 
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
<br>- To guarantee in-order completion, instruction issuing stalls when there is a conflict and when the unit requires more than one cycle to execute; 
<br>&bull; The processor detects and handles (by stalling) true data dependencies and resource conflicts. 
<br>&bull; As instructions are issued and completed in their strict order, the resulting parallelism is very much dependent on the way the program is written/ compiled. 
<br>
<br>If I3 and I6 switch position, the pairs I6-I4 and I5-I3 can be executed in parallel (see following slide). 
<br>&bull; With superscalar processors we are interested in techniques which are not compiler based but allow the hardware alone to detect instructions which can be executed in parallel and to issue them. 
<br>If the compiler generates this sequence: 
<br>I1: ADDF R12,R13,R14 R12  R13 + R14 (float. pnt.) 
<br>I2: ADD R1,R8,R9 R1  R8 + R9
<br>I6: ADD R11,R2,R3 R11  R2 + R3
<br>I4: MUL R5,R6,R7 R5  R6 * R7
<br>I5: ADD R10,R5,R7 R10  R5 + R7
<br>I3: MUL R4,R2,R3 R4  R2 * R3
<br>I6-I4 and I5-I3 could be executed in parallel<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
<br>l6 
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
	<br>l3
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
	<br>&nbsp;
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
	<br>l3
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
<br>l1 
</td>

      
      <td class="txt">
	<br>l2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>l6 
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
	<br>l3
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
<br>&bull; The sequence needs only 6 cycles instead of 8. 
<br>&bull; With in-order issue&amp; in-order completion the processor has not to bother about outputdependency and antidependency! It has only to detect true data dependencies. 
<br>No one of the two dependencies will be violated if instructions are issued/completed in-order: 
<br>output dependency 
<br>MUL R4,R3,R1 R4  R3 * R1
<br>- - - - - - - - - - - - - -
<br>ADD R4,R2,R5 R4  R2 + R5
<br>Antidependency 
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_in-order-issue-with-in-order-completionbr/image1.wmf"></sub>
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
