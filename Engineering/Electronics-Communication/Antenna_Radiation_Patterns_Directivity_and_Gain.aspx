<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Antenna_Radiation_Patterns_Directivity_and_Gain.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Antenna_Radiation_Patterns_Directivity_and_Gain" %>
<%@ MasterType VirtualPath="~/Masters/emlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Antenna Radiation Patterns Directivity and Gain</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Antenna Radiation Patterns Directivity and Gain.</b>
<br>No physical antenna radiates uniformly in all directions. Rather, antennas radiate EM waves better in certain directions than others. In fact, many antennas will not radiate in some directions at all. A radiation pattern is a plot that shows the relative far field strength of E (or H ) versus angular direction (q,Æ) at a fixed distance from the antenna (again, in the far field). It is often a polar plot. We'll take the Hertzian dipole antenna as an example. From equation (12) in the previous lecture we found in the far field that 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image1.gif"></sub>
<br>The magnitude of this phasor electric field is
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image2.gif"></sub>
<br>What is of interest in an antenna radiation pattern is the variation of |E| in q and Æ at a fixed r, which is in the far field of the antenna. In the case of the Hertzian dipole antenna in (2), this variation is simply | sinq| : 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image3.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image4.gif"></sub>
<br>This radiation pattern indicates a number of characteristics of this Hertzian dipole antenna: 
<br>1. Maximum radiation is at q = 90&#176; . This is called broadside radiation. 
<br>2. There is no variation in Æ, as expected. 
<br>3. There is no radiation in directions along the ends of the antenna (q = 0, 180&#176;).
<br><b>Radiation Patterns of Longer Dipole Antennas</b>
<br>The radiation patterns of dipole antennas get far more interesting as their electrical length increases. We're only considering the electrically short Hertzian dipole antenna in this course, but we'll show a couple of radiation patterns for two other dipole antenna lengths without proof. 
<br>Dipole antenna radiation patterns stay roughly the same shape up to lengths ? 0.5 l . The main beam then sharpens for lengths
<br>from ? 0.5 l to 1 l . There is only one beam of radiation for these lengths. There are no so-called side lobes. (You can experiment with this yourself by adjusting the dipole antenna length L in the VisualEM worksheet "Radiation Pattern of a Dipole Antenna.”) 
<br>For lengths longer than 1 l , the radiation patterns change considerably with the addition of multiple main beams and the appearance of side lobes: 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image5.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image6.gif"></sub>
<br>Beamwidth? E plane, H plane? 
<br><b>Directivity and Gain</b>
<br>An important characteristic of an antenna is its ability to focus radiated power in a given direction in the far field. The directivity D(q ,Æ ) of an antenna is the ratio of the power density radiated in the (q,Æ) direction at some distance in the far field of the antenna to the power density at this same point if the total power were radiated "isotropically” (i.e., equally in all directions. Mathematically, directivity is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image7.gif"></sub>
<br>While there is no such thing as a physical antenna that radiates equally well in all directions (i.e., isotropically), we use this artifice as a normalization quantity in the denominator of (3) to assess the focusing ability of a given antenna. If a total power P<sub>rad</sub> is radiated isotropically by an antenna, then the time average power density anywhere on a sphere of radius r
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image8.gif"></sub>
<br>Is
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image9.gif"></sub>
<br>Using (4) in (3) along with the definition of S<sub>AV</sub>, then (3) Becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image10.gif"></sub>
<br>The gain of an antenna is defined similarly as directivity. In particular, the gain G(q ,Æ ) of antenna is the ratio of the power density radiated to some point in the far field of an antenna to the total power accepted by the antenna, P<sub>in</sub>, when radiated isotropically. Mathematically, antenna gain is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image11.gif"></sub>
<br>The radiation efficiency e<sub>r </sub>of an antenna is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image12.gif"></sub>
<br>Using this in (6) and comparing to (5) we find that
<br>G(&theta;,) = e<sub>r</sub> D (&theta;,)
<br>In short, the gain G(q ,Æ ) of antenna includes the effects of losses in the antenna (and other surrounding structures), if present. The directivity of an antenna is determined solely by the pattern shape of the antenna. 
<br>Example N33.1. Calculate the directivity of a Hertzian dipole antenna of length ÑL with current a<sub>z</sub> I A. If the antenna is made of steel, is 62" long and 1/8" in diameter, and is operating at 1 MHz, calculate the antenna gain. In the far field of this antenna
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image13.gif"></sub>
<br>Substituting (1) into (9) 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image14.gif"></sub>
<br>The total power radiated by this antenna is found by integrating this power density over a closed surface, the simplest of which is an imaginary sphere centered on the dipole antenna: 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image15.gif"></sub>
<br>There fore
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image16.gif"></sub>
<br>Substituting (10) and (11) into the definition of directivity in (3), and using (4) gives 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image17.gif"></sub>
<br>Consequently, 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image18.gif"></sub>
<br>The maximum directivity, D, occurs for this antenna when q = 90&#176; at which
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image19.gif"></sub>
<br>To calculate the gain of the antenna, we first must compute its radiation efficiency. The efficiency of this antenna was computed previously in Example N32.1. As we saw in that example, the equivalent input circuit at the terminals of the Hertzian dipole antenna is
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image20.gif"></sub>
<br>The total time average power delivered to the input terminals of this antenna is
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image21.gif"></sub>
<br>while the total radiated time average power is
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image22.gif"></sub>
<br>Substituting (12) and (13) into the definition of radiation efficiency (7) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image23.gif"></sub>
<br>It was this last equation for e<sub>r </sub>that was used previously in Example N32.1. There it was found that e<sub>r</sub> = 8.95% for this steel antenna. 
<br>Using we find that
<br>G(&theta; , ) = 0.0895.1.5. sin <sup>2</sup> &theta; = 0.134 sin <sup>2</sup> &theta; 
<br>And the maximum gain G occurs for this antenna at &theta; = 90 Where G = 0.134 or G<sub>dB</sub> = 10log<sub>10</sub> G = -8.72 dB
<br><b>Conclusion</b>
<br>To conclude, it is important to realize that there is no real "gain” associate with such antennas. These are made of metal and are completely passive devices. There is no signal amplification. The "gain” that has been defined in this lecture refers to the focusing properties of the antenna beyond that of an isotropic radiator. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/antenna_radiation_patterns_directivity_and_gain.aspx"></asp:HyperLink> 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered else register </b><b>here</b> </td>
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image26.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_antenna_radiation_patterns_directivity_and_gain/image26.wmf"></sub>
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
