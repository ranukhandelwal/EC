<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Class_C_Power_Amplifiers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Class_C_Power_Amplifiers" %>
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
	<b>Class C Power Amplifiers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Class C Power Amplifiers</b>
<br>We discovered in Lecture 18 (Section 9.2) that the maximum efficiency of Class A amplifiers is 25% with a resistive load and 50% with a transformer-coupled resistive load. Also, Class A amplifiers dissipate energy (in the transistor) even when there is no RF output signal! (Why?) So, while the Class A amplifier can do an excellent job of producing linear amplification, it is very inefficient. In this lecture, we will discuss amplifiers with improved efficiency. 
<br><b>RF Chokes</b>
<br>To better understand at least some of these improvements, it will be useful to first examine the effects of an inductor in the collector circuit of a common emitter amplifier with a capacitively-coupled load R, as shown in the following figure. Supposing Class A operation, we can break up the analysis of this circuit into dc and ac parts, as we've done in the past with other linear amplifiers. 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image1.gif"></sub>
<br>I. DC analysis - Referring to the circuit above, note that: 
<br>?? We assume V<sub>bb</sub>was properly adjusted to place Q in theactive mode. 
<br>?? C is a dc blocking capacitor. This keeps the dc current that is biasing Q from being redirected through R. 
<br>?? L has zero (or, at least, a very small) resistance. Because L is connected from V<sub>cc</sub> to the collector, V<sub>c</sub> has a time-average value equal to V<sub>cc</sub>. (This is the same situation we saw with a transformer-coupled load in Class A amplifiers.) 
<br>II. AC analysis
<br>In the amplifier above, the inductance is chosen so that L presents a "large” impedance at the frequency of operation. Hence, this inductor is called an RF choke. Conversely, the impedance of the dc blocking capacitor C is very small at RF frequencies. Consequently, the ac small signal model for this amplifier is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image2.gif"></sub>
<br>From this small signal model, we see that the phasor collector voltage is just
<br>v = ?? i<sub>b</sub>R
<br>The total collector voltage Vc is the sum of these dc and ac components (since this is a linear circuit): 
<br>V<sub>c</sub>( t) =V<sub>dc</sub> +V <sub>ac</sub>=V<sub>cc</sub> ?? i <sub>b</sub>R cos(?t +? [V] 
<br>Shown next are two ADS simulations of this circuit. 
<br><b>Class A Power Amplifier Simulations</b>
<br>Here we are following Example 12-1.1 from Krauss, Bostian and Raab, Solid State Radio Engineering (p. 355). Q1 is biased in the active region by V1 and R3. (A parallel LC tank at the output isn't needed to suppress harmonics.) Note that with f =10 MHz, LRFC1 X = 502.7 ?, which is greater than 10?R2. 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image3.gif"></sub>
<br>The large impedance of LRFC1 at RF frequencies dictates that the average value of the collector voltage equals Vcc minus the dc voltage drop across R1. This is a new effect, different than what we've seen with other small-signal Class A amplifiers
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image4.gif"></sub>
<br>Next, we decrease LRFC1 by 100 times to 0.08 ?H. From the simulation results, we see that the average collector voltage is no longer equal to Vcc. In fact, the maximum collector voltage no longer even exceeds V<sub>cc</sub> (primarily because of the 11-? resistor R1). 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image5.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image6.gif"></sub>
<br>We see in this second example that if the choke impedance is not large, V<sub>c</sub>(t) has contributions from both R and L: 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image7.gif"></sub>
<br><b>Class C Amplifier</b>
<br>The Class A amplifier with a choke, as we just considered, is no more than 25% efficient, which is typical of all Class A amplifiers with directly-coupled resistive loads. To greatly reduce the power dissipated in the transistor, we will try operating Q outside of the active region! We could greatly increase the efficiency of such an amplifier if we incorporated the following characteristics: 
<br>1. To eliminate power dissipation when there is no input signal, we will leave Q unbiased. 
<br>2. When "on” we will drive Q all the way into saturation. This helps reduce the power consumed in Q since V<sub>CE sat</sub>, is low (? 0.1? 0.2 V). 
<br>This is a cool idea, but unfortunately, it is very nonlinear. In the NorCal 40A, however, we don't actually need a linear amplifier. A filtered output will work just as well. Recall that a CW signal is simply a tone (of a specified frequency) when transmitting, and no signal when not transmitting. 
<br>One example of an amplifier with a choke in the collector lead is the Class C amplifier, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image8.gif"></sub>
<br>The example below contains a simulation of this amplifier as well as actual measurements from Prob. 24. 
<br><b>Class C Power Amplifier Simulations</b>
<br>Shown here is a simulation of the Class C power amplifier in the NorCal 40A. At this point, stop and ask yourself, "What do I expect the collector voltage to look like?” It turns out that this is difficult to answer since Class C is a highly nonlinear amplifier
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image9.gif"></sub>
<br>Because this is a highly nonlinear problem: 
<br>?? We can't use superposition of dc and ac solutions, and
<br>?? We can't use a small signal model of the transistor. 
<br>So, simulation is probably our best approach to solving this problem. (Note that a 2N2222 transistor is used in this simulation rather than a 2SC799 or 2N3553. The later doesn't work correctly in ADS for some unknown reason. You can't always believe the results from simulation packages!) Nevertheless, we can use fundamental knowledge about key sections of this amplifier to understand how it should behave, and to develop approximate analytical formulas for its design. We'll take a closer look at this shortly. In Fig. 10.3(b), the text models the collector voltage as roughly a half-sinusoid. (It's not clear why, though, at that point in the text.) Here are the results from ADS simulation: 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image10.gif"></sub>
<br>It is apparent that the collector voltage Vc is a much more complicated waveform than in a Class A amplifier, when both are excited by a sinusoid. We see in these results that: 
<br>(1.) Vc is approximately a half sinusoid when Q is "off” (cutoff), 
<br>(2.) Vc is approximately zero when Q is "on” (saturated), and
<br>(3.) The base voltage Vin mirrors the input voltage when Q is "off” but is approximately constant at 0.5 V when Q is "on.” Both of these results make sense. 
<br>Measurement of the collector voltage from Q7 in the NorCal 40A is shown below. The measured collector voltage waveform is closer to a half-sinusoid than in the simulation shown above. The specific transistor has a big effect on the collector voltage, as it will in simulation. 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image11.gif"></sub>
<br>Notice that the output voltage Vout is nearly a perfect sinusoid with a frequency equal to the source! The Harmonic Filter circuit has filtered out all of the "higher-ordered harmonics” and has left this nice sinusoidal voltage at the antenna input. Very, very cool! 
<br>Now, let's try to understand why the collector voltage has such a complicated shape. It's actually due to inductive kick and ringing, like you observed in Probs. 5 and 6! If the period were longer, the collector voltage might appear as
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image12.gif"></sub>
<br><b>Maximum Efficiency of the Class C Power Amplifier</b>
<br>The text shows a simplified "phenomenological” model of this amplifier in Fig. 10.3(a). The collector voltage V<sub>c</sub>(t) (= V<sub>s</sub> in Fig.10.3) and current are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image13.gif"></sub>
<br>According to this model
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image14.gif"></sub>
<br>A key point is that the time average value of the collector voltage V<sub>c</sub>(t) must equal V<sub>cc</sub> since RFC has zero resistance: 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image15.gif"></sub>
<br>We saw this effect earlier. If Von is small with respect to V<sub>m</sub>, then
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image16.gif"></sub>
<br>Therefore, 
<br>V<sub>m</sub>=&pi;(V<sub>cc</sub>-V<sub>on</sub>)[V] 
<br>For example, with V<sub>cc</sub> =12.8 V and if V<sub>on</sub> = 2.6 V, then V<sub>m</sub> = 32.0V. This compares well with the data shown earlier: V<sub>m</sub> = 31.6V from the ADS simulation and 33.2 V from my NorCal 40A measurements.The dc power supplied by the source is 
<br>The dc power supplied by the source is P<sub>0</sub> =V<sub>cc</sub> I <sub>0</sub> where I<sub>0</sub> is the time average current from the supply. Now, due to the blocking capacitor this same Io flows through Q. If we assume Q is never active, then V<sub>c</sub> =V<sub>ce sat </sub>=V<sub>on</sub> such that
<br>P<sub>d</sub> =V<sub>on</sub> I <sub>0</sub>
<br>where Pd is the power dissipated in Q. (We're neglecting the power dissipated in the brief instant when Q is active as it transitions from saturation to cutoff, and vice versa.) The remaining power must be dissipated in the load R as signal power, P: 
<br>P = P<sub>0</sub> ? P<sub>d</sub> =V<sub>cc</sub> I <sub>0</sub>?V<sub>on</sub> I<sub>0</sub> = (V <sub>cc</sub>?V<sub>on</sub>) I<sub>0</sub> 
<br>Consequently, the maximum efficiency <sub>max</sub>of this Class C amplifier is approximately
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image17.gif"></sub>
<br>Using V<sub>on</sub> = 2.6 V from the previous page, 
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image18.gif"></sub>
<br>This value of ?<sub>max</sub> should be pretty close to your measured ?<sub>max</sub>.Lastly, where did this mysterious V<sub>on</sub> = 2.6 V come from? I obtained this value from (10.3) using ADS and experiment. It was not analytically derived. This value is reasonable given the collector voltage measurement shown earlier. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>6861
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7641
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7501
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>8747
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>13468
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7548
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7300
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7320
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>19143
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>9504
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>14074
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>12774
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/class_c_power_amplifiers.aspx"></asp:HyperLink> 
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
	<br>15315
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image21.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_class_c_power_amplifiers/image21.wmf"></sub>
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
