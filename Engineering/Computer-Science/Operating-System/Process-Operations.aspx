<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Process-Operations.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Process_Operations" %>
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
	<b>Process Operations - Operating System Tutorials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Process Creation </b></b>
	<br>In general-purpose systems, some way is needed to create processes as needed during operation. There are four principal events led to processes creation. 
	<br>System initialization. 
	<br>Execution of a process Creation System calls by a running process. 
	<br>A user request to create a new process. 
	<br>Initialization of a batch job. 
	<br>Foreground processes interact with users. Background processes that stay in background sleeping but suddenly springing to life to handle activity such as email, webpage, printing, and so on. Background processes are called daemons. This call creates an exact clone of the calling process. 
	<br>
<br>
	<br>A process may create a new process by some create process such as 'fork'. It choose to does so, creating process is called parent process and the created one is called the child processes. Only one parent is needed to create a child process. Note that unlike plants and animals that use sexual representation, a process has only one parent. This creation of process (processes) yields a hierarchical structure of processes like one in the figure. Notice that each child has only one parent but each parent may have many children. After the fork, the two processes, the parent and the child, have the same memory image, the same environment strings and the same open files. After a process is created, both the parent and child have their own distinct address space. If either process changes a word in its address space, the change is not visible to the other process. 
	<br>Following are some reasons for creation of a process 
	<br>User logs on. 
	<br>User starts a program. 
	<br>Operating systems creates process to provide service, e.g., to manage printer. 
	<br>Some program starts another process, e.g., Netscape calls xv to display a picture. 
	<br>&nbsp; 
	<br><b><b>Process Termination </b></b>
	<br>A process terminates when it finishes executing its last statement. Its resources are returned to the system, it is purged from any system lists or tables, and its process control block (PCB) is erased i.e., the PCB's memory space is returned to a free memory pool. The new process terminates the existing process, usually due to following reasons: 
	<br><b>Normal Exist</b>&nbsp;&nbsp;&nbsp; Most processes terminates because they have done their job. This call is exist in UNIX. 
	<br><b>Error Exist&nbsp;</b>&nbsp;&nbsp; When process discovers a fatal error. For example, a user tries to compile a program that does not exist. 
	<br><b>Fatal Error&nbsp;</b>&nbsp;&nbsp; An error caused by process due to a bug in program for example, executing an illegal instruction, referring non-existing memory or dividing by zero. 
	<br><b>Killed by another Process </b>&nbsp;&nbsp;&nbsp; A process executes a system call telling the Operating Systems to terminate some other process. In UNIX, this call is kill. In some systems when a process kills all processes it created are killed as well (UNIX does not work this way). 
	<br><b><b>&nbsp; Process States </b></b>
	<br>A process goes through a series of discrete process states. 
	<br><b>New State&nbsp;</b> &nbsp;&nbsp; The process being created. 
	<br><b>Terminated State </b>&nbsp;&nbsp; The process has finished execution. 
	<br><b>Blocked (waiting) State&nbsp;</b>&nbsp;&nbsp; When a process blocks, it does so because logically it cannot continue, typically because it is waiting for input that is not yet available. Formally, a process is said to be blocked if it is waiting for some event to happen (such as an I/O completion) before it can proceed. In this state a process is unable to run until some external event happens. 
	<br><b>Running State&nbsp;</b> &nbsp;&nbsp; A process is said t be running if it currently has the CPU, that is, actually using the CPU at that particular instant. 
	<br><b>Ready State&nbsp;</b>&nbsp;&nbsp; A process is said to be ready if it use a CPU if one were available. It is runable but temporarily stopped to let another process run. 
	<br>Logically, the 'Running' and 'Ready' states are similar. In both cases the process is willing to run, only in the case of 'Ready' state, there is temporarily no CPU available for it. The 'Blocked' state is different from the 'Running' and 'Ready' states in that the process cannot run, even if the CPU is available. 
	<br>&nbsp; 
	<br><b><b>&nbsp;Process State Transitions </b></b>
	<br>Following are six(6) possible transitions among above mentioned five (5) states 
<br><b>&nbsp;FIGURE </b>
	<br><b>Transition 1</b> occurs when process discovers that it cannot continue. If running process initiates an I/O operation before its allotted time expires, the running process voluntarily relinquishes the CPU. 
<br>This state transition is: 
<br>Block (process-name): Running -> Block. 
<br>&nbsp; 
	<br><b>Transition 2</b> occurs when the scheduler decides that the running process has run long enough and it is time to let another process have CPU time.
<br>This state transition is: 
<br>&nbsp;&nbsp;&nbsp; Time-Run-Out&nbsp; (process-name): Running -> Ready.
<br>&nbsp; 
	<br><b>Transition 3 </b>occurs when all other processes have had their share and it is time for the first process to run again 
<br>This state transition is: 
<br>&nbsp;&nbsp;&nbsp; Dispatch (process-name): Ready -> Running. 
<br>&nbsp; 
	<br><b>Transition 4 </b>occurs when the external event for which a process was waiting (such as arrival of input) happens. 
<br>This state transition is: 
<br>&nbsp;&nbsp;&nbsp; Wakeup (process-name): Blocked -> Ready. 
<br>&nbsp; 
	<br><b>Transition 5 </b>occurs when the process is created. 
<br>This state transition is: 
<br>&nbsp;&nbsp;&nbsp; Admitted (process-name): New -> Ready. 
<br>&nbsp; 
	<br><b>Transition 6 </b>occurs when the process has finished execution. 
<br>This state transition is: 
<br>&nbsp;&nbsp;&nbsp; Exit (process-name): Running -> Terminated.
<br><b>FIGURE from Notes </b>
	<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Back to Process of Operating System </b>" NavigateUrl="~/engineering/computer-science/operating-system/process.aspx"></asp:HyperLink>
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
	<br><b>Process in Operating Systems</b>
<br>Process in Operating Systems Forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_process-operations/image2.wmf"></sub>
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
