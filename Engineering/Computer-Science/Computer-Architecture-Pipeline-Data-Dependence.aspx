<%@ Page Language="C#" MasterPageFile="~/Masters/caplinks.master" AutoEventWireup="True" CodeBehind="Computer-Architecture-Pipeline-Data-Dependence.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Architecture_Pipeline_Data_Dependence" %>
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
	<b>Data Dependence</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>(1) Read-After-Write (RAW) dependence</b>
<br>(i) True dependence
<br>(ii) Must consume data after the producer produces the data
<br><b>(2) Write-After-Write (WAW) dependence </b>
<br>(i) Output dependence 
<br>(ii) The result of a later instruction can be overwritten by an earlier instruction
<br><b>(3) Write-After-Read (WAR) dependence </b>
<br>(i) Anti dependence
<br>(ii) Must not overwrite the value before its consumer
<br><b>(4) Notes</b>
<br>(i) WAW &amp; WAR are called false dependences, which happen due to storage conflicts
<br>(ii) All three types of dependences can happen for both registers and memory locations
<br>(iii) Characteristics of programs (not machines) 
<br>
<br>
<br><b>Data Dependence Example 1</b>
<br>1 LD R1 &lt;- A
<br>2 LD R2 &lt;- B
<br>3 MULT R3, R1, R2
<br>4 ADD R4, R3, R2
<br>5 SUB R3, R3, R4
<br>6 ST A &lt;- R3
<br>RAW dependence: 
<br>1-&gt;3, 2-&gt; 3, 2-&gt;4, 3 -&gt; 4, 3 -&gt; 5, 4-&gt; 5, 5-&gt; 6
<br>WAW dependence: 
<br>3-&gt; 5
<br>WAR dependence: 
<br>4 -&gt; 5, 1 -&gt; 6 (memory location A) 
<br>Execution Time: 18 cycles = start-up latency (4) + number of instrs (6) + number of pipeline bubbles (8) 
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image1.png"></sub>
<br>
<br><b>Data Dependence Example 2</b>
<br>1 LD R1 &lt;- A
<br>2 LD R2 &lt;- B
<br>3 MULT R3, R1, R2
<br>4 ADD R4, R5, R6
<br>5 SUB R3, R1, R4
<br>6 ST A &lt;- R3
<br>Changes: 
<br>1. Assume that MULT execution takes 
<br>6 cycles Instead of 1 cycle
<br>2. Assume that we have separate ALUs 
<br>for MULT and ADD/SUB 
<br>Execution Time: 18 cycles = start-up latency (4) + number of instrs (6) + number of pipeline bubbles (8) 
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image2.png"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>networkings</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-data-dependence.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image3.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>digital logic</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-data-dependence.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image5.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-data-dependence/image4.wmf"></sub>
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
