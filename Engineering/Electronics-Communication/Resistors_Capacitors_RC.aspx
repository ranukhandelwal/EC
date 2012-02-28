<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Resistors_Capacitors_RC.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Resistors_Capacitors_RC" %>
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
	<b>Resistors_Capacitors_RC</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Resistors_Capacitors_RC Networks. Arbitrary Waveform Generator</b>
<br>There are six basic discrete components used in the NorCal 40A: 
<br># Component Discussed 1 Resistors Ch. 2 2 Capacitors Ch. 2 3 Inductors Ch. 2 4 Diodes Ch. 2 5 Quartz crystals Ch. 5 6 Transistors Ch. 8 
<br>Each of these will be discussed separately below. 
<br><b>Resistors</b>
<br>&bull; Read and review Sec. 2.1, “Resistors”. 
<br>&bull; Memorize the color band chart in Fig. 2.2. This will be tested on exams. (Inductors use the same band colors.) 
<br>Power dissipated in resistors: 
<br>P(t ) =V (t ) I (t ) [W] 
<br>This result is always true. There are, however, two important special cases: 
<br>1. At dc: P =VI [W] 
<br>2. For sinusoidal steady-state signals, the time average power Pa is
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image1.gif"></sub>
<br>where Vp and Ip are peak voltages. In the lab, it is convenient to work with peak-to-peak sinusoidal voltages on the oscilloscope. Then, 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image2.gif"></sub>
<br>where Vpp and Ipp are peak-to-peak (p-t-p) quantities. The time average power dissipated in a resistor R with a sinusoidal voltage Vpp is then
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image3.gif"></sub>
<br>Other review items in Ch. 2: 
<br>&bull; Review Thévenin and Norton equivalent circuits in Sect. 2.2. 
<br>&bull; Review resistive voltage divider circuits in Sect. 2.3. 
<br>&bull; Review Thévenin (“look back”) resistance in Sect. 2.4. 
<br><b>Capacitors</b>
<br>&bull; Read and review Sec. 2.5 “Capacitors”. Capacitors can also be used in voltage divider circuits. From
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image4.gif"></sub>
<br>After attaching the battery
<br>Q<sub>1</sub>(t)-C<sub>1</sub>V<sub>t</sub> and Q<sub>2</sub>(t)-C<sub>2</sub>V<sub>2</sub>(t) 
<br>Since Q<sub>t</sub>=∫ I(t)dt and I<sub>1</sub>(t)=I<sub>2</sub>(t), Then Q<sub>1</sub>(t)=Q<sub>2</sub>(t). 
<br>Now, as t ? ? (i.e., waiting until all capacitors are fully charged) and using KVL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image5.gif"></sub>
<br>Also, 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image6.gif"></sub>
<br>Dividing (6) by (5) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image7.gif"></sub>
<br>This is a voltage division equation that is useful in Prob. 3 when modeling the behavior of a high-impedance scope probe. It is very important for an electrical engineer to understand how such probes work and how they alter the circuit to which they are attached. 
<br>Notice in (7) that as C1 increases, so does V. This is opposite to the effect that occurs with resistive divider networks. Why does this happen? Because with Q<sub>1</sub> = C<sub>1</sub>V<sub>1</sub> , then as C1 increases, then V1 decreases assuming all other things equal. With a smaller voltage drop across C1, then V = V2 must increase. Of course, not all other "things” remain equal because I will change. However, I is the same through both capacitors. These capacitors store charge and through the electrostatic force, F = qE , they also store electrical energy, We(t) = E(t). (Note that E here is not the electric field.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image8.gif"></sub>
<br>Now, noting again that Q = CV and differentiating this expression with respect to (wrt) time gives
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image9.gif"></sub>
<br>Look at the terms on the right-hand side: 
<br>&bull; dQ/dt is the conduction current in the leads of the capacitor, 
<br>• C= dV/dt is Maxwell's displacement current in the capacitor. Consequently, (8) reads
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image10.gif"></sub>
<br>There are two types of current! Both are used in electrical circuits and are equal to each other in a capacitor. Neat! Finally, as shown in the text
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image11.gif"></sub>
<br><b>RC Delay Circuit</b>
<br>Connecting R and C elements together in series can be used to make a time delay circuit, as you'll see in Prob. 3. The delay time is ? RC =? . (This is a new interpretation for an old friend.) To see this, consider the following series RC circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image12.gif"></sub>
<br>In the lab, we'll use a square wave from the Agilent Arbitrary Waveform Generator (AWG). The analysis of this circuit response is developed in Section 2.7 – something you've likely seen many times before. The result is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image13.gif"></sub>
<br>where ? = RC. t2 is the time for the waveform to decay to ½ of its initial value. In the lab, t2 is much easier to measure than ?. It's simple to show that
<br>Therefore, after measuring t2, then
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image14.gif"></sub>
<br>The overall result is that we can view the output voltage as a pulse that has been "delayed” by a time ? t2 ?? , as shown in the figure below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image15.gif"></sub>
<br><b>Arbitrary Waveform Generator (AWG)</b>
<br>The function generators you've used before may not have had a display on them indicating the amplitude or peak-to-peak voltages. The Agilent 33120A AWGs in the lab have a display that shows frequency and other quantities of interest. Additionally, the display shows the amplitude (peak) of the output voltage, but only if the output is terminated in 50 ?. If the AWG “sees” a different impedance when connected to your circuit, then the output voltage will be different that what's shown on the display. You should measure this voltage using a scope. 
<br>Here is a useful model of the AWG (a Thévenin equivalent): 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image16.gif"></sub>
<br>where Vd is the voltage displayed on the AWG. Some special cases for the voltages in this circuit are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image17.gif"></sub>
<br>In the lab, just use a Thévenin model as discussed in Section 2.2
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image18.gif"></sub>
<br>Disconnect the AWG from the circuit and measure the open circuit voltage. Adjust to the desired voltage. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/resistors_capacitors_rc.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_resistors_capacitors_rc/image20.wmf"></sub>
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
