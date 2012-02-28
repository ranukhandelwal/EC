<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Common_Emitter_Amplifier_Maximum_Efficiency.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Common_Emitter_Amplifier_Maximum_Efficiency" %>
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
	<b>Common Emitter Amplifier Maximum Efficiency of Class A Amplifiers </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Common Emitter Amplifier Maximum </b>
<br><b>Efficiency of Class A Amplifiers </b>
<br><b>Transformer Coupled Loads</b>
<br>We discussed using transistors as switches in the last lecture. Amplifiers are another extremely important use for transistors. Two types of transistor amplifiers are used in the NorCal 40A: 
<br>1. Linear amplifier – Called a "class A” amplifier. The output signal is a very close replica of the input signal shape. In other words, the output is simply a scaled version of the input. The Driver Amplifier (Q6) is an example. 
<br>2. Saturating amplifier – The shape of the output signal may be very different from the input. Between these two waveforms, perhaps only the frequency is the same. Additional "signal conditioning” is usually incorporated. The Power Amplifier (Q7) is an example. Saturating amplifiers are often much more efficient than linear amplifiers in converting power from the dc source to the signal ac (i.e., RF). The tradeoff is distortion in the amplified signal. 
<br><b>Common Emitter (CE) Amplifier</b>
<br>An example of what can be a linear amplifier is the common emitter amplifier shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image1.gif"></sub>
<br>We will restrict ourselves for the time being to circuits of this type when Q remains entirely in the active region. Note that V <sub>bb</sub> 
<br>is the input bias (i.e, dc) voltage used to set this operational condition. 
<br>Let's now develop a qualitative understanding of this amplifier. Assume that the input voltage Vo is proportional to cos(?t ): 
<br>1. As Vo ?, Ib ? which implies I<sub>c</sub>( = ?I<sub>b</sub>) ?. Hence, V <sub>c</sub> ?. The maximum V <sub>c</sub> will be just below V <sub>cc</sub> . 
<br>2. Conversely, as Vo ?, I <sub>b</sub> ? which implies I<sub>c</sub> =(?I<sub>b</sub>) ?. Hence, V <sub>c</sub> ?. The minimum V <sub>c</sub> will be just above 0 and before Q saturates. (Actually, this minimum V will be quite a bit above saturation since we will see distortion in V <sub>c</sub> as Q approaches saturation, even though it's not “technically” saturated.) From this discussion we can sketch these voltages and the collector current. Since Vo and Vc are 180º out of phase: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image2.gif"></sub>
<br>and with Ic and Vc also 180&#176; out of phase
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image3.gif"></sub>
<br>A good question to ask yourself at this point is "Just how does a transistor circuit actually amplify the input signal?” 
<br><b>Maximum Efficiency of Class A Amplifiers</b>
<br>As mentioned at the beginning of this lecture, the class A (or linear) amplifier produces as an output signal that is simply a scaled version of the input. We stated that this amplifier is not as efficient as others. We will now compute this efficiency to (1) understand what "efficiency” means, and (2) compare this efficiency with other amplifier types. The efficiency ? of the amplifier is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image4.gif"></sub>
<br>where P is the RMS (ac) output power and Po is the dc supply power. We'll separately compute expressions for each of these terms: 
<br>1. Po – this is the power supplied by the dc source. We'll ignore the power consumed in the base circuit of because it will often be small compared to the power consumed in the collector circuit. Consequently, 
<br>P <sub>0</sub> =V <sub>cc</sub> I <sub>0</sub> 
<br>Here, V <sub>cc</sub> is the dc supply voltage, but what is Io? This is a bit tricky. From the last figure, note that I <sub>c</sub> is comprised of two parts: 
<br>(a) dc component, and
<br>(b) ac component. 
<br>The ac component is useful as an amplified version of the input signal Vo. However, it is the time average value of Ic which is the needed dc current I <sub>0</sub> in the calculation of
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image5.gif"></sub>
<br>This is the maximum dc power supplied by the bias. 
<br>2. P - this is the RMS power supplied by the ac part of Vc (and Ic). For sinusoidal voltages and currents with peak-topeak amplitudes V <sub>pp</sub> and I <sub>pp</sub> respectively, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image6.gif"></sub>
<br>is the RMS (effective) ac output power. In the case here for maximum output voltage and current 
<br>V <sub>pp</sub>=V<sub>cc</sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image7.gif"></sub>
<br>So that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image8.gif"></sub>
<br>Now, substituting (9.5) and (9.4) into (9.1) we have
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image9.gif"></sub>
<br>This ? = 25% is the maximum efficiency of a class A (linear) amplifier connected to a purely resistive load. (Why is this the maximum value?) Practically speaking, it is unusual to operate an amplifier at its maximum output voltage. Consequently, the usual efficiencies observed for class A amplifiers range from 10% to 20%. This also helps to keep the signal distortion low. Class A amplifiers are notoriously inefficient, but they can be very, very linear. 
<br><b>Power Flow in Class A Amplifiers with Resistive Loads</b>
<br>It is extremely insightful to calculate the “flow of power” in this amplifier, beginning from the dc source to the ac power (signal power) delivered to the resistive load. Specifically, power flows from the dc source to both the load and transistor in the form of dc power and ac power (again, ignoring the base circuit). Let's calculate the maximum of all four of these quantities separately: 
<br>(a) DC load power. This is due to the time average values of V and I in R and has nothing to due with the time varying component. From Fig. 9.2b
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image10.gif"></sub>
<br>(b) AC load power. We computed this earlier
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image11.gif"></sub>
<br>(b) AC load power. We computed this earlier
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image12.gif"></sub>
<br>(c) DC transistor power. P <sub>tdc</sub> can easily be computed by noting that in this CE configuration (Fig. 9.2a), the average V and I across and through Q are the same as for the resistor R. In other words, the dc powers are the same for these two components: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image13.gif"></sub>
<br>(d) AC transistor power. This power is given by the usual Expression
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image14.gif"></sub>
<br>Interestingly, since V <sub>c</sub> and I <sub>c</sub> 180&#176; out of phase this ac power will be negative: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image15.gif"></sub>
<br>What does this minus sign mean? Q produces the ac power for the load! Cool. These results from (a) through (d) can be arranged pictorially as shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image16.gif"></sub>
<br><b>Class A Amplifier with Transformer Coupled Load</b>
<br>As mentioned in the text, there are two major disadvantages of class A amplifiers with resistive loads: 
<br>1. Half of the power from the supply is consumed as dc power in the load resistor. 
<br>2. Some types of loads cannot be connected to this amplifier. For example, a second amplifying stage would have the base of the transistor connected where R is located. The ac voltage would be excessively large for direct connection (typically want ac voltages from 10 - 100 mV or so). An interesting variation of the class A amplifier and one that removes both of these problems is to use a transformer coupled load as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image17.gif"></sub>
<br>The Driver Amplifier (Q6) in the NorCal 40A is an example of such a class A amplifier with transformer load. From this circuit, we can see immediately that there will no longer be any dc power consumed in R since dc does not couple through transformers. 
<br>Next, notice that the dc resistance between V <sub>cc</sub> and Q is (nearly) zero so that the average collector voltage V <sub>c</sub> will then be V <sub>cc</sub> , not V <sub>cc</sub> /2 as before. This is very important to understand! (We will see this again later in connection with "RF chokes.”) With the transformer-coupled load, the maximum V <sub>c</sub> and I <sub>L</sub> are now twice as large as with a resistive load: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image18.gif"></sub>
<br>Let's evaluate the efficiency of this new design. First, the maximum dc supplied power Po is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image19.gif"></sub>
<br>where R<sup>?</sup> is the effective load resistance due to T given as R? = n2R and n is the turns ratio N <sub>p</sub> /N <sub>s</sub> Next, the maximum ac (RMS) output power is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image20.gif"></sub>
<br>But
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image21.gif"></sub>
<br>And
<br>V<sub>pp</sub> = 2V<sub>cc</sub>
<br>Notice that V <sub>pp</sub> is now twice V <sub>cc</sub> . The ac output power is then
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image22.gif"></sub>
<br>Using (9.9) and (9.11) we find that the maximum efficiency is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image23.gif"></sub>
<br>In other words, the maximum efficiency of the class A amplifier with transformer coupled resistive load is ? = 50%. This is twice the efficiency of a class A amplifier with a resistive load. This doubling of efficiency makes sense since we've eliminated the dc power to the resistive load. (See the power flow diagram.) 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier_maximum_efficiency.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier_maximum_efficiency/image25.wmf"></sub>
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
