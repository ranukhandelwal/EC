<%@ Page Language="C#" MasterPageFile="~/Masters/networking_tutorials_links.master" AutoEventWireup="True" CodeBehind="Relationship-between-the-OSI-Model-and-Networking-Devices.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.networking_tutorials.Relationship_between_the_OSI_Model_and_Networking_Devices" %>
<%@ MasterType VirtualPath="~/Masters/networking_tutorials_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Relationship between the OSI Model and Networking Devices </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The OSI Model is an important factor in internetworking because it accounts for the way data is transported from one computer system to another using the internetworking devices, irrespective of the their protocol. A routers works at the Network layer of the OSI Model, whereas bridges typically works at the data link layer of the OSI model. Switches are a multi-port bridge. An exception is layer 3 switches that work at layer 3 of the OSI model. Repeaters works at the Physical layer. A hub is a repeater with multi-port. 
<br><b>1 Most commonly used protocols </b>
<br><b>1.1 PPP Point-to-Point Protocol </b>
<br>PPP is used protocol for&nbsp;creating a TCP/IP connection over synchronous or asynchronous systems.&nbsp; PPP provides connections for host to network or between two routers; it also has a security mechanism. PPP is well known as a protocol for connections over regular telephone lines using&nbsp;modems on both ends. This protocol is widely used for connecting personal computers to the Internet. One big advantage of PPP is its ability to transport multi-protocol data grams over serial lines. PPP has the abilities for error correction, compression etc. 
<br><b>1.2 SLIP Serial Line Internet Protocol </b>
<br>SLIP is a predecessor to PPP protocol. There is also an advanced version of this protocol known as CSLIP (compressed serial line internet protocol) which reduce overhead on a SLIP connection by sending just a header information when possible, thus increasing packet throughput. 
<br><b>1.3 FTP File Transfer Protocol </b>
<br>&nbsp;FTP is a Client Server protocol, used for moving files between computers on a network. Of primary use is transferring files to/from our desktop/laptop personal computers and a Server. It can also be used to communicate with web servers, such as a download site, or any PCs or other machines running FTP servers. 
<br>FTP, the File Transfer Protocol, documented in RFC 959, is one of oldest Internet protocols still in widespread use. FTP is implemented using the TCP Protocol. 
<br>FTP enables transferring of text and binary files over TCP connection. FTP allows transfer of files according to a strict mechanism of ownership and access restrictions. It is one of the most commonly used protocols over the Internet now days. FTP uses port TCP port number 21. 
<br><b>&nbsp;1.4 Telnet </b>
<br>The Telnet service provides a remote login capability. This lets a user on one machine log into another machine and act as if they are directly in front of the remote machine. The connection can be anywhere on the local network, or on another network anywhere in the world, as long as the user has permission to log into the remote system. Telnet uses TCP to maintain a connection between two machines. Telnet uses port number 23. 
<br><b>1.5 SMTP Simple Mail Transfer Protocol </b>
<br>&nbsp;SMTP (Simple Mail Transfer Protocol) is a TCP/IP protocol used for sending e-mail messages between servers. SMTP is also used to send email messages from a client machine to a server. An email client such as MS Outlook Express uses SMTP for sending emails and POP3/IMAP for receiving emails from the server to the client machine. In other words, we typically use a program that employs SMTP for sending e-mail, and either POP3 or IMAP for receiving messages from our local (or ISP) server. SMTP&nbsp; is usually implemented to operate over Transmission Control Protocol port 25. 
<br>&nbsp; <b>&nbsp;1.6 HTTP Hyper Text Transport Protocol </b>
<br>A protocol used to transfer hypertext pages across the World Wide Web. HTTP defines how messages are formatted and transmitted, and what actions Web servers and browsers should take in response to various commands. For example, when you enter a URL in your browser, this actually sends an HTTP command to the Web server directing it to fetch and transmit the requested Web page. Note that HTML deals with how Web pages are formatted and displayed in a browser. 
<br>&nbsp;HTTP is called a stateless protocol because each command is executed independently, without any knowledge of the commands that came before it. 
<br><b>&nbsp;1.7 SNMP Simple Network Management Protocol </b>
<br>The Simple Network Management Protocol (SNMP) is an application-layer protocol designed to manage complex communication networks. SNMP works by sending messages, called protocol data units (PDUs), to different parts of a network. SNMP-compliant devices, called agents, store data about themselves in Management Information Bases (MIBs) and return this data to the SNMP requesters. There are two versions of SNMP: Version 1 and Version 2. 
<br><b>1.8 UDP User Data gram Protocol</b>
<br> UDP is a simple protocol that transfers data grams (packets of data) to a remote computer. UDP doesn't guarantee delivery of packets (Contrast this with TCP that guarantees delivery of packets). UDP doesn't guarantee correct sequence of delivery. 
<br><b>&nbsp;1.9 TCP Transmission&nbsp;Control&nbsp;Protocol </b>
<br>&nbsp;TCP, like UDP is a protocol used in a TCP/IP networks. TCP ensures that the packets are delivered at their destination, and in correct sequence. 
<br><b>1.10 IP Internet Protocol</b>
<br>&nbsp;IP is the underline protocol for all the other protocols in the TCP/IP protocol suite. IP defines the means to identify and reach a target computer on the network. Computers in an IP network are identified by unique numbers which are known as IP addresses. 
<br><b>&nbsp;1.11 ARP Address Resolution&nbsp;Protocol </b>
<br>&nbsp;In order to map an IP address into a hardware address the computer uses the ARP protocol. ARP protocol broadcasts a request message that contains an IP address,&nbsp;to which the target computer replies with both the original IP address and the hardware address.&nbsp;
<br><b>&nbsp;1.12 NNTP Network News Transport Protocol </b>
<br>A protocol used to carry USENET posting between News clients and USENET servers. 
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
<br><b>Discuss About Computer Network Tutorials</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Computer Networks</b>
<br>Computer Networks Discussion Forum</td>
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>networking</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/relationship-between-the-osi-model-and-networking-devices.aspx"></asp:HyperLink> 
<br>numericals on networking... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;priyasaha</b> 
</td>

      
      <td class="txt">
	<br>Dec 17, 11:03:33 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>668
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>cs</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/relationship-between-the-osi-model-and-networking-devices.aspx"></asp:HyperLink> 
<br>computer science 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;mayurgate</b> 
</td>

      
      <td class="txt">
	<br>Sep 28, 10:22:35 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>475
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/relationship-between-the-osi-model-and-networking-devices.aspx"></asp:HyperLink> 
<br>I love u 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;kamala</b> 
</td>

      
      <td class="txt">
	<br>Jun 21, 6:11:21 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>424
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/relationship-between-the-osi-model-and-networking-devices.aspx"></asp:HyperLink> 
<br>getgd 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;akshay.patni@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>May 6, 9:19:54 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>350
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
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_relationship-between-the-osi-model-and-networking-devices/image3.wmf"></sub>
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
