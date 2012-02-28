<%@ Page Language="C#" MasterPageFile="~/Masters/caplinks.master" AutoEventWireup="True" CodeBehind="Computer-Architecture-Pipeline-Data-Bypass-Forwarding.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Architecture_Pipeline_Data_Bypass_Forwarding" %>
<%@ MasterType VirtualPath="~/Masters/caplinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Data Bypass Forwarding - Computer Architecture &amp; Pipeline Tutorials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Data Bypass (Forwarding)</b>
<br><b>(1) Motivation</b>
<br>(i) Minimize the pipeline stalls due to data dependence (RAW) hazards
<br><b>(2) Idea</b>
<br>(i) Let's propagate the result as soon as the result is available from ALU or from memory (in parallel with register write) 
<br>(ii) Requires
<br>(A) Data path from ALU output to the input of execution units (input of integer ALU, address or data input of memory pipeline, etc.) 
<br>(B) Register Read stage can read data from register file or from the output of the previous execution stage
<br>(i) Require MUX in front of the input of execution stage
<br>
<br>
<br>
<br><b>Example 1 with Bypass</b>
<br>1 LD R1 &lt;- A
<br>2 LD R2 &lt;- B
<br>3 MULT R3, R1, R2
<br>4 ADD R4, R3, R2
<br>5 SUB R3, R3, R4
<br>6 ST A &lt;- R3
<br>Execution Time: 10 cycles = start-up latency (4) + number of instrs (6) + number of pipeline bubbles (0) 
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image1.png"></sub>
<br>
<br><b>Example 2 with Bypass</b>
<br>1 LD R1 &lt;- A
<br>2 LD R2 &lt;- B
<br>3 MULT R3, R1, R2
<br>4 ADD R4, R5, R6
<br>5 SUB R3, R1, R4
<br>6 ST A &lt;- R3
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image2.png"></sub>
</td>

      
      <td class="txt">
	<br>
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss about Computer Architecture Pipeline here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Computer Architecture and Pipeline Basics</b>
<br>Computer Architecture and Pipeline Basics Discussion forum</td>
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
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>networkings</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-data-bypass-forwarding.aspx"></asp:HyperLink> 
<br>tutorial
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;reddyks15@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Oct 2, 9:01:27 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1374
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>digital logic</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-data-bypass-forwarding.aspx"></asp:HyperLink> 
<br>all information
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;saket.gate</b> 
</td>

      
      <td class="txt">
	<br>Mar 31, 1:25:05 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1518
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
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-bypass-forwarding/image5.wmf"></sub>
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
