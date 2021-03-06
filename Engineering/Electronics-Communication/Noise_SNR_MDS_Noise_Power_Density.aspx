<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Noise_SNR_MDS_Noise_Power_Density.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Noise_SNR_MDS_Noise_Power_Density" %>
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
	<b>Noise SNR MDS Noise Power Density and NEP</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Noise SNR MDS Noise Power Density and NEP</b>
<br>The performance of any receiver is limited by both the smallest and the largest signals it can receive. 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image1.gif"></sub>
<br>On the low end, the receiver is limited by noise. On the high end, the receiver is limited by the strongest signal it can receive without producing spurious responses. Both of these topics are discussed in Ch. 14 of the text. We'll begin with noise. 
<br><b>Noise</b>
<br>Noise has many origins in a circuit. For a receiver, noise is mostly thermally generated in resistors (including attenuators), semiconductors, amplifiers, mixers and some filters. Noise is generally not associated with inductors or capacitors. Additionally, noise signals are also received through antennas. This noise is generated by thunderstorms, galactic and solar bodies, and manmade sources. Noise measured on an oscilloscope gives the familiar "grass” signature: 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image2.gif"></sub>
<br>While the time average of this noise voltage is zero, its RMS value is not zero: 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image3.gif"></sub>
<br>where ? is an averaging time. This noise signal also has a time average noise power P<sub>n</sub> associated with it
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image4.gif"></sub>
<br>where R is the load resistance. It really doesn't make sense to talk about “peak-to-peak noise voltage” since noise is not sinusoidal. Rather, it's some random waveform. 
<br><b>Signal to Noise Ratio</b>
<br>A receiver's audio output signal is characterized by its signal-tonoise ratio (SNR) defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image5.gif"></sub>
<br>where P is the audio RMS output power and P<sub>n</sub> is the audio RMS noise power. Depending on your application, different receivers may require wildly different SNRs. Voice may require an SNR of 40:1, for example, while CW (Morse code) can be understood with an SNR approaching 1:1. mazing! 
<br><b>Minimum Discernible Signal</b>
<br>A good all-around comparison of receiver performance is the minimum discernible signal (MDS). MDS is the input signal power required to produce a 1:1 SNR at the output. this implies
<br>P = P<sub>n</sub> 
<br>Dividing (1) by the overall receiver gain G we find
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image6.gif"></sub>
<br>To measure MDS in the lab, we generally do not directly apply the definition (14.4). Instead, MDS is computed from two receiver output (audio) measurements: 
<br>1. P<sub>n</sub> of the receiver is measured (no input signal), 
<br>2. MDS for receiver noise is equal to the input signal power.
<br>that doubles the output power (that is, to 2P<sub>n</sub>). In the lab, you'll be measuring V<sub>rms</sub>. Therefore, you need to measure the input signal power that increases the output voltage by 2 in order to compute MDS. 
<br><b>Laboratory Arrangement for MDS Measurement</b>
<br>In Prob. 34 “Receiver Response” you'll measure a number of receiver characteristics including MDS for receiver noise, and again later for antenna noise. The experimental arrangement for this measurement is shown in : 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image7.gif"></sub>
<br>Your equipment layout will look something similar to this: 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image8.gif"></sub>
<br>It's worthwhile to connect the counter to the speaker. Other important points related to this problem include: 
<br>1. You will need to work with pairs of receivers, so find a partnering team. One transceiver acts as the transmitter, while yours is the receiver. Then interchange the radios and repeat the measurements. 
<br>2. A battery powers the transmitter. We're dealing with very small signals in these measurements so we don't want signal coupling through the ac line. 
<br>3. You will use a Kay 839 attenuator. A toggle "up” adds that amount of attenuation to the line: 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image9.gif"></sub>
<br><b>Decibels Above 1 mW (dBm)</b>
<br>Throughout these measurements, you'll be dealing with signals having average powers expressed in units of dBm. This is shorthand for “dB referenced to 1 mW.” That is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image10.gif"></sub>
<br>As an example, let's determine the absolute power given by -40 dBm. 
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image11.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image12.gif"></sub>
<br>Therefore
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image13.gif"></sub>
<br><b>Noise Power Density and NEP</b>
<br>The noise power P<sub>n</sub> does not appear at just one frequency. Instead, noise power is distributed over a range of frequencies. In recognition of this, noise power density N is defined as the noise power per unit bandwidth (W/Hz) as: 
<br>P<sub>n</sub> = N ? B [W] 
<br>where B is a chosen bandwidth. We'll assume that N is constant here – which is certainly a reasonable approximation when B is small, say for a narrow band receiver such as the NorCal 40A. This is important: We see from (14.5) that output (i.e., audio) noise power is proportional to bandwidth (BW). Some receivers actually have BW switches to choose a wider or narrower BW filter for different situations: 
<br>1. A wide BW for ease of locating stations, 
<br>2. A narrow BW for reducing noise. 
<br>We can now see that the MDS we defined earlier as
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image14.gif"></sub>
<br>will depend on the bandwidth of the receiver since P<sub>n</sub> is proportional to B in It is useful to have a measure of the receiver performance that is independent of BW. Why? Because BW is determined primarily by filters, but filters contribute little to receiver noise (mixers and amplifiers are the major contributors). In this vein, noise equivalent (input) power density (NEP) is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image15.gif"></sub>
<br>Comparing this definition with (14.4), we can see that NEP is similar to MDS in that NEP is related to N in the same manner as MDS is related to P<sub>n</sub>. NEP is simply all receiver output noise density referred to the receiver input. In Prob. 34F you will measure N and NEP for your receiver. Notice that for Probs. 34F through 34I you will not need the first NorCal 40A for input. To determine NEP, it's useful to have a source that supplies noise of a given RMS level with a specified bandwidth. Your Agilent 33120A provides such a signal. Select the “Noise” button and enter the power in dBm or the corresponding V<sub>rms</sub>.Do NOT enter a p-t-p value since this doesn't make sense for noise signals. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/noise_snr_mds_noise_power_density.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_noise_snr_mds_noise_power_density/image17.wmf"></sub>
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
