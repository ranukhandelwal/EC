<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Transmission_Line_Termination_Reflections.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transmission_Line_Termination_Reflections" %>
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
	<b>Transmission Line Termination Reflections. Current Waves</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transmission Line Termination Reflections. Current Waves.</b>
<br>The TLs we've considered so far were semi-infinitely long. This is useful when trying to understand basic behavior such as V and I wave propagation, for example. Obviously semi-infinite TLs are not very practical. As an example of a practical application, interconnected ICs on a PCB provide “termination” of TLs. We will see in this lecture that terminations of a TL generally will cause the voltage and current waves to (partially) reflect from the load. Consider a TL with resistive termination and the same step input voltage from the last example: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image1.gif"></sub>
<br>As we saw in the last example, a step voltage is launched at time
<br>t = 0 with amplitude (V<sub>0</sub> ./ R<sub>c</sub> (R<sub>c</sub> + R<sub>s</sub>) . Here, the disturbance will propagate to the right along the TL until it encounters R<sub>L</sub>.
<br>When the disturbance reaches the load, there will be created a new voltage disturbance that propagates to the left (-z direction). This is called the reflected wave. 
<br><b>Voltage Reflection Coefficient</b>
<br>What is the amplitude of the reflected voltage wave? To answer this very important question we begin with the general TL equations from 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image2.gif"></sub>
<br>At the load z = L these two equations evaluate to: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image3.gif"></sub>
<br>However, at the load we also have the resistor's lumped element terminal relationship
<br>V<sub>L</sub>( t)= R<sub>L</sub> I<sub>L</sub>(t) 
<br>We can see from the figure above that
<br>V<sub>L</sub>( t)=V( z = L, t) I<sub>L</sub>(t)= I( z=t) 
<br>(Note one subtle point here. Both RHSs above are the sum of +z and -z propagating waves! At z = L, both of these waves sum to give the terminal voltage V<sub>L</sub> or the terminal current I<sub>L</sub> .) Now, substitute 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image4.gif"></sub>.
<br>Dividing by V<sup>+</sup>( + (t+ + L / u)) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image5.gif"></sub>
<br>Solving this equation for the ratio V<sup>-</sup> - /V<sup>+</sup> + results in
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image6.gif"></sub>
<br>This ratio is incredibly important to our work with TLs. Consequently, we will define this ratio by the symbol as
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image7.gif"></sub>
<br>which, we can deduce, is the voltage reflection coefficient at the load position z = L. In terms of 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image8.gif"></sub>
<br><b>Discussion</b>
<br>.Some general characteristics of the voltage reflection
<br>coefficient are: 
<br>o -L&lt;&tau;<sub>L</sub>&lt;1
<br>o Special cases for &tau;<sub>L</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image9.gif"></sub>
<br>In this last case, there is no reflection of the wave from the load! 
<br>. Note from (8) that the voltage reflection coefficient is only a function of the load resistance and the characteristic resistance of the TL. &tau;<sub>L</sub> is not dependent on the amplitude of the incident voltage. Therefore, whenever a voltage V + is incident on the load, a reflected voltage V - equal to
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image10.gif"></sub>
<br>is launched that propagates in the -z direction. 
<br>. This reflected voltage adds to the incident voltage to produce the total voltage anywhere on the TL. 
<br>. When this reflected voltage disturbance reaches the source, there will be another reflection of the voltage wave
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image11.gif"></sub>
<br>where R<sub>s</sub> is the source resistance. 
<br>. This process of the voltage wave reflecting off the source, propagating down the TL, then reflecting from the load, then propagating down the TL, then reflecting from the source, etc. repeats indefinitely. 
<br>Example N13.1. A previously discharged TL shown below is excited by a DC source of 30 V at time t = 0. Sketch the voltage along the TL at times 1 &mu;s, 2.5 &mu;s, 4.5 &mu;s, and 6.5 &mu;s. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image12.gif"></sub>
<br>The voltage reflection coefficients are: 
<br>. At the load, from (8): 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image13.gif"></sub>
<br>. At the source, from : 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image14.gif"></sub>
<br>The time to transit the TL is
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image15.gif"></sub>
<br>See the sketches on the next page for the solution: 
<br>. 2 The wave reflects off the load with &tau;<sub>L</sub> =1/3 . The wave front then propagates to the left. (Can think of this as originating at z = 2L, if you wish.) 
<br>. The total voltage equals the sum of the incident and all reflected waves. 
<br>. 3 The wave front reflects off the source. Complete reflection with &tau;<sub>L</sub>=-1. 
<br>. 4 The wave front propagates down the TL to the right and then reflects again off the load (&tau;<sub>L</sub>=1/3). 
<br>See VisualEM Example 7.2 Worksheet [set nskip=1, W=20 ms (=10t<sub>L</sub>)]:
<br>. Animation in time. 
<br>. Compare solution on next page at t = 1 ms and t = 2.5 &mu;s. 
<br>. Voltage is converging to V( (z,t) ) &#8776 30 V. Expected? 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image16.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image17.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image18.gif"></sub>
<br><b>Discussion</b>
<br>. V( (z,t) )&#8776 30 V everywhere on the TL for t &gt;&gt; t<sub>L</sub> . This is the "steady state.” Do we expect a nonzero steady state voltage? Yes, since the source remains 30 V for t &gt; 0. For t &gt;&gt;t<sub>L</sub> , have
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image19.gif"></sub>
<br>In steady state, this is just a simple resistive circuit, maybe two parallel wires interconnecting a battery and a resistor. . In steady state on the TL, notice that
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image20.gif"></sub>
<br>Why is this? Because
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image21.gif"></sub>
<br><b>Current Waves</b>
<br>So far we've only considered the propagation and reflection of voltage waves on a TL. We know, however, that with a voltage wave there must also be an associated current wave: We cannot have one without the other. 
<br>Consider once again the TL of Fig. 1 excited by a unit-step voltage source. The current on the TL is expressed by (2). When the source initially turns on at t = 0, we can construct an equivalent circuit at the input to the TL in order to determine the amplitude of the initial current wave amplitude I + . In the case of V<sub>s</sub>( t)=V<sub>0</sub> u( t) the equivalent circuit is
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image22.gif"></sub>
<br>From this circuit, we can determine that
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image23.gif"></sub>
<br>A current wave with this amplitude I + in (10) then propagates down the TL in Fig. 1 until it encounters the resistive load. Like the voltage wave, this current wave is partially reflected by the load and the remaining energy is "transmitted” into the load resistance RL. We can determine this current reflection amplitude by beginning with (6) 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image24.gif"></sub>
<br>As we learned in Lecture 12, the amplitudes of V<sup>+</sup> + and V -<sup>-</sup> are related to I<sup>+</sup> + and I<sup>-</sup> - as
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image25.gif"></sub>
<br>Substituting these relationships into (11), we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image26.gif"></sub>
<br>This result in (14) tells us that the current reflection coefficient at the load is the negative of the load voltage reflection coefficient. It turns out that this is a general result: Current reflection coefficients are the negative of the corresponding voltage reflection coefficients. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/transmission_line_termination_reflections.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_line_termination_reflections/image28.wmf"></sub>
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
