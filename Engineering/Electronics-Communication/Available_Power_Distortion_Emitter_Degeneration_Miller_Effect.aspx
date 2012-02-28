<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Available_Power_Distortion_Emitter_Degeneration_Miller_Effect.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Available_Power_Distortion_Emitter_Degeneration_Miller_Effect" %>
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
	<b>Available Power Distortion Emitter Degeneration Miller Effect</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Available Power Distortion Emitter Degeneration Miller Effect</b>
<br>While the efficiency of an amplifier, as discussed in the previous lecture, is an important quality, so is the gain of the amplifier. Transducer gain, which we simply call Gain, G, is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image1.gif"></sub>
<br>as we've seen previously. With transistor amplifiers, we want to characterize the gain of an ac input signal as in the following circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image2.gif"></sub>
<br>Consequently for this amplifier, the numerator in (1.22) is the ac output power P = VI<sub>p</sub>/2. With V<sub>p</sub> = V<sub>pp</sub>/2 and I<sub>p</sub> = I<sub>pp</sub>/2, then
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image3.gif"></sub>
<br>Now, what about the “input” power for (1.22)? For this amplifier, we're only interested in the ac signal. The maximum ac power possible from the source Vo with a matched load as in
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image4.gif"></sub>
<br>is the available power P+ given by
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image5.gif"></sub>
<br>In other words, how well the amplifier and load are matched to the source dictates how much power is "available,” i.e., input to the amplifier. Recall that the displayed voltage on an AWG with a matched load is V<sub>+p</sub> V<sub>0</sub>/2 (where p indicates peak). Therefore, V<sub>+pp</sub>= V-p V<sub>0</sub> which yields
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image6.gif"></sub>
<br>where pp V+ is the displayed peak-to-peak voltage on the AWG. In summary, the ac gain of an amplifier in (1.22) contains the ratio of two power terms. The ac output power to a resistive load in (9.14) forms the numerator. The denominator can be defined a number of ways. Here we have chosen a conservative measure: the available power from the source, given in (9.16). 
<br><b>Distortion</b>
<br>You will most likely discover in Prob. 21 (Driver Amplifier) that when the input voltage amplitude becomes too large, the output voltage waveform will be distorted. An example is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image7.gif"></sub>
<br>Recall that the Driver Amplifier is (almost) a CE amplifier with a transformer coupled resistive load: 
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image8.gif"></sub>
<br>The slight nonlinear behavior of V<sub>c</sub> in Fig. 9.6a is due to the base-emitter diode. As illustrated in
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image9.gif"></sub>
<br>The distortion in Fig. 9.7b is due to the nonlinear behavior of the base-emitter junction at large signals (not because of the base resistance as stated in the text). Other distortions you may encounter are illustrated in
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image10.gif"></sub>
<br>In (a) the distortion is caused by improper input biasing, while in the (b) the distortion is from an input amplitude that is too large. (You should understand what is happening with the transistor to cause these distortions.) 
<br><b>Emitter Degeneration</b>
<br>The CE amplifiers we've considered have all had the emitter tied directly to ground. Notice that the Driver Amplifier has the additional resistance R12+R13 connected to the emitter (and eventually to ground through Key Jack J3 when transmitting). Adding an emitter resistance is called emitter degeneration. This addition has two very important and desirable effects: 
<br>1. Simpler and more reliable bias (dc), 
<br>2. Simpler and more reliable gain (ac). 
<br>Let's consider each of these points individually: 1. Bias (dc) – assuming an active transistor, then using KVL from V<sub>b</sub> through Re to ground gives V<sub>b</sub> = I<sub>b</sub>R<sub>b</sub> +V<sub>f</sub> + I<sub>e</sub>R<sub>e</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image11.gif"></sub>
<br>With I<sub>c</sub> ? I<sub>e</sub> then, V<sub>b</sub> ? I<sub>b</sub> R<sub>b</sub> +V<sub>f</sub> We will choose V<sub>b</sub> with some I<sub>c</sub> bias in mind ( I<sub>c</sub> = ? I<sub>b</sub> ). 
<br>There are two cases to consider here: 
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image12.gif"></sub>(a) Re = 0: 
<br>Here we see that the bias current Ic will depend on the transistor ?. This is not a good design since ? can vary considerably among transistors. 
<br>(b) R<sub>e</sub> ? 0: V<sub>b</sub> ? I<sub>b</sub> R<sub>b</sub> f c e +V<sub>f</sub> + I <sub>c</sub>R<sub>R</sub>
<br>The first term is usually small wrt the third term. This leaves us with
<br>V <sub>b</sub>?V<sub>f</sub> + I<sub>c</sub> R<sub>c</sub>
<br>This is a good design since we can set V<sub>b</sub> for a desired I<sub>c</sub> without explicitly considering the transistor ?. 
<br>2. Gain, G - To determine ac gain we use a small signal model of the BJT in the circuit shown above
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image13.gif"></sub>
<br>Note that we've chosen R<sub>b</sub> = 0. Using KVL in the base and emitter circuit gives
<br>v<sub>i</sub> = i<sub>b</sub>r<sub>b</sub> + i<sub>e</sub>R
<br>With i<sub>b</sub> r<sub>b</sub> small and i<sub>e</sub> ? i<sub>c</sub> then
<br>v ? i R
<br>In the collector arm, 
<br>v = ?i R 
<br>Dividing (9.30) by (9.29) gives the small-signal ac gain Gv of this common-emitter amplifier to be
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image14.gif"></sub>
<br>Notice that this gain depends only on the external resistors connected to this circuit and not on ?. Hence, we can easily control G<sub>v</sub> by changing R<sub>G</sub> and R<sub>e</sub>. Nice design! 
<br><b>Input and Output Impedance. Miller Effect.</b>
<br>The last topics we will consider in this lecture are the determination of the ac input and output impedances of this CE amplifier. It is important to know these values to properly match sources and loads to the amplifier. 
<br>1. AC Input Impedance of the CE Amplifier with Emitter Degeneration. 
<br>Referring to Fig. 9.9a again, the ac input impedance is defined As
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image15.gif"></sub>
<br>Using (9.29) and i<sub>c</sub> = ?i<sub>b</sub> gives
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image16.gif"></sub>
<br>Notice that i Z is the product of two large numbers. Consequently, the ac input impedance could potentially be very large, which is desirable in certain circumstances. However, you will see in Prob. 22 that this high input impedance is often not observed because of the so-called Miller capacitance effect. 
<br>To understand this effect, we construct the small signal model of a CE amplifier and include the base-to-collector capacitance: 
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image17.gif"></sub>
<br>This b-to-c capacitance arises due to charge separation at the CBJ. Other junction capacitances are also present in the transistor, but are not manifest at the "lower” frequencies of interest here. 
<br>While Cm, the Miller capacitance, is usually quite small (a few pF), its effect on the circuit is magnified because of its direct connection from the output to input terminals of this amplifier with high gain. Let's now re-derive the input impedance while accounting for this Miller capacitance. Referring to the figure above, the capacitor current is
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image18.gif"></sub>
<br>From (9.31) we know that
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image19.gif"></sub>
<br>Substituting this into (9.35) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image20.gif"></sub>
<br>We see from this expression that the effects of the capacitance Cm are magnified by the gain of the amplifier! This is the socalled Miller effect. Therefore, considering this Miller effect the input impedance of the CE amplifier will be ?R<sub>e</sub> in parallel with the effective input capacitance from (1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image21.gif"></sub>
<br>This has the effect of reducing the input impedance magnitude from the huge value of ?R<sub>e</sub>.
<br>2. AC Output Impedance of the CE Amplifier with Emitter Degeneration. 
<br>As shown in the text, the output impedance of a CE amplifier with emitter degeneration is given by the approximate expression
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image22.gif"></sub>
<br>Rs is the source resistance and zc is the collector impedance
<br>z<sub>c</sub>= r<sub>c</sub>|| Z<sub>c</sub>= r<sub>C</sub>||( j?C<sub>C</sub>)<sup>-1</sup>
<br>This collector impedance is the parallel combination of the finite output resistance r<sub>C</sub> of the BJT (from the Early effect illustrated in Fig. 9.10) and the finite output capacitance of the BJT, labeled Cc in the text. The output impedance Z<sub>0</sub> in (9.46) is often very large for CE amplifiers with emitter degeneration, which makes for a good current source. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
	<br>13469
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
	<br>7301
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/available_power_distortion_emitter_degeneration_miller_effect.aspx"></asp:HyperLink> 
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
	<br>15316
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image25.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_available_power_distortion_emitter_degeneration_miller_effect/image25.wmf"></sub>
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
