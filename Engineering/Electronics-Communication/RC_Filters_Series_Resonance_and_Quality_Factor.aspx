<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="RC_Filters_Series_Resonance_and_Quality_Factor.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.RC_Filters_Series_Resonance_and_Quality_Factor" %>
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
	<b>RC Filters Series Resonance and Quality Factor</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>RC Filters. Series Resonance and Quality Factor. Matching. Soldering.</b>
<br>Review the following sections in your text: 
<br>1. Section 3.1 - Complex Numbers. 
<br>2. Section 3.2 - Exponential Function. 
<br>3. Section 3.3 - Phasors. 
<br>4. Section 3.4 - Impedance. 
<br><b>RC Filters</b>
<br>The sinusoidal steady state (aka time harmonic) is an extremely useful domain to work in. This is especially true for linear, analog electronics. 
<br>Advantages of sinusoidal steady state: 
<br>&bull; Impedance can be used, 
<br>&bull; Circuit analysis is simpler, 
<br>&bull; Characterize filters, etc. 
<br>Let's consider two examples. Both involve series connections of a resistor and a capacitor. 
<br>(1) Low pass filter 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image1.gif"></sub>
<br>As the frequency of the input sinusoidal voltage changes, the magnitude (and phase) of the output voltage changes. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image2.gif"></sub>
<br>A low pass filter is used in the NorCal 40A near the transmitter output (which is also the receiver input). This low pass filter is called the Harmonic Filter, but it is not constructed from R and C elements. It uses L and C elements instead (see Ch. 5). From the above circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image3.gif"></sub>
<br>With ? = RC, then
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image4.gif"></sub>
<br>Now, the cutoff frequency ?c of a low- (or high-) pass filter occurs when 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image5.gif"></sub>
<br>This is also called the half-power frequency, for obvious reasons. From the denominator of (3.74), we see that ?c is 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image6.gif"></sub>
<br>Note these two special regions of operation for the low-pass filter: 
<br>(a) Low f, where f&lt;&lt; f<sub>c</sub> . From (3.74), V ?V<sub>i</sub> , 
<br>(b) High f, where f&lt;&lt; f<sub>c</sub> . From (3.74), V ?V<sub>i</sub>/j??. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image7.gif"></sub>
<br>The frequency response of this filter is shown below
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image8.gif"></sub>
<br>There are no high pass filters in the NorCal 40A, to the best of my knowledge. From the above circuit, we can easily determine that
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image9.gif"></sub>
<br>In the two special regions of operation for the high-pass filter: 
<br>(a) Low f, where f &lt;&lt; f<sub>c</sub> , V ? j??V<sub>i</sub> , 
<br>(b) High f, where f&lt;&lt; f<sub>c</sub> , V ?V<sub>i</sub> . 
<br><b>Series Resonant Circuits</b>
<br>In addition to the low pass filter, another very common type of filter in communications electronics is the bandpass filter. (The opposite is the bandstop, or "notch,” filter.) The series RLC circuit in Fig. 3.6 is one example of a bandpass filter. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image10.gif"></sub>
<br>In the frequency domain (sinusoidal steady state) 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image11.gif"></sub>
<br>In the denominator X =? L ?1/?C is the sum of the (signed) reactances in the circuit. Notice that at
<br>(i) low f, X is large due to the capacitive reactance, 
<br>(ii) high f, X is again large, but now due to the inductive reactance. 
<br>In either case, V in (1) will be small due to this large impedance. However, in-between these extremes X can be small. In fact, X becomes zero at the special frequency ?<sub>0</sub> = 2? f<sub>0</sub> , which we can find as
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image12.gif"></sub>
<br>This frequency f0 is called the resonant frequency At the resonant frequency f0, from (1) we find that
<br>V =Vi
<br>Note that this is true regardless of R. (Interesting.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image13.gif"></sub>
<br>Away from f0, X increases and V drops. There are two frequencies on either side of f0 where the reactance magnitude X equals the resistance R in the circuit. These frequencies fu and fl are the upper and lower half-power frequencies, as shown in the figure above. 
<br>The ratio of the reactance of L or C at the resonance frequency to the resistance in a series resonant circuit is called the Quality Factor Qs (see p. 60 of the text): 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image14.gif"></sub>
<br>Also, as we've discussed in a previous lecture, 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image15.gif"></sub>
<br>That is, Q is the ratio of the resonant frequency divided by the 3- dB frequency bandwidth. A series RLC circuit is used as the RF Filter in the NorCal 40A. (See Fig. 1.13 and the circuit on the front flap.) You'll start the construction of this filter in Prob. 8. Recall that in a superhet receiver, the Q of this filter doesn't need to be all that large to reject the VFO image (see Figs. 1.11 and 1.12). The Q of discrete RLC circuits is typically less than 100. Remarkably, the Q of quartz crystals is on the order of 100,000. This is the “unloaded” Q, meaning the crystal is not connected to other circuit components. 
<br><b>Reactive-Element Voltages in Resonant Circuits</b>
<br>It is very interesting to examine the voltages across reactive elements in a resonant circuit near the resonance frequency. For the sake of this investigation, we'll again look at a series resonant circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image16.gif"></sub>
<br>The voltage across the capacitor is
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image17.gif"></sub>
<br>At the resonance frequency ? =?<sub>0</sub> the sum of the L and C impedances are
<br>J?<sub>0</sub> L +1 j?<sub>0</sub> C = 0
<br>Substituting this into (7) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image18.gif"></sub>
<br>Using the definition of Qs in (6) for this series resonant circuit, (8) can be expressed as
<br>V<sub>c</sub>|<sub> ?</sub> =-jQ<sub>s</sub>V<sub>in</sub>
<br>In a resonant circuit with 1 s Q &gt; , we can see from (9) that the voltage across the capacitor will be larger than the input voltage! In a high-Q circuit, this voltage can become very large. Consequently, the reactive components in high-Q circuits must be selected to withstand this voltage without damage. 
<br>We can use (9) as an alternative definition of Q. That is, Qs is the ratio of the capacitor and source voltage magnitudes at the resonant frequency. Further, since
<br>V<sub>L</sub>| <sub>?</sub>=- V<sub>c</sub>| <sub>?</sub> 
<br>then Qs is also the ratio of the inductor and source voltage magnitudes at the resonant frequency. Lastly, it is curious to note that because of (10), V1 in the above circuit equals zero at the resonant frequency
<br><b>Matching Networks</b>
<br>As mentioned on p. 66 of the text, it is useful to design amplifiers with low output impedance. Why? Consider this simple circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image19.gif"></sub>
<br>With
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image20.gif"></sub>
<br>Then
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image21.gif"></sub>
<br>Now, note that if R <sub>s</sub>&lt;&lt; R<sub>L</sub> , then
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image22.gif"></sub>
<br>Very interesting. We see here that if the "output” resistance (the "look back” resistance) is small wrt the load, then the output power is inversely proportional to RL. 
<br>What's the consequence of this? If Pout = 1 W with RL = 50 ?, for example, then we would expect to increase Pout to 10 W by lowering RL to 5 ?. This would only be true if R<sub>s</sub>&lt;&lt;5 ?. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image23.gif"></sub>
<br>A matching network is used to transform an impedance from one value to another. One use of such a network would be to lower the impedance seen by an amplifier for increased output power. Matching networks have many applications, many of which revolve around impedance matching. A simple L-matching network is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image24.gif"></sub>
<br>This network is used in Prob. 14 for impedance matching between the IF Filter and Product Detector. A disadvantage to this type of matching network is that is narrow banded. That is, it works well only within a small frequency band centered at the design frequency of the matching network. 
<br>In Prob. 7, you will develop important equations that allow you to transform a two-element parallel circuit to an equivalent series one. You will use this later in the course. As discussed in Prob. 7, you can use Q as a tool in this derivation. (Actually, I did not approach the problem this way, though the Q's will end up being equal.) 
<br><b>Soldering and Desoldering Tips</b>
<br>o Use the Weller soldering stations located in EP 338. 
<br>o Adjust the soldering station to 700 &#176;F. Wait for a flashing red LED before soldering. 
<br>o The iron is very hot! Be careful. 
<br>o Place the PCB in the Panavise. Solder on the bottom of the PCB. 
<br>o To solder: 
<br>o Touch the tip of the soldering iron simultaneously to the pad on the PCB and the component lead. Wait a second or two, then touch solder to the connections. The solder is thin, so you may need to melt a 1/4 inch section or so. 
<br>o Remove the solder. o Leave the iron to heat the joint for a moment or two. 
<br>o Remove the iron. 
<br>o The solder joint should be relatively shiny. 
<br>O Run the soldering tip across the wet sponge to clean it up. 
<br>O Don't leave the iron on for more than a few minutes. It will warm up quickly when you turn it back on. 
<br>o To desolder with braid, turn the board over to view the bottom. Place the braid over the joint and heat with the iron. The solder will be "soaked” up by the braid. Use needle nose pliers on the other side of the board to loosen the component. This takes practice. Trim off used braid with side cutters. (You can also use a desoldering pump.) 
<br>o Wash hands when finished to remove lead from your hands. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/rc_filters_series_resonance_and_quality_factor.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image27.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_rc_filters_series_resonance_and_quality_factor/image27.wmf"></sub>
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
