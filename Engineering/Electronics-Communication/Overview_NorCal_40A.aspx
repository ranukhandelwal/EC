<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Overview_NorCal_40A.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Overview_NorCal_40A" %>
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
	<b>Overview NorCal 40A</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Overview. NorCal 40A. Direct Conversion vs. Superhet Receivers</b>
<br>The overall objective of this course is to learn and understand practical aspects of analog wireless communication electronics. We will accomplish this with a very thorough analysis of the NorCal 40A transceiver (= transmitter + receiver). This radio was designed by Wayne Burdick and the kit is produced by Bob Dyer at Wilderness Radio. 
<br>The NorCal 40A is a QRP (= low power) and CW (= continuous wave) rig. It operates in the “40-m band,” which designates the wavelength of the carrier. With? = c / f , then f ? 7 MHz. This frequency is within the HF (= high frequency) band, which extends from 3 to 30 MHz. In this band, worldwide communications is possible since the Earth's ionosphere acts to reflect the signal back towards the ground . 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image1.gif"></sub>
<br>A block diagram of the NorCal 40A is shown in Fig. 1.13. The transmitter is on the left half, the receiver on the right. Notice the different frequencies at various stages in the circuit . 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image2.gif"></sub>
<br>This block diagram is constructed on a system level. Each shaped section in the diagram serves a specialized purpose . There are five types of system blocks in
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image3.gif"></sub>
<br>We will briefly discuss the first four of these. 
<br>(1) Amplifiers. These are used both in the transmitting and receiving stages of the transceiver. Take, for example, the Driver Amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image4.gif"></sub>
<br>The amplifier has amplified the transmitted signal by
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image5.gif"></sub>
<br>This amplifier is followed by the Power Amplifier [G = 10log<sub>10</sub>( 2/ 0.020 )= 20 dB] to give an output power of 2 W into a "well-matched” antenna (2 W is considered QRP). 
<br>This type of gain is called an operational power gain. Later in the course we will almost exclusively use another type of gain called maximum available power gain. 
<br>(2) Filters. These devices are a common topic in early EE courses. Filters play an extremely important role in analog communication electronics. In the NorCal 40A, there are three bandpass and one low pass filter. One of the bandpass filters (the IF Filter) is constructed from four quartz crystals and has a very, very large Q for discrete component filters (Qloaded ? 12,000). Recall that
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image6.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image7.gif"></sub>
<br>Filters are typically characterized by two factors: 
<br>(i) Loss L in the "pass band.” Take a low pass filter for example: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image8.gif"></sub>
<br>So, in the pass band
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image9.gif"></sub>
<br>We see that loss L is the inverse of gain
<br>(ii) Rejection factor R in the "stop band.” 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image10.gif"></sub>
<br>where P = power at some frequency f in the stop band
<br>(3) Oscillators. These provide nearly sinusoidal signals at a single frequency. There are three oscillators in the NorCal 40A: 
<br>(i) Transmit Oscillator at 4.9 MHz, 
<br>(ii) Variable Frequency Oscillator (VFO) near 2.1 MHz, 
<br>(iii) Beat Frequency Oscillator near 4.9 MHz. 
<br>(4) Mixers. These are circuits that shift a signal's frequency either up or down. This shifting is accomplished by “combining” the signal with another. 
<br>This "combining” operation is signal multiplication and is usually accomplished either with nonlinear circuits or with timevarying circuits. (The NorCal 40A uses the latter.) 
<br>As an example of mixing, let's take the product of
<br>V<sub>1</sub>(t)=cos (2&pi; f<sub>1</sub>t) And V<sub>2</sub>(t)=cos (2&pi;f<sub>2</sub>t) As V<sub>(t)</sub>=V<sub>1</sub>(t).V<sub>2</sub>(t).
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image11.gif"></sub>
<br>Then 
<br>. <sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image12.gif"></sub>
<br>Where
<br>F<sub>+</sub>=Sum frequency = F <sub>1</sub>+F<sub>2</sub> F<sub>-</sub>=Difference frequency =| F <sub>1</sub>+F<sub>2</sub>|
<br>Consequently, through multiplication we have produced an output signal containing two frequency components: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image13.gif"></sub>
<br>On a spectrum analyzer: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image14.gif"></sub>
<br><b>Direct Conversion Receivers</b>
<br>As an application of mixers, consider the "direct conversion” receiver shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image15.gif"></sub>
<br>The frequencies at different points in the receiver can be drawn graphically as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image16.gif"></sub>
<br>The audio amplifier would amplify the low frequency f- signal while filtering out the sum frequency f+. In the NorCal 40A, the audio frequency ? 600 Hz and the RF ? 7 MHz. Therefore: LO ? 7 MHz and Sum ? 14 MHz. 
<br>This simple receiver has one major problem, which is the "image.” The audio signal is the difference signal for RF and LO mixer inputs. If a signal is also being received at the "image” frequency shown above (at the same time as the desired RF signal), then a second audio tone will be produced at the output as the difference between the image and the LO frequencies. This is BAD since you will hear two "stations” simultaneously and there would be no way to separate them. 
<br>One way to circumvent this problem is to place a filter before the mixer to remove the image, as shown in Fig. 1.10. However, one would need a very high-Q bandpass filter, most likely requiring quartz crystals. But then we couldn't change frequencies to tune in other stations because it's difficult to make such filters with a variable center frequency. 
<br><b>Superheterodyne Receivers</b>
<br>This problem with the direct conversion receiver can be overcome using superheterodyne receivers. This circuit was invented by Howard Armstrong in the early 1920's. The superhet receiver is “perhaps the most important invention in the history of communications,” as stated in the text. Coincidentally, Mr. Armstrong also invented frequency modulation (FM). 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image17.gif"></sub>A block diagram of the superhet receiver is shown in Fig
<br>
<br>Consider the various frequencies present in the circuit beginning at the antenna: 
<br>&bull; Stage 1
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image18.gif"></sub>
<br>The RF Filter easily filters out the "VFO image.” The IF signal is then fed to the IF Filter and the Product Detector
<br>&bull; Stage 2
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image19.gif"></sub>
<br>The IF Filter needs to have a very large Q. Its job is to filter out the sum frequency signal (f+ = 9.1 MHz) and the BFO image (if there is one at ? 4.9 MHz). 
<br>Notice we can tune this receiver by varying the VFO frequency; however, the intermediate frequency is ALWAYS equal to the IF. Consequently, we can construct a very high Q filter centered at the IF that doesn't need to be tuned. Brilliant! The loaded Q of the IF Filter in the NorCal40A is approximately 12,000. That's large! 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/overview_norcal_40a.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_overview_norcal_40a/image22.wmf"></sub>
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
