<%@ Page Language="C#" MasterPageFile="~/Masters/networking_tutorials_links.master" AutoEventWireup="True" CodeBehind="Computer_Networks_OSI_Transport_Layer_Network_layer.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.networking_tutorials.Computer_Networks_OSI_Transport_Layer_Network_layer" %>
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
	<b>Computer Networks - The OSI model - Transport layer &amp; Network layer</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transport layer: </b>
<br>Responsible for reliable transmission of data and service specification between hosts. The major responsibility of this layer is data integrity--that data transmitted between hosts is reliable and timely. Upper layer data grams are broken down into network-sized data grams if needed and then implemented using appropriate transmission control. The transport layer creates one or more than one network connection, depending on conditions. This layer also handles what type of connection will be created. Two major transport protocols are the TCP (Transmission Control Protocol) and the UDP (User Data gram Protocol). 
<br>Important features of Transport layer: 
<br>· Transport layer ensures reliable service. 
<br>· Breaks the message (from sessions layer) into smaller packets, assigns sequence number and sends them. 
<br>· Reliable transport connections are built on top of X.25 or IP. 
<br>· In case IP, lost packets arriving out of order must be reordered. 
<br>Important features of TCP/UDP: 
<br>· TCP/IP Widely used for network/transport layer (UNIX). 
<br>· TCP: (Transport Control Protocol) This is a connection oriented protocol. 
<br>· UDP (Universal Data gram Protocol): This is a connectionless transport layer protocol. 
<br>· Application programs that do not need connection-oriented protocol generally use UDP. 
<br>
<br>
<br>
<br><b>Network layer:</b>
<br>Responsible for the routing of data (packets) through the network; handles the addressing and delivery of data. This layer provides for congestion control, accounting information for the network, routing, addressing, and several other functions. IP (Internet Protocol) is a good example of a network layer protocol. Network layer does not deal with lost messages. 
<br>Important features of Network layer protocols: 
<br>· Concerned with the transmission of packets. 
<br>· Choose the best path to send a packet (routing). 
<br>· The routing may be complex in a large network (e.g. Internet). 
<br>· Routing packets through a network may be accomplished by using simple static routes or by using complex dynamic routing algorithms. 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next Topic - Data link Layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_datalink_layer.aspx"></asp:HyperLink>
<br>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>networking</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_transport_layer_network_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>cs</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_transport_layer_network_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_transport_layer_network_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_transport_layer_network_layer.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_transport_layer_network_layer/image2.wmf"></sub>
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
