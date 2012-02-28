<%@ Page Language="C#" MasterPageFile="~/Masters/reduced_in_struction_set_computers_links.master" AutoEventWireup="True" CodeBehind="Main-Characteristics-of-RISC-Architectures.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Main_Characteristics_of_RISC_Architectures" %>
<%@ MasterType VirtualPath="~/Masters/reduced_in_struction_set_computers_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Main Characteristics of RISC Architectures</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; The instruction set is limited and includes only simple instructions. 
<br>- The goal is to create an instruction set containing instructions that execute quickly; most of the RISC instructions are executed in a single machine cycle (after fetched and decoded). &bull; Pipeline operation (without memory reference): <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>FI </td>

      
      <td class="txt">
	<br>DI </td>

      
      <td class="txt">
	<br>EI </td>
</tr></table>
<br>- RISC instructions, being simple, are hard-wired, while CISC architectures have to use microprogramming in order to implement complex instructions. 
<br>- Having only simple instructions results in reduced complexity of the control unit and the data path; as a consequence, the processor can work at a high clock frequency. 
<br>- The pipelines are used efficiently if instructions are simple and of similar execution time. 
<br>- Complex operations on RISCs are executed as a sequence of simple RISC instructions. In the case of CISCs they are executed as one single or a few complex instruction. 
<br><b>Let's see some small example: </b>
<br>Assume: 
<br>- we have a program with 80% of executed instructions being simple and 20% complex; 
<br>- on a CISC machine simple instructions take 4 cycles, complex instructions take 8 cycles; cycle time is 100 ns (10<sup>-7</sup>s); 
<br>- on a RISC machine simple instructions are executed in one cycle; complex operations are implemented as a sequence of instructions; we consider on average 14 instructions (14 cycles) for a complex operation; cycle time is 75 ns (0.75 * 10<sup>-7</sup> s). 
<br>How much time takes a program of 1 000 000 instructions? 
<br>CISC: (10<sup>6</sup>*0.80*4 + 10<sup>6</sup>*0.20*8)*10<sup>-7</sup> = 0.48 s
<br>RISC: (10<sup>6</sup>*0.80*1 + 10<sup>6</sup>*0.20*14)*0.75*10<sup>-7</sup> = 0.27 s
<br>&bull; complex operations take more time on the RISC, but their number is small; 
<br>&bull; because of its simplicity, the RISC works at a smaller cycle time; with the CISC, simple instructions are slowed down because of the increased data path length and the increased control complexity. 
<br>&bull; Load-and-store architecture
<br>- Only LOAD and STORE instructions reference data in memory; all other instructions operate only with registers (are register-to-register instructions); thus, only the few instructions accessing memory need more than one cycle to execute (after fetched and decoded). &bull; Pipeline operation with memory reference: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>FI </td>

      
      <td class="txt">
	<br>DI </td>

      
      <td class="txt">
	<br>CA </td>

      
      <td class="txt">
	<br>TR </td>
</tr></table>
<br>CA : compute address
<br>TR: transfere 
<br>&bull; Instructions use only few addressing modes
<br>- Addressing modes are usually register, direct, register indirect, displacement. 
<br>&bull; Instructions are of fixed length and uniform Format 
<br>- This makes the loading and decoding of instructions simple and fast; it is not needed to wait until the length of an instruction is known in order to start decoding the following one; 
<br>- Decoding is simplified because opcode and address fields are located in the same position for all instructions
<br>&bull; A large number of registers is available
<br>- Variables and intermediate results can be stored in registers and do not require repeated loads and stores from/to memory. 
<br>- All local variables of procedures and the passed parameters can be stored in registers (see slide 8 for comments on possible number of variables and parameters). 
<br>What happens when a new procedure is called? 
<br>- Normally the registers have to be saved in memory (they contain values of variables and parameters for the calling procedure); at return to the calling procedure, the values have to be again loaded from memory. This takes a lot of time. 
<br>- If a large number of registers is available, a new set of registers can be allocated to the called procedure and the register set assigned to the calling one remains untouched. 
<br>Is the above strategy realistic? 
<br>- The strategy is realistic, because the number of local variables in procedures is not large. The chains of nested procedure calls is only exceptionally larger than 6. 
<br>- If the chain of nested procedure calls becomes large, at a certain call there will be no registers to be assigned to the called procedure; in this case local variables and parameters have to be stored in memory. 
<br>Why is a large number of registers typical for RISC architectures? 
<br>- Because of the reduced complexity of the processor there is enough space on the chip to be allocated to a large number of registers. This, usually, is not the case with CISCs. 
<br><b>The delayed load problem </b>
<br>&bull; LOAD instructions (similar to the STORE) require memory access and their execution cannot be completed in a single clock cycle. 
<br>However, in the next cycle a new instruction is started by the processor. 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image1.jpeg"></sub>
<br>Two possible solutions: 
<br>1. The hardware should delay the execution of the instruction following the LOAD, if this instruction needs the loaded value
<br>2. A more efficient, compiler based, solution, which has similarities with the delayed branching, is the delayed load: 
<br>&bull; With delayed load the processor always executes the instruction following a LOAD, without a stall; It is the programmers (compilers) responsibility that this instruction does not need the loaded value. 
<br>The following sequence is not correct with such a processor, and a compiler will not generate something like this: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LOAD&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>R1,X&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>loads from address X into R1</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>ADD </b>
</td>

      
      <td class="txt">
	<br><b>R1,R2</b> 
</td>

      
      <td class="txt">
	<br><b>R2 </b><b></b><b> R2 + R1 </b>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image2.jpeg"></sub>
<br>The following one is the correct sequence: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LOAD&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>R1,X&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
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
<br><b>ADD</b> 
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image3.jpeg"></sub>
<br>For the following sequence the compiler has generated a NOP after the LOAD because there is no instruction to fill the load-delay slot: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LOAD </td>

      
      <td class="txt">
	<br>R1,X </td>

      
      <td class="txt">
	<br>loads from address X into R1 </td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>NOP</b> 
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
<br><b>ADD</b> 
</td>

      
      <td class="txt">
	<br><b>R2,R1&nbsp;&nbsp;&nbsp;</b> 
</td>

      
      <td class="txt">
	<br><b>R2 </b><b></b><b> R2 + R1 </b>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ADD 
</td>

      
      <td class="txt">
	<br>R4,R2 
</td>

      
      <td class="txt">
	<br>R4  R4 + R2 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STORE &nbsp;&nbsp; 
</td>

      
      <td class="txt">
	<br>R4,X 
</td>

      
      <td class="txt">
	<br>stores from R4 to address X 
</td>
</tr></table>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image4.jpeg"></sub>
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
	<br><b>Reduced Instruction Set Computers(RISC)</b>
<br>Discussion forum for Reduced Instruction Set Computers(RISC)</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image6.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_main-characteristics-of-risc-architectures/image6.wmf"></sub>
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
