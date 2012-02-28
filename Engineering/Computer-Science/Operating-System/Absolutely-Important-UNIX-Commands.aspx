<%@ Page Language="C#" MasterPageFile="~/Masters/operating_system_links.master" AutoEventWireup="True" CodeBehind="Absolutely-Important-UNIX-Commands.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Operating_System.Absolutely_Important_UNIX_Commands" %>
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
	<b>Absolutely Important UNIX Commands - Operating System Tutorials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>cat f </td>

      
      <td class="txt">
	<br>List contents of file</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cat f1 f2 &gt;f3 
</td>

      
      <td class="txt">
	<br>Concatenates f1(file 1) &amp; f2(file 2) into f3(file 3)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cd 
</td>

      
      <td class="txt">
	<br>returns you to your home or main directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cd / 
</td>

      
      <td class="txt">
	<br>takes you to the root, as far up (to the left) as far as possible
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cd 
</td>

      
      <td class="txt">
	<br>to move down (right in the pathname) a directory 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cd .. 
</td>

      
      <td class="txt">
	<br>moves you up (left in pathname) a directory; likewise,
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cd ../../.. 
</td>

      
      <td class="txt">
	<br>moves you up (left in the pathname) 3 directory levels
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>chmod ### 
</td>

      
      <td class="txt">
	<br>changes your protections.&nbsp; The order is:&nbsp; you|group|universe (rwxrwxrwx).&nbsp; 
<br>There will be either a d or - before it.&nbsp; If there's a d, then it's a directory.
<br>&nbsp; If there's not, then it's a file.&nbsp; 
<br>You set the protections in the order rwx (read=1, write=2, execute=4).
<br>&nbsp; So, to set the protections for the 
<br>directory directoryname:&nbsp; you rwx, group r-x, universe r--, you would enter:&nbsp;
<br>chmod 751 .
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>clear 
</td>

      
      <td class="txt">
	<br>to clear screen
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>compress 
</td>

      
      <td class="txt">
	<br>compresses the file filename and puts a .Z extension on it.&nbsp; 
<br>To uncompress it, type uncompress 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cp f1 f2 
</td>

      
      <td class="txt">
	<br>Copy file f1 into f2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>cp -r D1D2 
</td>

      
      <td class="txt">
	<br>copies the directory D1 and renames it D2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>^-c (ctrl-c) 
</td>

      
      <td class="txt">
	<br>to kill a running process
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>^-d (ctrl-d) 
</td>

      
      <td class="txt">
	<br>to close an open window
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>df 
</td>

      
      <td class="txt">
	<br>gives disk usage
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>diff f1 f2 
</td>

      
      <td class="txt">
	<br>Lists file differences
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>dig host 
</td>

      
      <td class="txt">
	<br>domain name, IP address, and alias information for the given host.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>dosdir 
</td>

      
      <td class="txt">
	<br>to do a "dir" (~ls in UNIX) on a DOS floppy in the disk drive
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>dosread 
</td>

      
      <td class="txt">
	<br>to read a file from a DOS floppy to your computer account
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>doswrite 
</td>

      
      <td class="txt">
	<br>to write a file from your computer account to a DOS floppy 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>du 
</td>

      
      <td class="txt">
	<br>lists all subdirectories and their sizes (in blocks?)&nbsp; and 
<br>total directory size (in blocks?) (takes a long time)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>du -a 
</td>

      
      <td class="txt">
	<br>lists all files and their sizes (in blocks?) in present directory and 
<br>total directory size (in blocks?) (takes a long time)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>du -s 
</td>

      
      <td class="txt">
	<br>lists overall directory size (in blocks?) (long but clean)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>env 
</td>

      
      <td class="txt">
	<br>shows current environment set-up 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>find 
</td>

      
      <td class="txt">
	<br>Searches the named directory and it"s sub-directories for files.
<br>Most frequently called like this: 
<br>find ./ -name "t*" -print 
<br>Which searches the current directory 
<br>( and all of its sub-directories ) for any files that begin with the letter "t" 
<br>and then prints them out. If you are looking for a specific filename,
<br>then replace "t*" with "filename", and "find" 
<br>will print out all incidences of this file. 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>finger @. 
</td>

      
      <td class="txt">
	<br>(e.g., finger johndoe@ksu.edu fingers Johndoe at Kent State University)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ftp 
</td>

      
      <td class="txt">
	<br>establishes an ftp link with machinename
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>gzip 
</td>

      
      <td class="txt">
	<br>produces files with a .gz extension
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>gunzip 
</td>

      
      <td class="txt">
	<br>decompress files created by gzip, compress or pack.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ispell f 
</td>

      
      <td class="txt">
	<br>Interactively checks the spelling of the file f, 
<br>giving logical alternatives to the misspelled words. 
<br>Type "?" to get help. "ispell" can be accessed from the command line, 
<br>and also through emacs with M-x ispell-buffer.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>kill -9 -1 
</td>

      
      <td class="txt">
	<br>(from a remotely logged-in site) kills all running processes
<br>(essentially forces a logout) *not to be used unless nothing else works* 
<br>&nbsp;kill -9 process-id# - kills a running process
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>lpq 
</td>

      
      <td class="txt">
	<br>shows UNIX print queue
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>lpr 
</td>

      
      <td class="txt">
	<br>to print the file
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>lpqrm job# 
</td>

      
      <td class="txt">
	<br>removes job from printer queue
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ls 
</td>

      
      <td class="txt">
	<br>shows listing of files in present directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ls -a 
</td>

      
      <td class="txt">
	<br>shows listing of all files in present directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ls -l 
</td>

      
      <td class="txt">
	<br>shows long listing of files in present directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ls -la | more 
</td>

      
      <td class="txt">
	<br>shows long listing of all files in present directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>man command 
</td>

      
      <td class="txt">
	<br>shows help on a specific command
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>mkdir D 
</td>

      
      <td class="txt">
	<br>creates a new directory called D
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>more 
</td>

      
      <td class="txt">
	<br>to view the contents of a file without making changes
<br>to it one screen at a time.&nbsp; Hit q to quit more.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>mv f1 f2 
</td>

      
      <td class="txt">
	<br>Rename file f1 as f2
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>mv f1D 
</td>

      
      <td class="txt">
	<br>moves the file called f1 to the directory D
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>nslookup host 
</td>

      
      <td class="txt">
	<br>domain name, IP address, 
<br>and alias information for the given host. e.g.,
<br>nslookup www.kent.edu gives related data for www.kent.edu
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>passwd 
</td>

      
      <td class="txt">
	<br>to change your password 
<br>(takes an hour or so to take effect on all machines)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ping host 
</td>

      
      <td class="txt">
	<br>to test if the host is up and running
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>pwd 
</td>

      
      <td class="txt">
	<br>present working directory
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ps 
</td>

      
      <td class="txt">
	<br>Shows processes running 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>ps -flu 
</td>

      
      <td class="txt">
	<br>Shows detailed description of processes running
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>pquota 
</td>

      
      <td class="txt">
	<br>Shows printer quota
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>quota -v 
</td>

      
      <td class="txt">
	<br>Shows current disk usage and limits
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>rlogin 
</td>

      
      <td class="txt">
	<br>allows you to remotely log in to another 
<br>machine on which you have access privileges
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>rm f 
</td>

      
      <td class="txt">
	<br>Delete (removes) the file f.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>rm -i f 
</td>

      
      <td class="txt">
	<br>To be prompted for confirmation before you remove a file f, 
<br>at the UNIX prompt, type
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>rm dir D 
</td>

      
      <td class="txt">
	<br>Delete (removes) the empty directory D
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>rm - r D 
</td>

      
      <td class="txt">
	<br>removes the directory named D and its contents - use with caution
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>s f 
</td>

      
      <td class="txt">
	<br>Alphabetically sort f.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>talk 
</td>

      
      <td class="txt">
	<br>establishes an e-talk session with user@machinename
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>tar 
</td>

      
      <td class="txt">
	<br>combines multiple files into one or vice-versa
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>telnet 
</td>

      
      <td class="txt">
	<br>allows you to remotely log in to another machine on 
<br>which you have access privileges
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>uncompress 
</td>

      
      <td class="txt">
	<br>uncompresses filename.Z
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>users 
</td>

      
      <td class="txt">
	<br>shows who's logged in on the machine
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>vi 
</td>

      
      <td class="txt">
	<br>to open the file called filename in the vi text editor
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>who 
</td>

      
      <td class="txt">
	<br>Shows who is currently logged on the system
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>whoami 
</td>

      
      <td class="txt">
	<br>shows username of person logged in that window
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>whois domain_name 
</td>

      
      <td class="txt">
	<br>lists the domain registration record, e.g.,
<br>whois kent.edu will produce the domain record for kent.edu
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>* 
</td>

      
      <td class="txt">
	<br>wild card character representing any # or characters&nbsp; 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>date 
</td>

      
      <td class="txt">
	<br>shows the time and date
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>date -u 
</td>

      
      <td class="txt">
	<br>shows greenwich mean time
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>. 
</td>

      
      <td class="txt">
	<br>a short cut that stands for the location you are at in a pathway. 
<br>ex. cp (file (though a pathway) (. (the location you are at)
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>.. 
</td>

      
      <td class="txt">
	<br>move to parent directory from any comand ex. mv (file name) ..&nbsp; or cd .. etc.
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>pwd 
</td>

      
      <td class="txt">
	<br>shows where you are in the pathway
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>? 
</td>

      
      <td class="txt">
	<br>wild card character representing one character, can be used in succesion
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>~ 
</td>

      
      <td class="txt">
	<br>abbreviation for the home file ex. ls ~ lists files in home dir w/o moving there&nbsp;
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>zip 
</td>

      
      <td class="txt">
	<br>best compression for IBM files
</td>
</tr></table>
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
	<br><b>Absolutely Important UNIX Commands</b>
<br>Absolutely Important UNIX Commands Discussion forum</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/Operating-System/img_absolutely-important-unix-commands/image1.wmf"></sub>
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
