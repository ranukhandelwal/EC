<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Necessary-and-Sufficient-Deadlock-Conditions.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Necessary_and_Sufficient_Deadlock_Conditions" %>
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
	<b>Necessary and Sufficient Deadlock Conditions </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Coffman (1971) identified four (4) conditions that must hold simultaneously for there to be a deadlock. 
<br><b>1. Mutual Exclusion Condition </b>
	<br>The resources involved are non-shareable. 
<br><b>Explanation:</b> At least one resource (thread) must be held in a non-shareable mode, that is, only one process at a time claims exclusive control of the resource. If another process requests that resource, the requesting process must be delayed until the resource has been released. 
	<br><b>2. Hold and Wait Condition </b>
	<br>Requesting process hold already, resources while waiting for requested resources. 
<br><b>Explanation: </b>There must exist a process that is holding a resource already allocated to it while waiting for additional resource that are currently being held by other processes. 
	<br><b>3. No-Preemptive Condition </b>
	<br>Resources already allocated to a process cannot be preempted. 
<br><b>Explanation: </b>Resources cannot be removed from the processes are used to completion or released voluntarily by the process holding it. 
	<br>&nbsp; <b>4. Circular Wait Condition </b>
	<br>The processes in the system form a circular list or chain where each process in the list is waiting for a resource held by the next process in the list. 
	<br>As an example, consider the traffic deadlock in the following figure 
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image1.gif"></sub>
<br>Consider each section of the street as a resource. 
	<br>< QUES >Mutual exclusion condition applies, since only one vehicle can be on a section of the stre et at a time. 
	<br>< QUES >Hold-and-wait condition applies, since each vehicle is occupying a section of the street, and waiting to move on to the next section of the street. 
	<br>< QUES >No-preemptive condition applies, since a section of the street that is a section of the street that is occupied by a vehicle cannot be taken away from it. 
	<br>< QUES >Circular wait condition applies, since each vehicle is waiting on the next vehicle to move. That is, each vehicle in the traffic is waiting for a section of street held by the next vehicle in the traffic. 
	<br>The simple rule to avoid traffic deadlock is that a vehicle should only enter an intersection if it is assured that it will not have to stop inside the intersection. 
	<br>It is not possible to have a deadlock involving only one single process. The deadlock involves a circular "hold-and-wait” condition between two or more processes, so "one” process cannot hold a resource, yet be waiting for another resource that it is holding. In addition, deadlock is not possible between two threads in a process, because it is the process that holds resources, not the thread that is, each thread has access to the resources held by the process. 
	<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Ü</b><b> Back to Deadlock of Operating Systems </b>" NavigateUrl="~/engineering/computer-science/operating-system/deadlock.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Deadlocks in Operating Systems</b>
<br>Deadlocks in Operating Systems Discussion Forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_necessary-and-sufficient-deadlock-conditions/image3.wmf"></sub>
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
