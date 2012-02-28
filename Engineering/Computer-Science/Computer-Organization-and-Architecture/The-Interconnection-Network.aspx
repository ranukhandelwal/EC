<%@ Page Language="C#" MasterPageFile="~/Masters/architectures_for_parallel_computation_links.master" AutoEventWireup="True" CodeBehind="The-Interconnection-Network.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.The_Interconnection_Network" %>
<%@ MasterType VirtualPath="~/Masters/architectures_for_parallel_computation_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>The Interconnection Network</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; The interconnection network (IN) is a key component of the architecture. It has a decisive influence on the overall performance and cost. 
<br>&bull; The traffic in the IN consists of data transfer and transfer of commands and requests. 
<br>&bull; The key parameters of the IN are
<br>- total bandwidth: transferred bits/second
<br>- cost
<br>Single Bus 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image1.jpeg"></sub>
<br>&bull; Single bus networks are simple and cheap. 
<br>&bull; One single communication is allowed at a time; the bandwidth is shred by all nodes. 
<br>&bull; Performance is relatively poor. 
<br>&bull; In order to keep a certain performance, the number of nodes is limited (16 - 20). 
<br>Completely connected network 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image2.jpeg"></sub>
<br>&bull; Each node is connected to every other one. 
<br>&bull; Communications can be performed in parallel between any pair of nodes. 
<br>&bull; Both performance and cost are high. 
<br>&bull; Cost increases rapidly with number of nodes. 
<br>Crossbar network 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image3.jpeg"></sub>
<br>&bull; The crossbar is a dynamic network: the interconnection topology can be modified by positioning of switches. 
<br>&bull; The crossbar switch is completely connected: any node can be directly connected to any other. 
<br>&bull; Fewer interconnections are needed than for the static completely connected network; however, a large number of switches is needed. 
<br>&bull; A large number of communications can be performed in parallel (one certain node can receive or send only one data at a time). 
<br>Mesh network 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image4.jpeg"></sub>
<br>&bull; Mesh networks are cheaper than completely connected ones and provide relatively good performance. 
<br>&bull; In order to transmit an information between certain nodes, routing through intermediate nodes is needed (maximum 2*(n-1) intermediates for an n*n mesh). 
<br>&bull; It is possible to provide wraparound connections: between nodes 1 and 13, 2 and 14, etc. 
<br>&bull; Three dimensional meshes have been also implemented. 
<br>Hypercube network 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image5.jpeg"></sub>
<br>&bull; 2<sup>n</sup> nodes are arranged in an n-dimensional cube. Each node is connected to n neighbours. 
<br>&bull; In order to transmit an information between certain nodes, routing through intermediate nodes is needed (maximum n intermediates). 
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
<br><b>Discuss About Computer Organization and Architecture </b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Architectures for Parallel Computation</b>
<br>Discussion forum for Architectures for Parallel Computation</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image7.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_the-interconnection-network/image6.wmf"></sub>
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
