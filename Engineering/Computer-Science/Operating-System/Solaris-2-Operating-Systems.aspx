<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Solaris-2-Operating-Systems.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Solaris_2_Operating_Systems" %>
<%@ MasterType VirtualPath="~/Masters/operating_system_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Solaris-2 Operating Systems</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&nbsp; 
	<br><b><b>Introduction </b></b>
	<br>The solaris-2 Operating Systems supports: 
	<br>threads at the user-level. 
	<br>threads at the kernel-level. 
	<br>symmetric multiprocessing and 
	<br>real-time scheduling. 
	<br>The entire thread system in Solaris is depicted in following figure.
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image1.gif"></sub>
<br>&nbsp; 
	<br><b><b>At user-level </b></b>
	<br>The user-level threads are supported by a library for the creation and scheduling and kernel knows nothing of these threads. 
	<br>These user-level threads are supported by lightweight processes (LWPs). Each LWP is connected to exactly one kernel-level thread is independent of the kernel. 
	<br>Many user-level threads may perform one task. These threads may be scheduled and switched among LWPs without intervention of the kernel. 
	<br>User-level threads are extremely efficient because no context switch is needs to block one thread another to start running. 
	<br><b><b>Resource needs of User-level Threads </b></b>
	<br>A user-thread needs a stack and program counter. Absolutely no kernel resource are required. 
	<br>Since the kernel is not involved in scheduling these user-level threads, switching among user-level threads are fast and efficient. 
	<br>&nbsp; 
	<br><b><b>At Intermediate-level </b></b>
	<br>The lightweight processes (LWPs) are located between the user-level threads and kernel-level threads. These LWPs serve as a "Virtual CPUs" where user-threads can run. Each task contains at least one LWp. 
	<br>The user-level threads are multiplexed on the LWPs of the process.
	<br><b><b>Resource needs of LWP&nbsp;&nbsp;&nbsp; </b></b>
	<br>An LWP contains a process control block (PCB) with register data, accounting information and memory information. Therefore, switching between LWPs requires quite a bit of work and LWPs are relatively slow as compared to user-level threads. 
	<br>&nbsp; 
	<br><b><b>At kernel-level </b></b>
	<br>The standard kernel-level threads execute all operations within the kernel. There is a kernel-level thread for each LWP and there are some threads that run only on the kernels behalf and have associated LWP. For example, a thread to service disk requests. By request, a kernel-level thread can be pinned to a processor (CPU). See the rightmost thread in figure. The kernel-level threads are scheduled by the kernel's scheduler and user-level threads blocks. 
	<br>SEE the diagram in NOTES 
<br>In modern solaris-2 a task no longer must block just because a kernel-level threads blocks, the processor (CPU) is free to run another thread. 
	<br><b><b>Resource needs of Kernel-level Thread </b></b>
	<br>A kernel thread has only small data structure and stack. Switching between kernel threads does not require changing memory access information and therefore, kernel-level threads are relating fast and efficient. 
	<br>
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
<br><b>Discuss About Operating System Tutorial </b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Solaris-2 Operating Systems</b>
<br>Solaris-2 Operating Systems discussion forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_solaris-2-operating-systems/image3.wmf"></sub>
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
