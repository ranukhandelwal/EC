<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Decreasing_Channel_Bandwidth_by_Using_CW_Key_Clicks.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Decreasing_Channel_Bandwidth_by_Using_CW_Key_Clicks" %>
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
	<b>Decreasing Channel Bandwidth by Using CW Key Clicks</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Decreasing Channel Bandwidth by Using CW Key Clicks</b>
<br>The text has previously mentioned that it's important for the transmitter not to turn on or off too quickly. For example, C56 in the Driver Amplifier is used to gradually turn off the transmitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image1.gif"></sub>
<br>In this lecture, we will see that by gradually turning off (and on) the transmitter, much less bandwidth is required for each CW "channel.” (A channel is the contiguous frequency spectrum needed for clear communications.) To understand this, first consider transmitter pulses with no rise or fall time: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image2.gif"></sub>
<br>This waveform is really the time domain product of the high frequency carrier
<br>V<sub>c</sub>( t) = 2cos(?t) V
<br>and a pulse train of frequency f<sub>k</sub>. From equation (B.22) with V<sub>m</sub> = 1, the Fourier series expansion of this keying waveform is
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image3.gif"></sub>
<br>Multiplying these last two equations and simplifying gives: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image4.gif"></sub>
<br>Now, let's compute the average power contained in each frequency harmonic. Using P = |V|<sup>2</sup> / (2R) , normalizing to R = 1? and defining f = f<sub>c</sub> &#177; nf<sub>k</sub> where f<sub>c</sub> is the carrier frequency: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image5.gif"></sub>
<br>A plot of this spectrum is shown in
<br>. <sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image6.gif"></sub>
<br>The FCC requires that for QRP transmitters (those 5 W and less), the spurious radiation must be ? 30 dB below the carrier (dBc). 
<br>However, for keying transmitters such as the NorCal 40A, there are many spurious components. While most, or all, of them may be reduced 30 dB from the carrier, the sum of these may cause a problem for another person's receiver. Consequently, for keying-type “sidebands” a more appropriate transmitter specification is the channel bandwidth required so that the average power contained in all frequency components outside of the channel is 30 dB below the carrier. This quantity can be easily computed. From (12.31), the total average power (computed in the frequency domain) is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image7.gif"></sub>
<br>where n is an odd and positive integer. The extra factor of 2 accounts for the average power in both the upper and lower sidebands. Simplifying gives
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image8.gif"></sub>
<br>Imagine that harmonics up to and including n are needed for the channel. Then p, which we'll define as the total average power in HO harmonics relative to the carrier for either the upper or lower sideband, is
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image9.gif"></sub>
<br>There is no additional factor of 2 here since we're looking only at one sideband. If n is large, we can evaluate p with the approximation: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image10.gif"></sub>
<br>The factor of one-half is present in this expression since we have only odd harmonics in the keying waveform [see (12.30)]. From (12.35), we find that
<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image11.gif"></sub>
<br>This result allows us to approximately compute the number of harmonics needed for one sideband of a keying waveform so that the average power contained outside the channel relative to the carrier is p. For example, imagine we wish to determine the number of keying harmonics (i.e., the channel width) required so that the total average power transmitted outside this channel is 30 dB smaller than that transmitted within the channel. Then, 
<br>p = ?30 dBc = 0.001? n =101
<br>using (12.36). If we next assume a 10-Hz keying rhythm, then the bandwidth needed for this communication channel is
<br>BW=2.101 harmonics .10 Hz /harmo c?2kHz. 
<br>This is a pretty large bandwidth and it's needed if we require that the keying waveform rise and fall instantaneously. (For comparison 2 kHz is the BW needed for a SSB voice channel.) 
<br><b>Decreasing Channel Bandwidth for CW</b>
<br>The BW required for a CW channel can be greatly reduced (?10x) by introducing a rise and fall time to the transmitter keying pulses: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image12.gif"></sub>
<br>This waveform is the product of carrier and keying waveforms. However, the Fourier series expansion of this waveform is more complicated than the one we considered earlier (? = 0). Your text has a clever method for computing the average power in the harmonics using the RC network in 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image13.gif"></sub>
<br>From this circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image14.gif"></sub>
<br>where ? = RC and n is the keying-harmonic number. Your text uses this frequency response as well as the carrier waveform to solve for the average power outside the channel relative to the carrier to be
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image15.gif"></sub>
<br>For p = -30 dBc as before
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image16.gif"></sub>
<br>Some commercial transmitters use ? = 3 ms. Then with f<sub>k</sub> = 10 Hz this gives n ?10 harmonics
<br>Hence, 
<br>BW =2.10 harmonics 10 Hz 200/harmonic=200 Hz
<br>This is the BW per channel needed for CW communications when the keying waveform has rise and fall times equal to 3 ms. This BW is 10x smaller than without the rise and fall characteristic. A huge improvement. 
<br><b>Key Clicks</b>
<br>The IF Filter BW in the NorCal 40A is approximately 400 Hz. Consequently, a 200-Hz CW channel can easily pass through without significant distortion. A roughly 200-Hz channel is common for CW communications. Operators will space themselves a few hundred Hz more than this from other CW “QSO's” to avoid interference. However, if there is a transmitter turning on and/or off too quickly, operators on nearby frequencies will hear clicking sounds that will interfere with their QSO. These are called key clicks. In Prob. 30, you will measure the output signal produced by your NorCal 40A when it is transmitting. This output will have the smoothed keying waveform shown earlier in this lecture: 
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image17.gif"></sub>
<br>Previously in this course, we have characterized the rise and fall times of waveforms in terms of the time t2. This works only for exponential waveforms. In the case of non-exponential waveforms, such as the keying waveform above, it is customary to use different definitions of rise and fall times: 
<br>&bull; The rise time in terms of t<sub>10</sub> ?90 : the time it takes themodulated waveform to go from 10% to 90% of its final value, and
<br>&bull; The fall time in terms of t<sub>90</sub> ?10 : the time it takes the modulated waveform to go from 90% to 10% of its initialvalue. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/decreasing_channel_bandwidth_by_using_cw_key_clicks.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_decreasing_channel_bandwidth_by_using_cw_key_clicks/image19.wmf"></sub>
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
