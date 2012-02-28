<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Receiver_Incremental_Tuning_Crystal_Oscillators.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Receiver_Incremental_Tuning_Crystal_Oscillators" %>
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
	<b>Receiver Incremental Tuning Crystal Oscillators</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Receiver Incremental Tuning Crystal Oscillators</b>
<br>The NorCal 40A includes a receiver incremental tuning (RIT) circuit to offset your receiver frequency from your transmitter frequency.Why include this feature? Because other transceivers may be operating with receivers and transmitters that aren't perfectly aligned (in frequency). Or, perhaps their transmitter has drifted in frequency due to heating while their receiver has not.With an RIT, you can finely adjust your receiver frequency without affecting the transmitter frequency. To operate the RIT: 
<br>1. Adjust your VFO so your transmitted signal is being received by the other station. 
<br>2. Next, adjust your RIT so your receiver matches his transmitter frequency. Cool! 
<br>Using the RIT helps avoid a "dog-chasing-his-tail occurrence” in which station 2 adjusts his transceiver to receive 1 properly but also changes his transmit frequency. Then station 1 adjusts his transceiver for reception, but changes his transmit frequency, and so on. In Prob. 26, the VFO tune pot (R17) is connected to ground through R15 as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image1.gif"></sub>
<br>Later towards the end of Prob. 27, R15 is removed from ground and connected to pin 7 of U6, which is the LM393N dual comparator, as shown in This forms the RIT: 
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image2.gif"></sub>
<br>How does this RIT work? It's actually very simple. The comparator is similar to an op amp except with an “opencollector” output as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image3.gif"></sub>
<br>Referring to Fig. 11.18(c), the output pin of the comparator is a BJT collector terminal. This pin is either open- or short-circuited to ground depending on V<sub>i</sub> and V<sub>r</sub>, as: 
<br>&bull; V<sub>i</sub> &gt;V<sub>r</sub> , then V<sub>b</sub> is low and V is open circuited ("off”), or
<br>&bull; V<sub>i</sub> &lt;V<sub>r</sub> , then V<sub>b</sub> is high and V is short circuited ("on”). 
<br>There are two situations important to us in the NorCal 40A. In both, we'll assume that the RIT (S2) is “on”: 
<br>1. With "8V TX” high, then the left comparator in Fig. 11.20 is "off” (low) and the right comparator is "on.” This implies that the VFO is connected through R15 to ground, and R16 is effectively open circuited. This is the standard transmit configuration studied in Prob. 26. 
<br>2. With "8V TX” low, then the left comparator is "on” and the right comparator is "off.” Therefore, the VFO is connected through R16 to ground and R15 is effectively open circuited. 
<br>Now, by changing R16 we can vary the bias voltage of the varactor D8 and hence the receive frequency (remember that "8V TX” is low when receiving) and only affect the receiver frequency. This is called receiver incremental tuning. 
<br><b>Crystal Oscillators</b>
<br>Besides the VFO, there are two other oscillators in the NorCal 40A. These are the Beat Frequency Oscillator (BFO) and the Transmit Oscillator (TO). Both are crystal oscillators. These use a BJT inside the SA602AN IC as the amplifier plus an external quartz crystal and a voltage divider network to make the feedback network. Together, these form a crystal oscillator, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image4.gif"></sub>
<br>We can recognize the Clapp oscillator topology in this figure by the capacitive divider/feedback network. This oscillator is very similar to the JFET Clapp oscillator used in the VFO. The small signal model for this oscillator is shown Here, we are using a transconductance model for the BJT: 
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image5.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image6.gif"></sub>
<br>To determine the approximate resonant frequency, we note that the source-free, lossless circuit that the inductor "sees” is
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image7.gif"></sub>
<br>Therefore
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image8.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image9.gif"></sub>
<br>The startup condition for this oscillator is derived in the text to be: 
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image10.gif"></sub>
<br>In this expression, I<sub>b</sub> is the base bias current and V<sub>t</sub> is the thermal voltage (? 25 mV at room temperature). The startup condition in is a rather complicated expression largely because of the many sources of loss in the circuit. Lastly, the peak-to-peak output voltage is derived in the text as 
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image11.gif"></sub>
<br>where R <sub>1</sub>= R<sub>b</sub> ||R<sub>a</sub> and I<sub>0</sub> is the dc component of the emitter current. 
<br>We see in this expression that with C<sub>2</sub> &gt;&gt;C<sub>1</sub> , then V<sub>pp</sub> ? C<sub>1</sub> . This effect will be quite noticeable as you adjust: 
<br>1. C17 in the BFO (C17 is "C<sub>1</sub>" for the BFO), 
<br>2. C34 in the Transmit Oscillator (C34 is "C<sub>1</sub>" for the TO). 
<br>The Transmit Oscillator has an additional series inductor L5 that is used to shift the oscillator frequency to a value different from the BFO. What purpose does this serve in the radio? 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/receiver_incremental_tuning_crystal_oscillators.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image14.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_receiver_incremental_tuning_crystal_oscillators/image14.wmf"></sub>
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
