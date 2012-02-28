<%@ Page Language="C#" MasterPageFile="~/Masters/very_large_instruction_word_links.master" AutoEventWireup="True" CodeBehind="The-Alternative-VLIW-Processors.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.The_Alternative_VLIW_Processors" %>
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
	<b>The Alternative: VLIW Processors </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; VLIW architectures rely on compile-time detection of parallelism =>  the compiler analysis the program and detects operations to be executed in parallel; such operations are packed into one "large” instruction. 
<br>&bull; After one instruction has been fetched all the corresponding operations are issued in parallel. 
<br> 
<br>&bull; No hardware is needed for run-time detection of parallelism. 
<br>&bull; The window of execution problem is solved: the compiler can potentially analyse the whole program in order to detect parallel operations. 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image1.jpeg"></sub>
<br>&bull; Detection of parallelism and packaging of operations into instructions is done, by the compiler, off-line. 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image2.jpeg"></sub>
<br><b>Advantages and Problems with VLIW Processors </b>
<br>Advantages 
<br>&bull; Simple hardware: 
<br>- the number of FUs can be increased without needing additional sophisticated hardware to detect parallelism, like in superscalars. &bull; Good compilers can detect parallelism based on global analysis of the whole program (no window of execution problem). 
<br>Problems 
<br>&bull; Large number of registers needed in order to keep all FUs active (to store operands and results). 
<br>&bull; Large data transport capacity is needed between FUs and the register file and between register files and memory. 
<br>&bull; High bandwidth between instruction cache and fetch unit. Example: one instruction with 7 operations, each 24 bits =>  168 bits/instruction. 
<br>&bull; Large code size, partially because unused operations =>  wasted bits in instruction word. 
<br>&bull; Incomputability of binary code 
<br>For example: 
<br>If for a new version of the processor additional FUs are introduced =>  the number of operations possible to execute in parallel is increased =>  the instruction word changes =>  old binary code cannot be run on this processor. 
<br><b>An Example </b>
<br>Consider the following code in C: 
<br>for (i=959; i &gt;= 0; i--) 
<br>x[i] = x[i] + s; 
<br>Assumptions: x is an array of floating point values s is a floating point constant. 
<br>This sequence (for an ordinary processor) would be compiled to: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Loop:&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>LDD </td>

      
      <td class="txt">
	<br>F0, (R1) </td>

      
      <td class="txt">
	<br>F0  x[i] ;(load double)</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ADF 
</td>

      
      <td class="txt">
	<br>F4,F0,F2 
</td>

      
      <td class="txt">
	<br>F4  F0 + F2 ;(floating pnt)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>STD 
</td>

      
      <td class="txt">
	<br>(R1),F4 
</td>

      
      <td class="txt">
	<br>x[i]  F4 ;(store double)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>SBI 
</td>

      
      <td class="txt">
	<br>R1,R1,#8&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R1  R1 - 8
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BGEZ&nbsp;&nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R1,Loop 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>Assumptions: 
<br>- R1 initially contains the address of the last element in x; the other elements are at lower addresses; x[0] is at address 0. 
<br>- Floating point register F2 contains the value s. 
<br>- Each floating point value is 8 bytes long. 
<br>Consider a VLIW processor: 
<br>- two memory references, two FP operations, and one integer operation or branch can be issued each clock cycle. 
<br>- The delay for a double word load is one additional clock cycle. 
<br>- The delay for a floating point operation is two additional clock cycles. 
<br>- No additional clock cycles for integer operations. 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image3.jpeg"></sub>
<br>&bull; One iteration takes 6 cycles. The whole loop takes 960*6 = 5760 cycles. 
<br>&bull; Almost no parallelism there. 
<br>&bull; Most of the fields in the instructions are empty. 
<br>&bull; We have two completely empty cycles. 
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image5.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-alternative-vliw-processors/image5.wmf"></sub>
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
