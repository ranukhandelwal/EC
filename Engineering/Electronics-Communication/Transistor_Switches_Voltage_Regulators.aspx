<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Transistor_Switches_Voltage_Regulators.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transistor_Switches_Voltage_Regulators" %>
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
	<b>Transistor Switches Voltage Regulators</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transistor Switches Voltage Regulators</b>
<br>Of the four regions for transistor operation discussed in the last lecture, only cutoff and saturation play important roles when the transistor is used as a switch. In the NorCal 40A, Q1 is used as an npn transistor switch in the Receiver (RX) Switch circuit. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image1.gif"></sub>
<br>The operation of the RX Switch can be summarized in two steps: 
<br>1. When the key is "up,” the transmitter is off so 8V TX = 0. Consequently, IB = 0 and Q1 is "off,” i.e., in the cutoff mode where IC = 0. Current through C1 continues to L1 since the switch Q1 is "off.” 
<br>2. When the key is "down,” the transmitter is on so 8V TX ? 8 V. In this state, we want Q1 to be completely saturated so the resistance seen from collector to emitter ? Rs ? 0. This state is achieved when IB and IC are large enough to not only forward bias the EBJ, but also the CBJ. This is called saturation. When saturated, R<sub>s</sub> ? 2? for the 2N4124 used in the RX Switch. Furthermore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image2.gif"></sub>
<br>Consequently, Rs is very small wrt XC1 and XL1. Therefore, Q1 operates as an effective short to ground. (This is necessary to keep the transmitted signal from entering the receiver circuit when the NorCal 40A is transmitting.) The actual value of the saturation resistance Rs is highly dependent on IB. See Fig. 8.6 of the text for measured values from the 2N4124. 
<br><b>pnp Transistor Switches</b>
<br>The npn transistor makes a good short-to-ground switch. The pnp BJT is also used as a transistor switch, but often to connect a voltage source to a load. In the NorCal 40A, an example of this type of switch is the Transmitter (TX) Switch
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image3.gif"></sub>
<br>The operation of the TX Switch can be summarized in two steps: 
<br>1. With the key up, Keyline is open circuited and C57 is fully charged to 8 V through R24. Hence, IB = 0 and Q4 is cutoff. Therefore, VC = 0 and the transmitter circuitry is not energized. 
<br>2. With the key down, Keyline is short circuited to ground and C57 discharges through D11 (down to the forward bias voltage of D11). Current flows in R9 and IB. We design this circuit so that IB is large enough to saturate
<br>Q4. Then, with V<sub>vc</sub>|<sub>sat</sub> ?0.2 V, V<sub>c</sub> ?7.8 V and the transmitter circuitry is energized. In this state (key down), we have successfully connected a voltage source to a load. 
<br><b>Design of the Transmitter Switch</b>
<br>Our task now is to design the Transmitter Switch circuit to completely saturate Q4 when the key is down. To do this, use Fig. 14 of the 2N3906 datasheet (p. 377). This figure shows VCE vs. IB for families of IC. First, let's estimate IC when Q4 is saturated: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image4.gif"></sub>
<br>From this circuit, of the datasheet you'll find an IC = 10 mA curve. In our circuit, IC will be no larger than this. Hence, from this IC = 10 mA curve: V <sub>vc</sub>=0.2 V with I<sub>B</sub> ?140 ?A. Consequently, we need to design the TX Switch circuit so that at key down, I<sub>B</sub> ?140?A. Note that for this IB and with IC &lt; 10 mA (say 7 mA as we have estimated), then Q4 is driven "deeper” into saturation. So we have a built-in safety factor using the IC = 10 mA curve in the data sheet. When Q4 is saturated, IC = ? IB . Rather, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image5.gif"></sub>
<br>?min is specified in transistor data sheets. This is one way to test if a transistor is saturated. You'll complete this design and measure the results in Prob. 20. 
<br><b>Keying Relay</b>
<br>In order to make time constant and other measurements in Probs. 20, 25, and 30, you'll need to turn the key on and off relatively quickly and repeatedly. In these problems, you will use an electromechanical relay since turning the key on and off by hand will not be practical. The relay you'll use is the W171DIP-7, which is DIP package like an IC. Very cool
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image6.gif"></sub>
<br>With V "high,” the relay closes. The diode serves as a snubber diode, as we saw earlier in Here are connections you can use to J3 from the AWG in Prob.20. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image7.gif"></sub>
<br><b>Voltage Regulators</b>
<br>Also in Prob. 20, you will install U5, which is a 78L08 voltage regulator. You don't need to know much about voltage regulators in the assembly and test of your NorCal 40A. However, we will quickly summarize this IC to provide relevant background material. 
<br>The 78Lxx series of ICs are three terminal devices that provide fixed dc output voltages, typically with currents no greater than 100 mA. Available voltages include 4, 5, 6, 7, 8, 9, 10, 12, 15, 18, 20, and 24 Vdc (among others!). 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image8.gif"></sub>
<br>In the NorCal 40A, you are using a 78L08 which provides 8 Vdc. This voltage is used by all of your receiver and much of the transmitter circuit, except for the Driver and Power Amplifiers. The datasheet for the AN78Lxx series (Panasonic) of voltage regulators is found on the EE 322 web page, while Appendix D of your text includes the datasheet for the MC78Lxx series (Motorola). These voltage regulator ICs must supply a constant (or nearly constant) output voltage as: 
<br>1. the input voltage changes. This is called line regulation. 
<br>2. the load connected to the regulator changes. This is called load regulation. 
<br>3. the temperature changes (these devices generally heat up). Here the relevant specifications for the AN78L08: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image9.gif"></sub>
<br>In the NorCal 40A, the function of the 78L08 is to provide 8 Vdc from a source voltage ranging from 10-15 Vdc. Consequently, the line regulation specification is not too important here since we're converting from dc to dc. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/transistor_switches_voltage_regulators.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transistor_switches_voltage_regulators/image11.wmf"></sub>
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
