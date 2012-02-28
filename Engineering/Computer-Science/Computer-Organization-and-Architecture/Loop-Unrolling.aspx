<%@ Page Language="C#" MasterPageFile="~/Masters/very_large_instruction_word_links.master" AutoEventWireup="True" CodeBehind="Loop-Unrolling.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Loop_Unrolling" %>
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
	<b>Loop Unrolling </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Let us rewrite the previous example: 
<br>for (i=959; i &gt;= 0; i-=2){ 
<br>x[i] = x[i] + s; 
<br>x[i-1] = x[i-1] + s; 
<br>} 
<br>This sequence (for an ordinary processor) would be compiled to: <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Loop: </td>

      
      <td class="txt">
	<br>LDD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
      <td class="txt">
	<br>F0, (R1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>

      
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
	<br>LDD 
</td>

      
      <td class="txt">
	<br>F0, -8(R1) 
</td>

      
      <td class="txt">
	<br>F0  x[i-1] ;(load double)
</td>
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
	<br>-8(R1),F4 
</td>

      
      <td class="txt">
	<br>x[i-1]  F4 ;(store double)
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
	<br>R1,R1,#16 
</td>

      
      <td class="txt">
	<br>R1  R1 - 16
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BGEZ 
</td>

      
      <td class="txt">
	<br>R1,Loop 
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LDD
<br>F0,(R1) </td>

      
      <td class="txt">
	<br>LDD
<br>F6,-8(R1) </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
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
	<br>ADF
<br>F4,F0,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F8,F6,F2 
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

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>SBI
<br>R1,R1,#16
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>16(R1),F4 
</td>

      
      <td class="txt">
	<br>STD
<br>8(R1),F8 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>BGEZ
<br>R1,Loop
</td>
</tr></table>
<br>&bull; There is an increased degree of parallelism in this case. 
<br>&bull; We still have two completely empty cycles and empty operation. 
<br>&bull; However, we have a dramatic improvement in speed: 
<br>Two iterations take 6 cycles 
<br>The whole loop takes 480*6 = 2880 cycles 
<br>Loop unrolling is a technique used in compilers in order to increase the potential of parallelism in a program. This allows for more efficient code generation for processors with instruction level parallelism (which can execute several instructions in parallel). 
<br>Let us unroll three iterations in our example: 
<br>for (i=959; i &gt;= 0; i-=3){ 
<br>x[i] = x[i] + s; 
<br>x[i-1] = x[i-1] + s; 
<br>x[i-2] = x[i-2] + s; 
<br>} <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>Loop: </td>

      
      <td class="txt">
	<br>LDD </td>

      
      <td class="txt">
	<br>F0, </td>

      
      <td class="txt">
	<br>(R1) F0  x[i] ;(load double)</td>
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
	<br>LDD 
</td>

      
      <td class="txt">
	<br>F0, -8(R1) 
</td>

      
      <td class="txt">
	<br>F0  x[i-1] ;(load double)
</td>
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
	<br>-8(R1),F4 
</td>

      
      <td class="txt">
	<br>x[i-1]  F4 ;(store double)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>LDD 
</td>

      
      <td class="txt">
	<br>F0, -16(R1) 
</td>

      
      <td class="txt">
	<br>F0  x[i-2] ;(load double)
</td>
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
	<br>-16(R1),F4 
</td>

      
      <td class="txt">
	<br>x[i-2]  F4 ;(store double)
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
	<br>R1,R1,#24 
</td>

      
      <td class="txt">
	<br>R1  R1 - 24
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>BGEZ 
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LDD
<br>F0,(R1) </td>

      
      <td class="txt">
	<br>LDD
<br>F6,-8(R1) </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp;</td>
</tr>

    <tr>

      
      <td class="txt">
<br>LDD 
<br>F10,-16(R1) 
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
</tr>

    <tr>

      
      <td class="txt">
<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>ADF
<br>F4,F0,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F8,F6,F2 
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
	<br>ADF 
<br>F12,F10,F2 
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

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>16(R1),F4 
</td>

      
      <td class="txt">
	<br>STD
<br>-8(R1),F8 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>SBI
<br>R1,R1,#24
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>8(R1),F12 
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
	<br>BGEZ
<br>R1,Loop 
</td>
</tr></table>
<br>&bull; The degree of parallelism is further improved. 
<br>&bull; There is still an empty cycle and empty operations. 
<br>&bull; Three iterations take 7 cycles 
<br>The whole loop takes 320*7 = 2240 cycles 
<br>With eight iterations unrolled: 
<br>for (i=959; i &gt;= 0; i-=8){ 
<br>x[i] = x[i] + s; x[i-1] = x[i-1] + s; 
<br>x[i-2] = x[i-2] + s; x[i-3] = x[i-3] + s; 
<br>x[i-4] = x[i-4] + s; x[i-5] = x[i-5] + s; 
<br>x[i-6] = x[i-6] + s; x[i-7] = x[i-7] + s; 
<br>} <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>LDD
<br>F0.(R1) </td>

      
      <td class="txt">
	<br>LDD
<br>F6,,-8(R12) </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp;</td>
</tr>

    <tr>

      
      <td class="txt">
<br>LDD
<br>F10,-16(R1) 
</td>

      
      <td class="txt">
	<br>LDD
<br>F14,-24(R1) 
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
</tr>

    <tr>

      
      <td class="txt">
<br>LDD
<br>F18,-32(R1) 
</td>

      
      <td class="txt">
	<br>LDD
<br>F22,-40(R1) 
</td>

      
      <td class="txt">
	<br>ADFF4,F0,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F8,F6,F2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>LDD
<br>F26,-48(R1) 
</td>

      
      <td class="txt">
	<br>LDD
<br>F30,-56(R1) 
</td>

      
      <td class="txt">
	<br>ADF
<br>F12,F10,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F16,F14,F2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>ADF
<br>F20,F18,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F24,F22,F2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>(R1),F4 
</td>

      
      <td class="txt">
	<br>STD
<br>-8(R1),F8 
</td>

      
      <td class="txt">
	<br>ADF
<br>F28,F26,F2 
</td>

      
      <td class="txt">
	<br>ADF
<br>F32,F30,F2 
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>-16(R1),F12 
</td>

      
      <td class="txt">
	<br>STD
<br>-24(R1),F16 
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
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>-32(R1),F20 
</td>

      
      <td class="txt">
	<br>STD
<br>-40(R1),F24 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>SBI
<br>R1,R1,#64 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>STD
<br>16(R1),F28 
</td>

      
      <td class="txt">
	<br>STD
<br>8(R1),F32 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>BGEZ
<br>R1,Loop
</td>
</tr></table>
<br>&bull; No empty cycles, but still empty operations 
<br>&bull; Eight iterations take 9 cycles The whole loop takes 120*9 = 1080 cycles 
<br>&bull; Given a certain set of resources (processor architecture) and a given loop, there is a limit on how many iterations should be unrolled. Beyond that limit there is no gain any more. 
<br>&bull; Loop unrolling increases the memory space needed to store the program. 
<br>&bull; A good compiler has to find the optimal level of unrolling for each loop. 
<br>The example before illustrates some of the hardware support needed to keep a VLIW processor busy: 
<br>&bull; large number of registers (in order to store data for operations which are active in parallel); 
<br>&bull; large traffic has to be supported in parallel: 
<br>- register file  memory 
<br>- register file  functional units. 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already </b><b>registered else register here</b> </td>
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_loop-unrolling/image1.wmf"></sub>
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
