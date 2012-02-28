<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Transmission_Lines_and_Distributed_l_and_c.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transmission_Lines_and_Distributed_l_and_c" %>
<%@ MasterType VirtualPath="~/Masters/emlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Transmission Lines and Distributed l and c</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transmission Lines and Distributed l and c.</b>
<br>Printed circuit boards (PCBs) are a very common method to connect electrical elements together such as surface mounted resistors, inductors, capacitors, and integrated circuits, for example. Lands connect the circuit elements together. These are the "printed wires” on the PCB: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image1.gif"></sub>
<br>While this is a common method for interconnecting components, there is a big difference between such lands for low and high frequency circuits. As you'll see in this course (and in more detail in EE 481 Microwave Engineering), the width and thickness of the land, the thickness of the substrate, and the dielectric constant of the substrate all effect the performance of the land. For high frequency engineering, a land is much more than just a printedwire interconnection! 
<br><b>Signal Propagation Delay</b>
<br>Imagine that two ICs are connected together as shown: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image2.gif"></sub>
<br>When the voltage at A changes state, does that new voltage value appear instantly at B? No, of course not. Think of one person speaking to another. If they are close together, the sound seems to arrive at the observer instantly. If they are separated by a large distance, there is a propagation delay time as the sound wave travels to the observer. Not an instantaneous effect. 
<br>A similar phenomenon occurs with electrical signals. With highspeed digital circuits, even distances as small as six inches may be "far” and the propagation delay time for a voltage to appear at another IC may be significant. So how does this phenomenon work? In the words of Dr. Albert Einstein: 
<br>"You see, wire telegraph is a kind of a very, very long cat. You pull his tail in New York and his head is meowing in Los Angeles. Do you understand this? And radio operates exactly the same way: you send signals here, they receive them there. The only difference is that there is no cat.” 
<br><b>Transmission Lines</b>
<br>This propagation of voltage signals is modeled as a so-called transmission line (TL). We will see that voltage and current can propagate along a TL as a wave! Fantastic. The transmission line model can be used to solve many, many types of high frequency problems, either exactly or approximately. TL geometries include those in text 
<br>. Two-wire (parallel) 
<br>.Wire above a ground plane, and
<br>. Coaxial cable
<br>All true TLs share one common characteristic: the E and H fields are all perpendicular to the direction of propagation, which is the long axis of the geometry. These are called TEM fields for transverse electric and magnetic fields. An excellent example of a TL is a coaxial cable. On a TL, the voltage and current vary along the structure in time t and spatially in the z direction, as indicated in the figure below. There are no instantaneous effects. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image3.gif"></sub>
<br>A common circuit symbol for a TL is the two-wire (parallel) symbol to indicate any transmission line. For example, the equivalent circuit for the coaxial structure shown above is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image4.gif"></sub>
<br><b>Per-Unit-Length Parameters for Transmission Lines</b>
<br>How do we solve for V ((z,t) ) and I( (z,t))? We first need to develop the governing equations for the voltage and current, then solve these equations. 
<br>Notice in Fig. 1 above that there is conduction current in the center conductor and outer shield of the coaxial cable and a displacement current between these two conductors where the electric field E is varying with time. 
<br><b>Each of these currents has an associated impedance:</b>
<br>. Conduction current impedance effects: 
<br>o Resistance, R, due to losses in the conductors, 
<br>o Inductance, L, due to the current in the conductors and the magnetic flux linking the current path. 
<br>.Displacement current impedance effects: 
<br>o Conductance, G, due to losses in the dielectric between the conductors, 
<br>o Capacitance, C, due to the time varying electric field between the two conductors. We will ignore all losses (R = 0 and G = &infin;) for now, but will add them in later in this course. To develop the governing equations for V((z,t) ) and I( (z,t)), we will consider only a small section  z of the TL. This  z is so small that the electrical effects are occurring instantaneously and we can simply use circuit theory to draw the relationships between the conduction and displacement currents. This equivalent circuit is shown below
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image5.gif"></sub>
<br>The variables l and c are per-unit-length (PUL) parameters with units of H/m and F/m, respectively. A TL can be constructed by cascading many, many of these subsections along the total length of the TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image6.gif"></sub>
<br>This is a general model. In other words, it applies to any TL supporting a TEM field. However, the specific l and c values vary depending on the specific geometry (whether it is a twowire, coax, or other geometry). 
<br><b>Transmission Line Equations</b>
<br>To develop the governing equations for V(z,t) ), we apply KVL in Fig. 2 above
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image7.gif"></sub>
<br>Similarly, for the current I (z,t) apply KCL at the node
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image8.gif"></sub>
<br>Then: 
<br>1. Divide (1) by  z : 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image9.gif"></sub>
<br>In the limit as  z -> 0, the term on the LHS in (3) is the forward difference definition of the derivative. Hence, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image10.gif"></sub>
<br>2. Divide (2) by  z : 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image11.gif"></sub>
<br>Again, in the limit as  z -> 0the term on the LHS is the forward difference definition of the derivative. Hence, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image12.gif"></sub>
<br>Equations (4) and (6) are a pair of coupled, first order partial differential equations for V ((z,t) and I (( z,t) These two equations are called the transmission line equations, though sometimes they're called the telegrapher's equations. Recap: We expect that V and I are not constant along high-speed digital circuit interconnects. Rather, (4) and (6) dictate how V and I vary along the TL at all times.. 
<br><b>TL Wave Equations</b>
<br>We will now combine (4) and (6) in a special way to form two equations, each a function of V or I only. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image13.gif"></sub>
<br>Substituting 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image14.gif"></sub>
<br>Equations (9) and (10) are the governing equations for the z and t dependence of V and I. These are very special equations. In fact, they are wave equations for V and I! 
<br><b>Voltage and Current Waves</b>
<br>You probably don't have any direct experimental evidence that this propagation of voltage and current waves is actually real. You'll get a chance for this in the lab for this course. But here's another description of a phenomenon that occurs because of voltage and current waves. Imagine a two-wire TL with a short circuit connected at the load end: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image15.gif"></sub>
<br>The measured voltage v<sub>A</sub> t =0 for all time. One may expect the voltages v<sub>B</sub>(t) and v<sub>c</sub> t to be zero for all time as well. That is indeed the case when the frequency of operation is small enough. For example, for the 1-m length TL shown above, this is the case when f &#8804; 2 MHz. But when the frequency becomes high enough, say f &#8805; 20 MHz the voltage and current will not be zero! Why? Because the voltage and current waves propagate along this TL, reflect from the short-circuit load, and add constructively in some places along the TL and add estructively in others. In the case of the above TL operating near 200 MHz: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image16.gif"></sub>
<br>This is a new phenomenon and one not described by circuit theory in your earlier courses. 
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
<br><b>Discuss about MOSFET here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for MOSFET</b>
<br>You can discuss all your issues on MOSFET here</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>sir,
<br>plz send me the notes for fourier transforms its very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>Aug 31, 12:14:03 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>6815
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>Sir I want tutorial on Fourier Transform......... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;jainpooja.1989@yahoo.com</b> 
</td>

      
      <td class="txt">
	<br>Jul 15, 3:24:49 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7599
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>sir i want tutorial on fourier transform 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;apseng2005</b> 
</td>

      
      <td class="txt">
	<br>Jul 11, 10:08:19 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7459
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>heloo sir ,i want a tutorial for match filter.plz send it as soon as possible it is very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;richa</b> 
</td>

      
      <td class="txt">
	<br>Jun 4, 2:25:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>8706
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>I want lecture notes for single phase ac &amp; 3phase ac circuits 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;kalaivanisudhagar</b> 
</td>

      
      <td class="txt">
	<br>May 21, 11:32:46 AM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>13419
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>what is the work done to move a charge? derive an expression for assembling a configuration of point charges
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:28:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7500
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>i want lcr circiut teorems derivations 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:23:58 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7253
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>i want oscillator frequency derivations for all. plz let me know from where i can get that 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>May 4, 5:21:01 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7280
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>I've got a question in one of my revision papers,
<br>
<br>Explain the advantages of representing a transistor by means of an equivalent circuit circuit model
<br>
<br>The only thing i can remember is that you can take complex circuits and break them down into simpler circuits which are easier to understand, 
<br>
<br>Is this the only advantage or do you have any more?
<br>
<br>Please help! 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;ally79</b> 
</td>

      
      <td class="txt">
	<br>Apr 12, 6:33:57 PM
</td>

      
      <td class="txt">
	<br>2
</td>

      
      <td class="txt">
	<br>19090
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>I want to know the variation of reverse saturation current with the increase in temperature for both germanium and silicon diodes 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;bhrahma@yahoo.co.in</b> 
</td>

      
      <td class="txt">
	<br>Jan 28, 7:17:23 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>9452
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>analog and digital communication system, fiber optic communication, telecommunication technique and application, mobile communication 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;hirakec@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 17, 10:38:27 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>14002
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>I WANT A TUTORIAL FOR CMOS TRANSISTORS. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;maroofalamkhan</b> 
</td>

      
      <td class="txt">
	<br>Dec 14, 3:29:22 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>12726
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/transmission_lines_and_distributed_l_and_c.aspx"></asp:HyperLink> 
<br>what about coaching 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;satish21</b> 
</td>

      
      <td class="txt">
	<br>Dec 7, 5:27:52 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>15258
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink15" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_lines_and_distributed_l_and_c/image18.wmf"></sub>
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
