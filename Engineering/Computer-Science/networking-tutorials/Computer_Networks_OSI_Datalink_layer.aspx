<%@ Page Language="C#" MasterPageFile="~/Masters/networking_tutorials_links.master" AutoEventWireup="True" CodeBehind="Computer_Networks_OSI_Datalink_layer.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.networking_tutorials.Computer_Networks_OSI_Datalink_layer" %>
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
	<b>Computer Networks - The OSI model - Data Link layer</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Data link layer:</b>
<br>Provides for the reliable delivery of data across a physical network. This layer deals with issues such as flow regulation, error detection and control, and frames. This layer has the important task of creating and managing what frames are sent out on the network. The network data frame, or packet, is made up of checksum, source address, destination address, and the data itself. The largest packet size that can be sent defines the maximum transmission Unit (MTU).
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image1.gif"></sub>
<br>Important features of Data link layer: 
<br>· Handles errors in the physical layer. 
<br>· Groups bits into frames and ensures their correct delivery. 
<br>· Adds some bits at the beginning and end of each frame plus the checksum. 
<br>· Receiver verifies the checksum. 
<br>· If the checksum is not correct, it asks for retransmission. (Send a control message). 
<br>· Consists of two sub layers: 
<br>Logical Link Control (LLC) defines how data is transferred over the cable and provides data link service to the higher layers. 
<br>Medium Access Control (MAC) defines who can use the network when multiple computers are trying to access it simultaneously (i.e. Token passing, Ethernet [CSMA/CD])
<br>
<br>
<br>The data link layer provides reliable transit of data across a physical network link. Different data link layer specifications define different network and protocol characteristics, including physical addressing, network topology, error notification, sequencing of frames, and flow control. Physical addressing (as opposed to network addressing) defines how devices are addressed at the data link layer. Network topology consists of the data link layer specifications that often define how devices are to be physically connected, such as in a bus or a ring topology. Error notification alerts upper-layer protocols that a transmission error has occurred, and the sequencing of data frames reorders frames that are transmitted out of sequence. Finally, flow control moderates the transmission of data so that the receiving device is not overwhelmed with more traffic than it can handle at one time. 
<br>The protocols used in Data link layer are SLIP, PPP, MTU, and CSLP. 
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Next Topic - Physical Layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_physical_layer.aspx"></asp:HyperLink>
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image2.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>networking</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_datalink_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image2.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>cs</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_datalink_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image2.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_datalink_layer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image2.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/computer_networks_osi_datalink_layer.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_computer_networks_osi_datalink_layer/image3.wmf"></sub>
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
