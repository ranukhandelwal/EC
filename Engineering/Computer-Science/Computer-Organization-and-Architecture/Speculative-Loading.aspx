<%@ Page Language="C#" MasterPageFile="~/Masters/very_large_instruction_word_links.master" AutoEventWireup="True" CodeBehind="Speculative-Loading.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Speculative_Loading" %>
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
	<b>Speculative Loading </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>You remember when we discussed "delayed loading" (Fö. 5/6): 
<br>The load is placed so that memory latency is avoided 
<br>(the value is already there when it's needed): <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LOAD </td>

      
      <td class="txt">
	<br>R1,X </td>

      
      <td class="txt">
	<br>loads from address X into R1</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>ADD </b>
</td>

      
      <td class="txt">
	<br><b>R2,R1</b> 
</td>

      
      <td class="txt">
	<br><b>R2 </b><b></b><b> R2 + R1</b>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ADD 
</td>

      
      <td class="txt">
	<br>R4,R3 
</td>

      
      <td class="txt">
	<br>R4  R4 + R3
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>SUB 
</td>

      
      <td class="txt">
	<br>R2,R4 
</td>

      
      <td class="txt">
	<br>R2  R2 - R4
</td>
</tr></table>
<br> <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LOAD </td>

      
      <td class="txt">
	<br>R1,X </td>

      
      <td class="txt">
	<br>loads from address X into R1</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ADD 
</td>

      
      <td class="txt">
	<br>R4,R3 
</td>

      
      <td class="txt">
	<br>R4  R4 + R3 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>ADD </b>
</td>

      
      <td class="txt">
	<br><b>R2,R1</b> 
</td>

      
      <td class="txt">
	<br><b>R2 </b><b></b><b> R2 + R1</b>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>SUB 
</td>

      
      <td class="txt">
	<br>R2,R4 
</td>

      
      <td class="txt">
	<br>R2  R2 - R4
</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>ADI </td>

      
      <td class="txt">
	<br>R0,#1 </td>

      
      <td class="txt">
	<br>R0  R0 + 1;(integer)</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R0, L1 
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
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R2, R2,#1&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R2  R2 + 1;(integer)
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
	<br>L2 
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
<br>L1:&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>LD 
</td>

      
      <td class="txt">
	<br>R3, x 
</td>

      
      <td class="txt">
	<br>R3  x
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
	<br>R3, R3,#1 
</td>

      
      <td class="txt">
	<br>R3  R3 + 1;(integer)
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
</tr></table>
<br>In order to avoid memory latency the load for value x is moved by the compiler like this: 
<br>. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>LD </td>

      
      <td class="txt">
	<br>R3, x </td>

      
      <td class="txt">
	<br>R3  x</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R0,#1 
</td>

      
      <td class="txt">
	<br>R0  R0 + 1;(integer)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R0, L1 
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
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R2, R2,#1&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R2  R2 + 1;(integer)
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
	<br>L2 
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
<br>L1:&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R3, R3,#1 
</td>

      
      <td class="txt">
	<br>R3  R3 + 1;(integer)
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
</tr></table>
<br>Attention: the load has been moved ahead of the conditional branch! 
<br>What if a load is moved across a branch? 
<br>• The load will be executed for both branches. This shouldn't be a problem if parallel resources are available. 
<br>But it is a problem if, for example, a page fault is generated. Handling such an exception takes extremely much time and resources. 
<br> 
<br>We would like to handle the exception only on the branch which really needs the loaded value! This is solved by speculative loading! 
<br>With speculative loading a load instruction in the original program can be replaced by two instructions: 
<br>1. A speculative load (LD.s) which performs the memory fetch and detects an exception (like page fault) if generated. The exception, however is not signalled to the operating system). The speculative load is the one which is moved if needed for latency reduction. 
<br>2. A checking instruction (CHK.s) which signals the exception if one has been detected by the speculative load. If no exception has been detected, nothing happens. The checking instruction remains in place (is not moved). 
<br>By this technique, even if loads are moved across branch boundaries, exceptions are handled only on the branch which really needs the value. 
<br>The sequence on slide 37 will look like this, with speculative loading: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>LD.s </td>

      
      <td class="txt">
	<br>R3, x </td>

      
      <td class="txt">
	<br>R3  x</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R0,#1 
</td>

      
      <td class="txt">
	<br>R0  R0 + 1;(integer)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R0, L1 
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
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R2, R2,#1&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R2  R2 + 1;(integer)
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
	<br>L2 
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
<br>L1:&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>CHK.s&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R3 
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
<br>
</td>

      
      <td class="txt">
	<br>ADI 
</td>

      
      <td class="txt">
	<br>R3, R3,#1 
</td>

      
      <td class="txt">
	<br>R3  R3 + 1;(integer)
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
</tr></table>
<br>The compiler for a Merced processor will make use of both branch predication and speculative loading. For the sequence above, only speculative loading has been illustrated. 
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_speculative-loading/image1.wmf"></sub>
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
