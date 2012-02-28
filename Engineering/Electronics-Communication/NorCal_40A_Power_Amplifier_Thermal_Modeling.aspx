<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="NorCal_40A_Power_Amplifier_Thermal_Modeling.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.NorCal_40A_Power_Amplifier_Thermal_Modeling" %>
<%@ MasterType VirtualPath="~/Masters/ec2links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>NorCal 40A Power Amplifier Thermal Modeling</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>NorCal 40A Power Amplifier Thermal Modeling.</b>
<br>Recall from the last lecture that the NorCal 40A uses a Class C power amplifier. From Fig. 10.3(b) the collector voltage was modeled as
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image1.gif"></sub>
<br>The transistor Q7 in the amplifier is either “off” (cutoff) or “on” (saturated). In-between these times, the transistor is active for a short time. (We'll consider the active regions shortly.) Also, we computed the maximum collector voltage to be
<br>V<sub>m</sub>=&pi;(V<sub>cc</sub>-V<sub>on</sub>
<br>and the maximum efficiency of the power amplifier to be
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image2.gif"></sub>
<br>The last Class C power amplifier characteristic we need to compute is the ac output power P delivered to the load. The load in this case is the antenna, which is connected at the output of the Harmonic Filter. 
<br>From (10.6), P = (V<sub>cc</sub> ?V<sub>on</sub> ) I<sub>0</sub> . But Io is unknown. On the other hand, V<sub>c</sub> is known. So, let's compute the Fourier series expansion of V<sub>c</sub> shown in Fig. 10.3(b). Using the analysis given in Appendix B, Section 3: 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image3.gif"></sub>
<br>Recall that in Prob. 15 you designed the Harmonic Filter to be a fifth-order, low-pass ladder filter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image4.gif"></sub>
<br>When the NorCal 40A is transmitting, the Harmonic Filter reduces the "higher-order harmonic” content in V<sub>c</sub> (10.8) by significantly attenuating these frequency components. We'll assume that these higher-order harmonics (2?, 4?, 6?…) are completely attenuated by the Harmonic Filter and do not appear at the antenna. This is a good assumption if you observe the oscilloscope screenshot shown in the previous lecture. With this background information, we are now able to calculate the output signal (ac) power P. Assuming a lossless Harmonic Filter at f<sub>rf</sub>, then in terms of the phasor antenna voltage, V: 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image5.gif"></sub>
<br>where R is the antenna input resistance (ohmic plus "radiation”). From the second term in (10.8), the amplitude of the fundamental harmonic in the output voltage is V<sub>m</sub>/2 so that
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image6.gif"></sub>
<br>We can use this equation to compute the signal power delivered to the antenna (with an input resistance of R) when driven by the Class C power amplifier in the NorCal 40A. Nice! So how can we increase the ac output power P? (This is important, after all, since this will be the power delivered to our propagating electromagnetic wave launched by the antenna.) 
<br>1. Increase the dc supply voltage V<sub>cc</sub>. We can't exceed the specs of the transistor, though, or will cause a failure. 
<br>2. Decrease R of the antenna. This has a limited effect, though, since as R ?, I<sub>0</sub> ? which implies that V <sub>on</sub>? (the saturation voltage of Q7). 
<br><b>Class C Amplifier Transistor Losses</b>
<br>It is interesting to examine the losses in the transistor. From measurements on a NorCal 40A recorded in the text on p. 185, P = 2.5 W and ? = 78 %. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image7.gif"></sub>
<br>Consequently, the difference
<br>P<sub>d</sub> = P<sub>0</sub> ? P = 3.2?2.5 = 0.7W 
<br>must be the power dissipated in the transistor, P<sub>d</sub>. This Pd has two sources: 
<br>1. The brief time when the transistor is in the active mode while the transistor is passing from the off to on states (and to a much lesser degree when passing from on to off), and
<br>2. The “on” period when the transistor is saturated. We'll carefully examine each of these sources separately. 
<br>1. Active-Period Losses. From 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image8.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image9.gif"></sub>
<br>Note that the time-varying collector voltage during the off-to-on transition is much larger than during the on-to-off transition. Also observe that this transition time is much longer. Because of these two characteristics, we'll expect the energy losses associated with the off-to-on transition to dominate. To begin, the active mode loss in Q7 occurs because of so-called “capacitive discharge” through Q7. 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image10.gif"></sub>
<br>This capacitive discharge is due to energy stored in C45 dissipating through Q7. (Note that C44 is a dc blocking capacitor; hence, the voltage drop across C44 is very small, which implies the stored energy is also small.) Additional capacitive discharge will come from Q7 itself, D12 and the RF Filter. However, all these turn out to be small wrt C45. From Fig. 10.5(a) we see that V<sub>c</sub> (= VC45) ?15 V at the beginning of the off-to-on transition. The stored energy is then
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image11.gif"></sub>
<br>At the end of the transition, 2 <sub>c</sub> V ? V so that
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image12.gif"></sub>
<br>Therefore, during this off-to-on transition, the change in the stored energy in C45 is
<br>?E<sub>c45</sub> = E<sub>1</sub> ? E<sub>2</sub> =37.1 ?10.7 =36.4 nJ
<br>The time average power dissipation a P? associated with capacitive discharge from C45 during the off-to-on transition is
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image13.gif"></sub>
<br>for a waveform of frequency f (= 7 MHz) and period T. Similarly, for the on-to-off transition
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image14.gif"></sub>
<br>The total active-mode loss (time average power) in the power amplifier transistor Q7 is then the sum of these two: 
<br>P<sub>a</sub>&#8776 P<sup>'</sup><sub>a</sub>+P<sub>a</sub><sup>"</sup>=286mW
<br>2. On-Period Losses. During the "on” period, transistor Q7 is saturated with a collector-to-emitter voltage V<sub>on</sub> The average power dissipated during this period P<sub>on</sub>on is
<br>P<sub>on</sub>=V<sub>on</sub> I<sub>on</sub>
<br>we see that V<sub>on</sub> ? 2 V. (This is a large saturation voltage compared with the 0.2 V we're accustomed to. Why is V<sub>on</sub> so large here?) 
<br>To calculate I<sub>on</sub> use KCL: 
<br>I<sub>c</sub> = I<sub>on</sub> ? I<sub>0</sub>
<br>where Io is the average(dc) current from the power supply (measured to be 250 mA) and I<sub>c</sub> is the average capacitive discharge current through Q7. For the off-to-on transition, a stored charge Q is "released.” 
<br>With Q = CV , then ?Q = C?V so that
<br>?Q? = C45??V = 330x10<sup>?12</sup> (15 ? 2) = 4.3 nC
<br>Similarly, for the on-to-off transition, 
<br>?Q?? = C45??V = 330x10<sup>?12</sup> (6 ? 3) =1.0 nC
<br>Therefore, ?Q = ?Q? + ?Q?? = 5.3 nC
<br>This discharge of stored charge in Q7 produces the time dependent collector current
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image15.gif"></sub>
<br>For our dissipated power calculation, we're only interested in the average current associated with this discharge. Using (1), we can approximate this average current as
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image16.gif"></sub>
<br>Therefore, the total power dissipated in Q7 during the "on” periods is The total power dissipated by the transistor Q7 is the sum of these two powers (note that no power is dissipated when Q7 is cutoff): 
<br>P<sub>d</sub>=P<sub>a</sub>+P<sub>on</sub>=286+430=712mW
<br>Observe that this calculated power dissipation in Q7 is quite close to the measured value of 700 mW calculated in (10.10) at the beginning of this discussion. Fig. 10.6 contains a diagram of the power flow in the NorCal 40A Power Amplifier. 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image17.gif"></sub>
<br><b>Thermal Modeling</b>
<br>Power amplifiers often heat up due to the relatively high voltages and currents at which they operate. While this is wasted energy, it is something that often cannot be avoided. At high temperatures T, solid-state transistors are more likely to fail. It is important to design a heat transfer system (fins, fans, etc.) so that T remains below the maximum rating specified by the transistor manufacturer. 
<br>Here we will develop a simple heat transfer model for the transistor, the package and the fins in order to model the transient heat transfer from the transistor to surrounding air. 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image18.gif"></sub>
<br>There are two important properties of materials that are necessary to describe this heat transfer: Thermal resistance, R<sub>t</sub>
<br>1. : This material property is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image19.gif"></sub>
<br>From this expression, we deduce that the dissipated power Pd
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image20.gif"></sub>
<br>is the rate at which heat (energy) is transferred from a body at temperature T to the ambient air at temperature To. Note that for a fixed ?T, as R<sub>t</sub>?, Pd ? , and vice versa. 
<br>2. Thermal capacitance, Ct: This material property is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image21.gif"></sub>
<br>Thermal capacitance is the ratio of the heat Q supplied to a body in any process that creates a temperature change ?T. From (2) and dividing by ?t
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image22.gif"></sub>
<br>Taking the limit of this equation as ?t vanishes
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image23.gif"></sub>
<br>Equations (10.41) and (10.42) are the fundamental governing equations for our simplified transistor heating problem. To help solve such heat transfer problems, it's sometimes useful to apply an electrical circuit analogy. In this analogy, electrical circuit and heat transfer quantities are interchanged as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image24.gif"></sub>
<br>Applying this analogy, then (10.41) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image25.gif"></sub>
<br>and (10.42) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image26.gif"></sub>
<br>Both of these electrical circuit equations are very familiar to you. Based on this analogy, we can quickly construct an equivalent thermal circuit model for the transistor, package and fin as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image27.gif"></sub>
<br>R<sub>j</sub> is the thermal resistance of the transistor-to-package interface. You often find this quantity specified by the manufacturer in the transistor datasheet. Our goal here is to find equations for the heat sink temperature T(t) and the transistor temperature T<sub>j</sub>(t) as functions of time t. From "KCL” at node T in the thermal circuit above: 
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image28.gif"></sub>
<br>Rearranging this equation we find
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image29.gif"></sub>
<br>This is a simple 1-D ordinary differential equation. The solution Is
<br>T(t)=T<sub>on</sub>-P<sub>d</sub>R<sub>1</sub>e<sup>-t/r</sup>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image30.gif"></sub>
<br>The behavior of this thermal circuit (and, consequently, the physical heat transfer phenomenon) is just like a single time constant electrical circuit. Very "cool”! It turns out that such analogies between electrical and mechanical systems are not uncommon. In Prob. 25, you will model and measure the thermal characteristics of the power amplifier with its attached heat sink. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW </b><b>THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>8707
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>13422
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>7501
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>7255
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>7281
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>19092
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>9455
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>14003
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br>12727
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image31.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/norcal_40a_power_amplifier_thermal_modeling.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image33.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image33.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image33.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image33.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image33.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_norcal_40a_power_amplifier_thermal_modeling/image32.wmf"></sub>
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
