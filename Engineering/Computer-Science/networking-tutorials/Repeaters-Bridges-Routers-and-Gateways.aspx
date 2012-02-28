<%@ Page Language="C#" MasterPageFile="~/Masters/networking_tutorials_links.master" AutoEventWireup="True" CodeBehind="Repeaters-Bridges-Routers-and-Gateways.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.networking_tutorials.Repeaters_Bridges_Routers_and_Gateways" %>
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
	<b>Repeaters, Bridges, Routers, and Gateways : A comparative study</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>1 . <b>Repeaters</b>
<br>2. <b>Bridges</b>
<br>3 .<b> Routers</b>
<br>4 .<b> Gateways</b>
<br>5. <b>NIC (Network Interface Card</b><b>)</b>
<br>6 .<b> Connectors</b>
<br>7. <b>Cables</b>
<br><b>1. Repeaters: </b>
<br>As signals travel along a network cable (or any other medium of transmission), they degrade and become distorted in a process that is called attenuation. If a cable is long enough, the attenuation will finally make a signal unrecognizable by the receiver. 
<br>A Repeater enables signals to travel longer distances over a network. Repeaters work at the OSI's Physical layer. A repeater regenerates the received signals and then retransmits the regenerated (or conditioned) signals on other segments. &nbsp; 
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image1.gif"></sub>
<br>To pass data through the repeater in a usable fashion from one segment to the next, the packets and the Logical Link Control (LLC) protocols must be the same on the each segment. This means that a repeater will not enable communication, for example, between an 802.3 segment (Ethernet) and an 802.5 segment (Token Ring). That is, they cannot translate an Ethernet packet into a Token Ring packet. In other words, repeaters do not translate anything. &nbsp; 
<br><b>2. Bridges: </b>
<br>Like a repeater, a bridge can join segments or workgroup LANs. However, a bridge can also divide a network to isolate traffic or problems. For example, if the volume of traffic from one or two computers or a single department is flooding the network with data and slowing down entire operation, a bridge can isolate those computers or that department. 
<br>In the following figure, a bridge is used to connect two segment segment 1 and segment 2. 
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image2.gif"></sub>
<br>Bridges can be used to: 
<br>· Expand the distance of a segment. 
<br>· Provide for an increased number of computers on the network. 
<br>· Reduce traffic bottlenecks resulting from an excessive number of attached computers. 
<br>Bridges work at the Data Link Layer of the OSI model. Because they work at this layer, all information contained in the higher levels of the OSI model is unavailable to them. Therefore, they do not distinguish between one protocol and another. 
<br>Bridges simply pass all protocols along the network. Because all protocols pass across the bridges, it is up to the individual computers to determine which protocols they can recognize. 
<br>A bridge works on the principle that each network node has its own address. A bridge forwards the packets based on the address of the particular destination node. 
<br>As traffic passes through the bridge, information about the computer addresses is then stored in the bridge's RAM. The bridge will then use this RAM to build a routing table based on source addresses. 
<br><b>3. Routers: </b>
<br>In an environment consisting of several network segments with different protocols and architecture, a bridge may not be adequate for ensuring fast communication among all of the segments. A complex network needs a device, which not only knows the address of each segment, but also can determine the best path for sending data and filtering broadcast traffic to the local segment. Such device is called a Router. 
<br>Routers work at the Network layer of the OSI model meaning that the Routers can switc h and route packets across multiple networks. They do this by exchanging protocol-specific information between separate networks. Routers have access to more information in packets than bridges, and use this information to improve packet deliveries. Routers are usually used in a complex network situation because they provide better traffic management than bridges and do not pass broadcast traffic. 
<br>Routers can share status and routing information with one another and use this information to bypass slow or malfunctioning connections. 
<br>Routers do not look at the destination node address; they only look at the network address. Routers will only pass the information if the network address is known. This ability to control the data passing through the router reduces the amount of traffic between networks and allows routers to use these links more efficiently than bridges 
<br><b>4. Gateways: </b>
<br>Gateways make communication possible between different architectures and environments. They repackage and convert data going from one environment to another so that each environment can understand the other's environment data. 
<br>A gateway repackages information to match the requirements of the destination system. Gateways can change the format of a message so that it will conform to the application program at the receiving end of the transfer. 
<br>A gateway links two systems that do not use the same: 
<br>· Communication protocols&nbsp;
<br>· Data formatting structures 
<br>· Languages 
<br>· Architecture 
<br>For example, electronic mail gateways, such as X.400 gateway, receive messages in one format, and then translate it, and forward in X.400 format used by the receiver, and vice versa. To process the data, the gateway: 
<br>·&nbsp;&nbsp; Decapsulates incoming data through the networks complete protocol stack. Encapsulates the outgoing data in the complete protocol stack of the other network to allow transmission. 
<br><b>5. NIC (Network Interface Card): </b>
<br>A NIC or Network Interface Card is a circuit board or chip, which allows the computer to communicate to other computers on a Network. This board when connected to a cable or other method of transferring data such as infrared can share resources, information and computer hardware. Local or Wide area networks are generally used for large businesses as well as are beginning to be found in homes as home users begin to have more then one computer. Utilizing network cards to connect to a network allow users to share data such as companies being able to have the capability of having a database that can be accessed all at the same time send and receive e-mail internally within the company or share hardware devices such as printers. 
<br><b>6. Connectors: </b>
<br>Network cards have three main types of connectors. Below is an example of what a network card may look like. 
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image3.gif"></sub>
<br>6.1<b> BNC connector:</b> As illustrated in the above picture the BNC connector is a round connector, which is used for thin net or 10Base-2 Local Area Network. 
<br>6.2<b> DB9 (RJ45 JACK):</b> The DB9 connector not to be confused with the Serial Port or sometimes referred to as the RJ45 JACK not to be confused with the RJ45 connection is used with Token Ring networks. 
<br>6.3<b> DB15 Connector: </b>The DB15 connector is used for a Thick net&nbsp;or 10Base-5 Local area network. 
<br>6.4<b> RJ45 connector:</b> Today one of the most popular types of connections used with computer networks. RJ45 looks similar to a phone connector or RJ11 connector however is slightly larger. 
<br>LED -The LED's as shown in the above illustration indicates if it detects a network generally by a green light which may flash as it communicates and then a red light which indicates collisions which will generally flash or not flash at all. 
<br><b>7. Cables </b>
<br>The following is a few examples of some of the more commonly used types of cables found with networks. 
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image4.gif"></sub>
<br>As illustrated in the above picture you can see three of the main types of cable used today. The first two pictures illustrate Unshielded and Shielded twisted pair cables. Unshielded twisted-pair cable is generally found in phone cables today and are used more often then shielded twisted pair today as it has been found that simply twisting the cable provides more efficient means of protection against interference. In addition shielded twisted-pair cable required the one end of the cable to be grounded. If both ends were to be grounded however this would cause a grounding loop causing low voltage and infinite amperage and various other hazards to the network. 
<br>The third picture in the above illustration shows a coaxial cable, which are the most commonly used and known types of cables. This cable can be found for cable TV and when used with networks utilize the BNC connector. 
<br>As illustrated in the above picture you can see three of the main types of cable used today. The first two pictures illustrate Unshielded and Shielded twisted pair cables. Unshielded twisted-pair cable is generally found in phone cables today and are used more often then shielded twisted pair today as it has been found that simply twisting the cable provides more efficient means of protection against interference. In addition shielded twisted-pair cable required the one end of the cable to be grounded. If both ends were to be grounded however this would cause a grounding loop causing low voltage and infinite amperage and various other hazards to the network. 
<br>The third picture in the above illustration shows a coaxial cable, which are the most commonly used and known types of cables. This cable can be found for cable TV and when used with networks utilize the BNC connector. 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>networking</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/repeaters-bridges-routers-and-gateways.aspx"></asp:HyperLink> 
<br>numericals on networking... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>priyasaha</b> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>cs</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/repeaters-bridges-routers-and-gateways.aspx"></asp:HyperLink> 
<br>computer science 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>mayurgate</b> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/repeaters-bridges-routers-and-gateways.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>session layer</b>" NavigateUrl="~/engineering/computer-science/networking-tutorials/repeaters-bridges-routers-and-gateways.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/networking-tutorials/img_repeaters-bridges-routers-and-gateways/image6.wmf"></sub>
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
