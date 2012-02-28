<%@ Page Language="C#" MasterPageFile="~/Masters/caplinks.master" AutoEventWireup="True" CodeBehind="Computer-Architecture-Pipeline-Pipeline-Hazards.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Architecture_Pipeline_Pipeline_Hazards" %>
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
	<b>Pipeline Hazards</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>(1) Data Hazards
<br>(i) Caused by data (RAW, WAW, WAR) dependences
<br>(ii) Require
<br>(A) Pipeline interlock (stall) mechanism to detect dependences and generate machine stall cycles
<br>(i) Reg-id comparators between instrs in REG stage and instrs in EXE/WRB stages
<br>(iii) Stalls due to RAW hazards can be reduced by bypass network
<br>(A) Reg-id comparators + data bypass paths + mux 
<br>(2)Structural Hazards
<br>(i) Caused by resource constraints
<br>(ii) Require pipeline stall mechanism to detect structural constraints
<br>(3) Control (Branch) Hazards
<br>(i) Caused by branches
<br>(ii) Instruction fetch of a next instruction has to wait until the target (including the branch condition) of the current branch instruction need to be resolved
<br>(iii) Use
<br>(A) Pipeline stall to delay the fetch of the next instruction
<br>(B) Predict the next target address (branch prediction) and if wrong, flush all the speculatively fetched instructions from the pipeline 
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>networkings</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-pipeline-hazards.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>digital logic</b>" NavigateUrl="~/engineering/computer-science/computer-architecture-pipeline-pipeline-hazards.aspx"></asp:HyperLink> 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered else register </b><b>here</b> </td>
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
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/img_computer-architecture-pipeline-pipeline-hazards/image3.wmf"></sub>
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
