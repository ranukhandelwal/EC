<%@ Page Language="C#" MasterPageFile="~/Masters/very_large_instruction_word_links.master" AutoEventWireup="True" CodeBehind="Branch-Predication.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Branch_Predication" %>
<%@ MasterType VirtualPath="~/Masters/very_large_instruction_word_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Branch Predication </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; Branch predicationis a very aggressive compilation technique for generation of code with instruction level parallelism (code with parallel operations). 
<br>&bull; Branch predication goes one step further than trace scheduling. In order to exploit all potential of parallelism in the machine it lets operations from both branches of a conditional branch to be executed in parallel. 
<br>&bull; Branches can be very often eliminated and replaced by conditional execution. In order to do this hardware support is needed. 
<br>&bull; Branch predication is based on the instructions for predicated execution provided by the Merced architecture. 
<br>The idea is: let instructions from both branches go on in parallel, before the branch condition has been evaluated. The hardware (predicated execution) takes care that only those are committed which correspond to the right branch. 
<br>Branch predication is not branch prediction: 
<br>&bull; Branch prediction: guess for one branch and then go along that one; if the guess is bad, undo all the work; 
<br>&bull; Branch predication: both branches are started and when the condition is known (the predicate registers are set) the right instructions are committed, the others are discarded. 
<br> 
<br>There is no lost time with failed predictions. 
<br>Example: 
<br>if (a &amp;&amp; b) 
<br>j = j + 1; 
<br>else{ 
<br>if (c) 
<br>k = k + 1; 
<br>else 
<br>k = k - 1; 
<br>m = k * 5} 
<br>i = i + 1; 
<br>Assumptions: 
<br>The values are stored in registers, as follows: 
<br>a: R0; b: R1; j: R2; c: R3; k: R4; m: R5; i: R6. 
<br>This sequence (for an ordinary processor) would be compiled to: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>BZ&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>R0, L1 </td>

      
      <td class="txt">
	<br>branch if a == 0</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R1, L1 
</td>

      
      <td class="txt">
	<br>branch if b == 0
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R2, R2,#1&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R2  R2 + 1;(integer)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BR 
</td>

      
      <td class="txt">
	<br>L4 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>L1: 
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R3, L2 
</td>

      
      <td class="txt">
	<br>branch if c == 0
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R4, R4,#1 
</td>

      
      <td class="txt">
	<br>R4  R4 + 1;(integer)
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BR 
</td>

      
      <td class="txt">
	<br>L3 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>L2: 
</td>

      
      <td class="txt">
	<br>SBI 
</td>

      
      <td class="txt">
	<br>R4, R4,#1 
</td>

      
      <td class="txt">
	<br>R4  R4 - 1;(integer)
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>L3: 
</td>

      
      <td class="txt">
	<br>MPI 
</td>

      
      <td class="txt">
	<br>R5, R4,#5 
</td>

      
      <td class="txt">
	<br>R5  R4 * 5;(integer)
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>L4: 
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R6, R6,#1 
</td>

      
      <td class="txt">
	<br>R6  R6 + 1;(integer)
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>if not(a == 0) and not(b == 0) </td>

      
      <td class="txt">
	<br>ADI R2, R2,#1 </td>
</tr>

    <tr>

      
      <td class="txt">
<br>if not(not(a == 0) and not(b == 0)) and not(c == 0) 
</td>

      
      <td class="txt">
	<br>ADI R4, R4,#1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>if not(not(a == 0) and not(b == 0)) and not(not(c == 0)) 
</td>

      
      <td class="txt">
	<br>SBI R4, R4,#1 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>if not(not(a == 0) and not(b == 0)) 
</td>

      
      <td class="txt">
	<br>MPI R5, R4,#5 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADI R6, R6,#1
</td>
</tr></table>
<br>The same with predicated execution: 
<br>(all predicates are initialised as false) 
<br>(1) P1, P2 = EQ(R0, #0) 
<br>(2) P1, P3 = EQ(R1, #0) 
<br>(3) ADI R2, R2,#1 
<br>(4) P4, P5 = NEQ(R3, #0) 
<br>(5) ADI R4, R4,#1 
<br>(6) SBI R4, R4,#1 
<br>(7) MPI R5, R4,#5 
<br>(8) ADI R6, R6,#1 
<br>&bull; The compiler can plan all these instructions to be issued in parallel, except (5) and (6) which are data-dependent. 
<br>&bull; Instructions can be started before the particular predicate on which they depend is known. When the predicate will be known, the particular instruction will or will not be committed. 
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
	<br><b>Very Large Instruction Word Processors</b>
<br>Discussion forum for Very Large Instruction Word Processors</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_branch-predication/image1.wmf"></sub>
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
