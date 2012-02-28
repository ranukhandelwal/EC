<%@ Page Language="C#" MasterPageFile="~/Masters/performance_testing_links.master" AutoEventWireup="True" CodeBehind="Performance-Testing.aspx.cs"  Inherits="ExamCrazy.Interviews_Jobs.Information_Technology_Software_IT.Software_Quality_Control_Assurance.Performance_Testing.Performance_Testing" %>
<%@ MasterType VirtualPath="~/Masters/performance_testing_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt">
	<b>Web Performance and Load Testing- Terminology </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Virtual User</b>
<br>This an software entity which replicates a real web users, All the performance testing tools runs N number of Virtual Users to increase the load on server.
<br><b>Note</b> - N is the variable and is set as per the load requirement
<br>
<br>
<br><b>Scenario or Business Case</b>
<br>This is step by step interaction of the user with the web site as per the business requirement. This may be a single transaction or a sequence of multiple transactions or it may be an action of loading a very simple web-page. In other words its a series of HTTP Transactions which are repeated by virtual users during a test.
<br>
<br>
<br><b>Cache Property</b>
<br>Web browser saves the static content of web-site like images, graphics at local client machine after first access of that site or particular page. This helps in increasing the access speed, since only dynamic data will be fetched from server.
<br>
<br>This is the reason why we run few warm-up tests before running actual final performance test.
<br>
<br>
<br><b>Controllers and Engine</b>
<br>Modes available-
<br>1. As Controller - Here recording, editing and execution of load tests is allowed
<br>2. As Engine - This Presents a console interface and listens for commands from a controller. Its used by controller to generate virtual users. Many engines can be used by a single controller to generate high loads Note: - Only one controller can be run on a network with the one license key.
<br>
<br>
<br><b>Cookies</b>
<br>A cookie is small information in text format which is saved on local client machine. This instruction is given by the server. usually size of this information is 1K.
<br>Cookies are sent back to the server each time the browser requests a URL on that server. By this mechanism server can track the correct session of valid user, and protects from stealing confidential information from hackers.
<br>
<br>
<br><b>Think Time</b>
<br>When the delay time is applied after loading one web-page completely and before making request for next page, then this time represents the time spent by the user reading the page and deciding about next action. Such times are called "think time"
<br>
<br>
<br><b>Delay Time</b>
<br>Delay time is the time taken by the browser to process some content(e.g Image or Graphics) and to display it on the screen.
<br>
<br>
<br><b>FTP-File Transfer Protocol</b>
<br>This network protocol is built on top of TCP/IP and is used for sending and receiving files 
<br>
<br>
<br><b>HTTP- Hypertext Transfer Protocol</b>
<br>Its the language of the World Wide Web and is built on top of TCP/IP protocol. This is used between web browsers and web servers to transfer web pages
<br>
<br>
<br><b>IP-Internet Protocol</b>
<br>This network protocol specifies the format of data transferred between two hosts (datagrams or packets) and the addressing scheme.
<br>
<br>
<br><b>IP address</b>
<br>This is an identifier which is used by IP to identify host. All four parts of IP addresses separated by "." can be in the range of 0-255. e.g 210.208.188.190
<br>Note - Some IPs have different meanings, like mentioned below
<br>- 127.0.0.1 is the 'loopback' address used to redirect traffic to itself
<br>- The ranges 10.*.*.* and 192.168.*.* are reserved for internal networks
<br>- 127.*.*.*, 0.*.*.* and 255.255.255.255 are reserved for special uses.
<br>
<br>
<br><b>HTTP Transaction</b>
<br>Request sent from the client to the server and the response from the server to the client, both sent using HTTP.
<br>
<br>
<br><b>Host</b>
<br>Machine which has the web-site/Server hosted on that and is connected to a TCP/IP network. Each host has a unique IP 
<br>
<br>
<br><b>Proxy Server</b>
<br>Its a server on private network, that has access to external network i.e. Internet and can serve the other computers. Usually the computers in a company network are separated from the direct access of Internet by a firewall. Browsers of these computers are configured to use a proxy server
<br>Proxy servers have two main purposes
<br>1. Improve Performance 
<br>2. Filter Requests 
<br>
<br>
<br><b>Session Tracking</b>
<br>Since HTTP is state less and forgets the client immediatly after serving his request and when client asks for the second page server has no way to know that it was the same client that asked for the first page, which is a problem To solve above issue, session tracking was evolved which has two common methods - cookies and URL-rewriting.
<br>
<br>
<br><b>SMTP - Simple Mail Transfer Protocol</b>
<br>This Network protocol is built on top of TCP/IP and is used for transferring mails between servers.
<br>
<br>
<br><b>TCP (Transmission Control Protocol</b><b>)</b>
<br>This is a network protocol which enables two hosts to establish a connection and exchange informatio. TCP guarantees delivery of data and also guarantees that packets will be delivered in the same order in which they were sent. 
<br>
<br>
<br><b>TCP/IP</b>
<br>The suite of communications protocols used to connect hosts on the Internet. TCP/IP uses combines the TCP and IP protocols to provide addressing and reliable data transfer for a variety of other Internet protocols, including HTTP, FTP and SMTP.
<br>
<br>
<br><b>TTFB</b>
<br>Time to First Byte is the time between the time the virtual user made an HTTP request, and the time the first byte of the response from the web server arrived.
<br>
<br>
<br><b>URL (Uniform Resource Locator</b><b>)</b>
<br>A specially formatted string which is used by the client to access the web server resources. 
</td>
</tr></table>
</div>
</asp:Content>
