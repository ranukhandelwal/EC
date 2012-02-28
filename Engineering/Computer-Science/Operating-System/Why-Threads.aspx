<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Why-Threads.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Why_Threads" %>
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
	<b>Why Threads - Operating System Tutorials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Why Threads? </b></b>
	<br>Following are some reasons why we use threads in designing operating systems.
	<br>< QUES >A process with multiple threads make a great server for example printer server. 
	<br>< QUES >Because threads can share common data, they do not need to use interprocess communication. 
	<br>< QUES >Because of the very nature, threads can take advantage of multiprocessors. 
	<br>
<br>
<br>
<br>Threads are cheap in the sense that
	<br>< QUES >They only need a stack and storage for registers therefore, threads are cheap to create. 
	<br>< QUES >Threads use very little resources of an operating system in which they are working. That is, threads do not need new address space, global data, program code or operating system resources. 
	<br>< QUES >Context switching are fast when working with threads. The reason is that we only have to save and/or restore PC, SP and registers. 
	<br>But this cheapness does not come free - the biggest drawback is that there is no protection between threads.
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="Next - User Level Threads" NavigateUrl="~/engineering/computer-science/operating-system/user-level-threads.aspx"></asp:HyperLink>
	<br><b><b>User-Level Threads </b></b>
	<br>User-level threads implement in user-level libraries, rather than via systems calls, so thread switching does not need to call operating system and to cause interrupt to the kernel. In fact, the kernel knows nothing about user-level threads and manages them as if they were single-threaded processes. 
	<br><b>Advantages: </b>
	<br>The most obvious advantage of this technique is that a user-level threads package can be imp lemented on an Operating System that does not support threads. Some other advantages are
	<br>User-level threads does not require modification to operating systems. 
	<br>Simple Representation: 
<br>&nbsp;&nbsp;&nbsp; Each thread is represented simply by a PC, registers, stack and a small control block, all stored in the user process address space. 
	<br>Simple Management: 
<br>&nbsp;&nbsp;&nbsp; This simply means that creating a thread, switching between threads and synchronization between threads can all be done without intervention of the kernel. 
	<br>Fast and Efficient: 
<br>&nbsp;&nbsp; Thread switching is not much more expensive than a procedure call. 
	<br><b>Disadvantages: </b>
	<br>There is a lack of coordination between threads and operating system kernel. Therefore, process as whole gets one time slice irrespect of whether process has one thread or 1000 threads within. It is up to each thread to relinquish control to other threads. 
	<br>User-level threads requires non-blocking systems call i.e., a multithreaded kernel. Otherwise, entire process will blocked in the kernel, even if there are runable threads left in the processes. For example, if one thread causes a page fault, the process blocks. 
	<br>&nbsp; 
	<br><b><b>Kernel-Level Threads </b></b>
	<br>In this method, the kernel knows about and manages the threads. No runtime system is needed in this case. Instead of thread table in each process, the kernel has a thread table that keeps track of all threads in the system. In addition, the kernel also maintains the traditional process table to keep track of processes. Operating Systems kernel provides system call to create and manage threads. 
	<br>The implementation of general structure of kernel-level thread is 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<br><b>Advantages: </b>
	<br>Because kernel has full knowledge of all threads, Scheduler may decide to give more time to a process having large number of threads than process having small number of threads. 
	<br>Kernel-level threads are especially good for applications that frequently block. 
	<br><b>Disadvantages: </b>
	<br>The kernel-level threads are slow and inefficient. For instance, threads operations are hundreds of times slower than that of user-level threads. 
	<br>Since kernel must manage and schedule threads as well as processes. It require a full thread control block (TCB) for each thread to maintain information about threads. As a result there is significant overhead and increased in kernel complexity. 
	<br>&nbsp; <b>Advantages of Threads over Multiple Processes </b>
	<br><b>Context Switching&nbsp;</b>&nbsp;&nbsp; Threads are very inexpensive to create and destroy, and they are inexpensive to represent. For example, they require space to store, the PC, the SP, and the general-purpose registers, but they do not require space to share memory information, Information about open files of I/O devices in use, etc. With so little context, it is much faster to switch between threads. In other words, it is relatively easier for a context switch using threads. 
	<br><b>Sharing&nbsp;</b>&nbsp;&nbsp; Treads allow the sharing of a lot resources that cannot be shared in process, for example, sharing code section, data section, Operating System resources like open file etc. 
	<br><b>Disadvantages of Threads over Multiprocesses </b>
	<br><b>Blocking </b>&nbsp;&nbsp;&nbsp; The major disadvantage if that if the kernel is single threaded, a system call of one thread will block the whole process and CPU may be idle during the blocking period. 
	<br><b>Security&nbsp;</b>&nbsp;&nbsp; Since there is, an extensive sharing among threads there is a potential problem of security. It is quite possible that one thread over writes the stack of another thread (or damaged shared data) although it is very unlikely since threads are meant to cooperate on a single task. 
	<br><b><b>Application that Benefits from Threads </b></b>
	<br>A proxy server satisfying the requests for a number of computers on a LAN would be benefited by a multi-threaded process. In general, any program that has to do more than one task at a time could benefit from multitasking. For example, a program that reads input, process it, and outputs could have three threads, one for each task. 
	<br><b><b>Application that cannot Benefit from Threads </b></b>
	<br>Any sequential process that cannot be divided into parallel task will not benefit from thread, as they would block until the previous one completes. For example, a program that displays the time of the day would not benefit from multiple threads. 
	<br><b><b>Resources used in Thread Creation and Process Creation </b></b>
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image1.gif"></sub>
	<br>When a new thread is created it shares its code section, data section and operating system resources like open files with other threads. But it is allocated its own stack, register set and a program counter. 
	<br>The creation of a new process differs from that of a thread mainly in the fact that all the shared resources of a thread are needed explicitly for each process. So though two processes may be running the same piece of code they need to have their own copy of the code in the main memory to be able to run. Two processes also do not share other resources with each other. This makes the creation of a new process very costly compared to that of a new thread. 
	<br><b><b>Context Switch </b></b>
	<br>To give each process on a multiprogrammed machine a fair share of the CPU, a hardware clock generates interrupts periodically. This allows the operating system to schedule all processes in main memory (using scheduling algorithm) to run on the CPU at equal intervals. Each time a clock interrupt occurs, the interrupt handler checks how much time the current running process has used. If it has used up its entire time slice, then the CPU scheduling algorithm (in kernel) picks a different process to run. Each switch of the CPU from one process to another is called a context switch. 
	<br><b><b>Major Steps of Context Switching </b></b>
	<br>The values of the CPU registers are saved in the process table of the process that was runn ing just before the clock interrupt occurred. 
	<br>The registers are loaded from the process picked by the CPU scheduler to run next. 
	<br>In a multiprogrammed uniprocessor computing system, context switches occur frequently enough that all processes appear to be running concurrently. If a process has more than one thread, the Operating System can use the context switching technique to schedule the threads so they appear to execute in parallel. This is the case if threads are implemented at the kernel level. Threads can also be implemented entirely at the user level in run-time libraries. Since in this case no thread scheduling is provided by the Operating System, it is the responsibility of the programmer to yield the CPU frequently enough in each thread so all threads in the process can make progress. 
	<br><b><b>Action of Kernel to Context Switch Among Threads </b></b>
	<br>The threads share a lot of resources with other peer threads belonging to the same process. So a context switch among threads for the same process is easy. It involves switch of register set, the program counter and the stack. It is relatively easy for the kernel to accomplished this task. 
	<br><b><b>Action of kernel to Context Switch Among Processes </b></b>
	<br>Context switches among processes are expensive. Before a process can be switched its process control block (PCB) must be saved by the operating system. The PCB consists of the following information: 
	<br>The process state. 
	<br>The program counter, PC. 
	<br>The values of the different registers. 
	<br>The CPU scheduling information for the process. 
	<br>Memory management information regarding the process. 
	<br>Possible accounting information for this process. 
	<br>I/O status information of the process. 
	<br>When the PCB of the currently executing process is saved the operating system loads the PCB of the next process that has to be run on CPU. This is a heavy task and it takes a lot of time. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Threads of Operating System</b>
<br>Threads of Operating System discussion forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_why-threads/image2.wmf"></sub>
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
