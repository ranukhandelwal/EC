<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Basic_Properties_of_Dividers_and_Couplers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Basic_Properties_of_Dividers_and_Couplers" %>
<%@ MasterType VirtualPath="~/Masters/mwlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Basic Properties of Dividers and Couplers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Basic Properties of Dividers and Couplers.</b>
<br>For the remainder of this course we're going to investigate a plethora of microwave devices and circuits – both passive and active. to begin, during the next six lectures we will focus on different types of power combiners, power dividers and directional couplers. Such circuits are ubiquitous and highly useful. applications include: 
<br>&bull; Dividing (combining) a transmitter (receiver) signal to many antennas. 
<br>&bull; Separating forward and reverse propagating waves (can also use for a sort of matching). 
<br>&bull; Signal combining for a mixer. 
<br>As a simple example, a two-way power splitter would have the form 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image1.gif"></sub>
<br>where &alpha;&epsilon;R and 0&#8804;&alpha; &#8804;1. The same device can often be used as a power combiner: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image2.gif"></sub>
<br>We see that even the simplest divider and combiner circuits are three-port networks. It is common to see dividers and couplers with even more than that. so, before we consider specific examples, it will be beneficial for us to consider some general properties of three- and four-port networks. 
<br><b>Basic Properties of Three-Port Networks</b>
<br>As we'll show here, it's not possible to construct a three-port network that is: 
<br>1. lossless, 
<br>2. reciprocal, and
<br>3. matched at all ports. 
<br>This basic property of three-ports limits our expectations for power splitters and combiners. We must design around it. To begin, a three-port network has an S matrix of the form: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image3.gif"></sub>
<br>If the network is matched at every port, then S<sub>11</sub> = S<sub>22</sub> = S<sub>33</sub> = 0. (It is important to understand that "matched” means &tau;<sub>1</sub> , &tau;<sub>2</sub> and &tau; <sub>3</sub>= 0 when all other ports are terminated in Z<sub>0</sub> .) 
<br>If the network is reciprocal, then S<sub>21</sub> = S<sub>12</sub> , S<sub>31</sub> = S<sub>13</sub> and S<sub>32</sub> = S<sub>23</sub> . Consequently, for a matched and reciprocal three-port, its S matrix has the form: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image4.gif"></sub>
<br>Note there are only three different S parameters in this matrix. Lastly, if the network is lossless, then [S] is unitary. Applying we find that
<br>|S<sub>12</sub>|<sup>2</sup>+|S<sub>13</sub>|<sup>2</sup> =1 |S<sub>12</sub>|<sup>2</sup>+|S<sub>23</sub>|<sup>2</sup> =1 |S<sub>13</sub>|<sup>2</sup>+|S<sub>23</sub>|<sup>2</sup> =1
<br>and applying that
<br>S<sup>*</sup><sub>13</sub>S<sub>23</sub>=0 S<sup>*</sup><sub>23</sub>S<sub>12</sub>=0 S<sup>*</sup><sub>12</sub>S<sub>13</sub>=0
<br>From (6)-(8), it can be surmised that at least two of the three S parameters must equal zero. If this is the case, then none of the equations (3), (4) or (5) can be satisfied. [For example, say S<sub>13</sub> = 0. Then (6) and (8) are satisfied. For (7) to be satisfied and S<sub>23</sub> &#8800; 0, we must have S <sub>12</sub>= 0. But with S<sub>12</sub> and S<sub>13</sub> both zero, then (3) cannot be satisfied.] Our conclusion then is that a three-port network cannot be lossless, reciprocal and matched at all ports. Bummer. This finding has wide-ranging ramifications. 
<br>However, one can realize such a network if any of these three constraints is loosened. Here are three possibilities: 
<br>1. Nonreciprocal three-port. In this case, a lossless three-port that is matched at all ports can be realized. It is called a circulator : 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image5.gif"></sub>
<br>Notice that S<sub>ij</sub>&#8800; S<sub>ji</sub> . 
<br>2. Match only two of the three ports. Assume ports 1 and 2 are matched. Then, 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image6.gif"></sub>
<br>3. Lossy network. All ports can be simultaneously matched and the network reciprocal. 
<br><b>Basic Properties of Four-Port Networks</b>
<br>Unlike three-ports, it is possible to make a lossless, matched and reciprocal four-port network. These are called directional couplers.the S matrix o f a reciprocal and matched four-port has the form
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image7.gif"></sub>
<br>Incorporating the fact that the network is lossless puts further constraints on these S parameters, as discussed in the text. As described in Section 7.1 of the text, there are two commonly used realizations of directional couplers: 
<br>1. The Symmetrical Coupler. The S matrix for this device is
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image8.gif"></sub>
<br>Where &alpha;,&beta;&epsilon;R and &alpha;<sup>2</sup> +&beta;<sup>2</sup> =1. It is obvious from the S matrix that the network is reciprocal and matched. It can also be shown that [S] is unitary, which means this fourport is also lossless. 
<br>2. The Asymmetrical Coupler. The S matrix for this device is
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image9.gif"></sub>
<br>We can see from this S matrix that the network is matched and reciprocal. It can also be shown that the network is lossless. we will study this coupler later as the 180&#176; Hybrid. 
<br><b>Directional Couplers</b>
<br>We will now take a quick look at the operation of a directional coupler. Common circuit symbols are : 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image10.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image11.gif"></sub>
<br>The arrows indicate the assumed directions of time average
<br>power flow. as we saw in (11) and (12), the S matrix of the symmetrical and antisymmetrical directional couplers has the form
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image12.gif"></sub>
<br>where ‘_' indicates a non-zero value. we can deduce the operation of this network directly from the S matrix, assuming all the ports are matched. 
<br>For example, if power enters port 1, it then splits between ports 2 ( S<sub>21</sub> &#8800; 0) and 3 ( S<sub>31</sub> &#8800; 0), while no power is delivered to port 4 (S<sub>41</sub> = 0). Since S<sub>11</sub> = 0, there will be no reflected power from port 1. 
<br>Alternatively, if power enters from port 2, it then splits between ports 1 (S<sub>12</sub> &#8800; 0) and 4 ( S<sub>42</sub> &#8800; 0), but none to port 3 (S<sub>32</sub> = 0). Of course, no directional coupler is ideal and the S matrix above is only approximately realized in practice. The performance of directional couplers is characterized by the following three values. For these definitions, port 1 is assumed the input, ports 2 and 3 the outputs and port 4 is the isolated port. 
<br>1. Coupling, C: 
<br>C= 10log<sub>10</sub> (P<sub>1</sub>/P<sub>3</sub>) = 10log<sub>10</sub>(1/S<sub>31</sub>|<sup>2</sup>)dB 
<br>or, using : 
<br>C=-20log<sub>10</sub>|&beta;| dB
<br>2. Directivity, D: 
<br>D=10log<sub>10</sub>(P<sub>3</sub>/P<sub>4</sub> = 10log<sub>10</sub> {(P<sub>3</sub>/P<sub>1</sub>)/(P<sub>4</sub>/P<sub>1</sub>)} = 10log<sub>10</sub> (|S<sub>31</sub>|<sup>2</sup>/|S<sub>41</sub>|<sup>2</sup>)dB 
<br>or, using: 
<br>D=20log<sub>10</sub>(|&beta;|/S<sub>14</sub>)dB
<br>If the directional coupler is ideal, then D ---&infin;.
<br>3. Isolation, I: 
<br>I=10log<sub>10</sub>(P<sub>1</sub>/P<sub>4</sub> =10log<sub>10</sub>(1/|S<sub>41</sub>|<sup>2</sup>)dB
<br>I=20log<sub>10</sub>|S<sub>14</sub>|dB
<br>These three quantities are related by
<br>I = D +C dB 
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
<br><b>Discuss about Microwave Engineering here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for Microwave Engineering</b>
<br>Discussion on Microwave Engineering</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dividers_and_couplers.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2389
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dividers_and_couplers.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2314
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dividers_and_couplers.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vannak</b> 
</td>

      
      <td class="txt">
	<br>Jun 1, 4:16:47 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>3865
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dividers_and_couplers/image14.wmf"></sub>
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
