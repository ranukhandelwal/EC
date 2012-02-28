<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Transmission_Line_Matching_Using_Lumped_L_Networks.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transmission_Line_Matching_Using_Lumped_L_Networks" %>
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
	<b>Transmission Line Matching Using Lumped L Networks</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transmission Line Matching Using Lumped L Networks</b>
<br>Impedance matching (or simply "matching”) one portion of a circuit to another is an immensely important part of microwave engineering. Additional circuitry between the two parts of the original circuit may be needed to achieve this matching. Why is impedance matching so important? Because:
<br>1. Maximum power is delivered to a load when the TL is matched at both the load and source ends. This configuration satisfies the conjugate match condition. 
<br>2. With a properly matched TL, more signal power is transferred to the load, which increases the sensitivity of the device. 
<br>3. Some equipment (such as certain amplifiers) can be damaged when too much power is reflected back to the source. Factors that influence the choice of a matching network include: 
<br>1. The desire for a simple design, if possible. 
<br>2. Providing an impedance match at a single frequency is often not difficult. Conversely, achieving wide bandwidth matching is usually difficult. 
<br>3. Even though the load may change, the matching network may need to perform satisfactorily in spite of this, or be adjustable. We will discuss three methods for impedance matching in this course: 
<br>1. L networks, 
<br>2. Single stub tuners (using shunt stubs), 
<br>3. Quarter wave transformers. 
<br>You've most likely seen all three of these before in other courses, or in engineering practice. 
<br><b>Matching Using L Networks</b>
<br>Consider the case of an arbitrary load that terminates a TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image1.gif"></sub>
<br>To match the load to the TL, we require T<sub>L</sub> =0 . However, if Z<sub>L</sub> &#8800; Z<sub>0</sub> additional circuitry must be placed between Z<sub>L</sub> and Z<sub>0 </sub>to bring the VSWR = 1, or least approximately so: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image2.gif"></sub>
<br>For T<sub>L</sub> = 0, this implies Z<sub>in</sub> = Z<sub>0</sub> . In other words, in 0 R<sub>in</sub> = Re [Z<sub>0</sub> ] and X<sub>in</sub> = 0, if the TL is lossless. Note that we need at least two degrees of freedom in the matching network in order to transform Z<sub>L</sub> at the load to Z<sub>0</sub> seen at the input to the matching network. This describes impedance matching in general. For an L network specifically, the matching network is either (Fig. 5.2): 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image3.gif"></sub>
<br>where Z<sub>L</sub> = R<sub>L</sub> + jX<sub>L</sub> .This network topology gets its name from the fact that the series and shunt elements of the matching network form an "L” shape . There are eight possible combinations of inductors and capacitors in the L network: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image4.gif"></sub>
<br>Notice that this type of matching network is lossless; or at least the loss can potentially be made extremely small with proper component choices. As in the text, we'll solve this problem two ways: first analytically, then using the Smith chart. 
<br><b>Analytical Solution for L Network Matching</b>
<br>. Assume L 0 R<sub>L</sub> &gt; Z<sub>0</sub> . Using Fig. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image5.gif"></sub>
<br>Through the proper choice of X and B we wish to force Z<sub>in</sub> = Z<sub>0</sub> . Solving (1) for the B and X that produce this outcome (by equating real and imaginary parts, as shown in the text) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image6.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image7.gif"></sub>
<br>Comments: 
<br>1. Since R<sub>L</sub> &gt; Z<sub>0</sub> , the argument is positive in the second square root of (2). (B must be a real number.) 
<br>2. Note that there are two possible solutions for B in (2). 
<br>3. X in (3) also has two possible solutions, depending on which B from (2) is used. 
<br>. Assume R<sub>L</sub> &lt; Z<sub>0</sub> . Using Fig. 5.2(b) with Z<sub>L</sub> = Z<sub>0</sub> , we obtain
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image8.gif"></sub>
<br>Solving this equation by equating real and imaginary parts as shown in the text gives
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image9.gif"></sub>
<br>Comments: 
<br>1. Since R<sub>L</sub> &lt; Z<sub>0</sub> , the argument is positive for the square root in (5). 
<br>2. There are two solutions for both X and B. Use the top signs in both (5) and (6) for one solution and the bottom signs for the other. 
<br><b>Smith Chart Solution for L Network Matching</b>
<br>L-network matching can also be computed graphically using the Smith chart. This approach is less accurate than the analytical approach. 
<br>However, more insight into the matching process is often obtained using the Smith chart. For example, the contribution each element makes to the matching is quite clear. The process of using the Smith chart to design the matching network is probably best illustrated by example. Example 5.1 in the text illustrates the design of an L network when R<sub>L</sub> &gt; Z<sub>0</sub> (Fig. 5.2a). Here, we'll give an example when R<sub>L</sub> &lt;Z<sub>0</sub>
<br>Example N7.1 Design an L network to match the load 25 + j30 ? to a TL with Z<sub>0</sub> = 50 ? at the frequency f =1 GHz. Since R<sub>L</sub> &lt;Z<sub>0</sub>, we'll use the circuit topology in 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image10.gif"></sub>
<br>We'll solve this problem two ways: first with the Smith chart and then analytically. 
<br><b>Steps for a Smith chart solution</b><b>:</b>
<br>1. Mark this point on the chart. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image11.gif"></sub>
<br>2. The overall concept behind this type of L-network matching is to add a reactance x to z<sub>L</sub> such that the sum of admittances b and (z<sub>L</sub> + jx) <sup>-1</sup> yield y<sub>in</sub> =1+ j0 = z<sub>in</sub> (the center of the Smith chart). In such a case, the TL sees a matched load. So, in this case we need to add a normalized impedance jx = ? j0.1 p.u.? in order to move to 1+ jx on an admittance chart. 
<br>3. Convert this impedance to an admittance value by reflecting through the origin to the diametrically opposed point on the constant VSWR circle. 
<br>4. Add the normalized susceptance b =1.0 p.u.S to reach the center of the Smith chart. Here T = 0 and y <sub>in</sub>=1+ j0, which means the TL now sees a matched load. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image12.gif"></sub>
<br>Un-normalizing, we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image13.gif"></sub>
<br>What are the L and C values of these elements? We can identify the type of element by the sign of the reactance or susceptance: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image14.gif"></sub>
<br>. Since X &lt; 0, we identify this as a capacitor. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image15.gif"></sub>
<br>For operation at 1 GHz, we need
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image16.gif"></sub>
<br>. Since B &gt; 0, we also identify this as a capacitor. Therefore, 
<br>jB = j&omega;C<sub>1</sub> = j0.02 S
<br>For operation at 1 GHz, we need
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image17.gif"></sub>
<br>The final circuit is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image18.gif"></sub>
<br>Let's check to see if we have really achieved a match at 1 GHz: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image19.gif"></sub>
<br>So, we have indeed achieved a match since Z<sub>in</sub> = Z<sub>0</sub> . Next, for the analytical solution we apply 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image20.gif"></sub>
<br>while from
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image21.gif"></sub>
<br>This analytical solution agrees exactly with our Smith chart solution. It is readily apparent that there is a second analytical solution for this matching network. It is equally valid. On the Smith chart, this second solution is found by adding jx to z<sub>L</sub> until the second intersection with the 1+ jx admittance circle is reached. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_matching_using_lumped_l_networks.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2385
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_matching_using_lumped_l_networks.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2307
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_matching_using_lumped_l_networks.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>vannak</b> 
</td>

      
      <td class="txt">
	<br>Jun 1, 4:16:47 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>3862
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_matching_using_lumped_l_networks/image23.wmf"></sub>
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
