<%@ Page Language="C#" MasterPageFile="~/Masters/very_large_instruction_word_links.master" AutoEventWireup="True" CodeBehind="Trace-Scheduling.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Trace_Scheduling" %>
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
	<b>Trace Scheduling </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Trace scheduling is another technique used in compilers in order to exploit parallelism across conditional branches. 
<br>&bull; The problem is that long instruction sequences are needed in order to detect sufficient parallelism =>  block boundaries have to be crossed. 
<br>&bull; Trace scheduling is based on compile time branch prediction. 
<br>Trace scheduling is done in three steps: 
<br>1. Trace selection 
<br>2. Instruction scheduling 
<br>3. Replacement and compensation 
<br>Example: 
<br>if (c != 0) 
<br>b = a / c; 
<br>else 
<br>b = 0; h=0; 
<br>f = g + h; 
<br>This sequence (for an ordinary processor) would be compiled to: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>LD </td>

      
      <td class="txt">
	<br>R0, c </td>

      
      <td class="txt">
	<br>R0  c ;(load word)</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BZ 
</td>

      
      <td class="txt">
	<br>R0,Else 
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
	<br>LD 
</td>

      
      <td class="txt">
	<br>R1, a 
</td>

      
      <td class="txt">
	<br>R1  a ;(load integer)
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
	<br>DV 
</td>

      
      <td class="txt">
	<br>R1,R1,R0 
</td>

      
      <td class="txt">
	<br>R1  R1 / R0 ;(integer)
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
	<br>ST 
</td>

      
      <td class="txt">
	<br>b,R1 
</td>

      
      <td class="txt">
	<br>b  R1 ;(store word)
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
	<br>Next 
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
<br>Else: 
</td>

      
      <td class="txt">
	<br>STI 
</td>

      
      <td class="txt">
	<br>b,#0 
</td>

      
      <td class="txt">
	<br>b  0
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
	<br>STI 
</td>

      
      <td class="txt">
	<br>h,#0¬ 0
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
<br>Next: 
</td>

      
      <td class="txt">
	<br>LD 
</td>

      
      <td class="txt">
	<br>R0, g 
</td>

      
      <td class="txt">
	<br>R0  g ;(load word)
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
	<br>LD 
</td>

      
      <td class="txt">
	<br>R1, h 
</td>

      
      <td class="txt">
	<br>R1  h ;(load word)
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
	<br>AD 
</td>

      
      <td class="txt">
	<br>R1,R1,R0 
</td>

      
      <td class="txt">
	<br>R1  R1 + R0 ;(integer)
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
	<br>ST 
</td>

      
      <td class="txt">
	<br>f,R1 
</td>

      
      <td class="txt">
	<br>f  R1 ;(store word)
</td>

      
      <td class="txt">
	<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>End: - - - - - - - - - - - - - - -
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image1.jpeg"></sub>
<br>Trace selection: 
<br>&bull; Selects a sequence of basic blocks, likely to be executed most of the time. This sequence is called a trace. 
<br>&bull; Trace selection is based on compile time branch prediction 
<br>- The quality of prediction can be improved by profiling: 
<br>execution of the program with several typical input sequences and collection of statistics concerning conditional branches. 
<br>Instruction scheduling: 
<br>&bull; Schedules the instructions of the selected trace into parallel operations for the VLIW processor. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>LD R0,c </td>

      
      <td class="txt">
	<br>LD R1,a </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp;</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>LD R2,g 
</td>

      
      <td class="txt">
	<br>LD R3,h 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>BZ R0,Else 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>DV R1,R1,R0 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Next 
</td>

      
      <td class="txt">
	<br>ST b,R1 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>AD R3,R3,R2 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>ST f,R3 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>BR End 
</td>
</tr></table>
<br>(suppose the same processor as described on slide 8) 
<br>Replacement and compensation 
<br>&bull; The initial trace is replaced with the generated schedule. 
<br>&bull; In the generated schedule, instructions have been moved across branches 
<br> 
<br>In order to keep the code correct, regardless of the selected branches, compensation code has to be added! 
<br>In the example: 
<br>- the load of values g and h has been moved up, from the next sequence, before the conditional branch; 
<br>- the load of value a has been moved before the conditional branch; 
<br>- the store of value b after the division is now part of the next sequence. 
<br>Simply merging with the code from the elsesequence is not enough: 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image2.jpeg"></sub>
<br>&bull; Compensation is needed! 
<br>This is the correct sequence: 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image3.jpeg"></sub>
<br>&bull; This is different from speculative execution (as in superscalars, for example). 
<br>&bull; This is a compiler optimizationand tries to optimize the code so that the path which is most likely to be taken, is executed as fast as possible. 
<br>The prise: possible additional instructions(the compensation code) to be executed when the less probable path is taken. 
<br>&bull; The correct path will be always taken; however, if this is not the one predicted by the compiler, execution will be slower because of the compensation code. 
<br>&bull; Beside this, at the hardware level, a VLIW processor can also use branch prediction and speculative execution, like any processor in order to improve the use of its pipelines. 
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image5.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_trace-scheduling/image5.wmf"></sub>
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
