<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Antenna_Effective_Aperture_Friis_Equation.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Antenna_Effective_Aperture_Friis_Equation" %>
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
	<b>Antenna Effective Aperture Friis Equation</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Antenna Effective Aperture Friis Equation.</b>
<br>Up to this point in our discussion about antennas we have only discussed their transmitting characteristics. In a communication system, we need both transmitting and receiving antennas. There are many, many similarities between the transmitting and receiving properties of antennas, but there is one difference, which we'll discuss in this lecture. 
<br><b>Antenna Effective Aperture</b>
<br>In a receiving mode, antennas function as transducers to convert some of the energy in a passing electromagnetic wave into the motion of charges (i.e., a current) in an electrical circuit connected to the antenna. 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image1.gif"></sub>
<br>We define the maximum effective aperture of the antenna, Aem, as the ratio of the maximum time average power (P<sub>R</sub>) delivered to a conjugated matched load ( Z<sub>L</sub> = Z<sub>A</sub><sup>*</sup> ) connected to a lossless receiving antenna to the time average power density of an incident EM wave (linearly polarized UPW) illuminating the antenna, S<sup>i</sup><sub>AV</sub> : 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image2.gif"></sub>
<br>(The adjective "maximum” in maximum effective aperture indicates the assumption there are no losses in the antenna.) Alternatively, from (1) 
<br>P <sub>R</sub> = A<sub>em</sub> S <sup>i</sup> <sub>AV</sub>
<br>which states that the time average power delivered to a conjugate matched load connected to a lossless receiving antenna equals the power flow through an area equal to A<sub>em</sub> of the incident UPW. It can be shown that for any antenna, the maximum directivity D is related to the maximum effective aperture as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image3.gif"></sub>
<br>In the case that there are losses in the antenna, the power delivered to the matched load is further reduced to the fraction er (i.e., the radiation efficiency) of what would have been received in the lossless situation according to
<br>A<sub>e</sub> = e<sub>r</sub> A<sub>em</sub>
<br>where A<sub>e</sub> is the effective aperture of the receiving antenna. Using (3) in (2) and the definition of antenna gain, we arrive at
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image4.gif"></sub>
<br>In words, this extremely important equation (4) states that the ratio of an antenna gain as a transmitter and its effective aperture area as a receiver is a constant (dependant on wavelength) for any antenna. Amazing! 
<br>Example N34.1. Verify equation (2) for a Hertzian dipole antenna. Imagine a uniform plane wave (UPW) is incident on a Hertzian dipole antenna as shown in Fig. 1. From the definition of A<sub>em</sub> in (1), we first calculate I<sub>AV</sub> S for the UPW
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image5.gif"></sub>
<br>To calculate P<sub>R</sub>, we assume the antenna terminals are connected to a matched load: 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image6.gif"></sub>
<br>Assuming the Hertzian dipole antenna is aligned with E<sub>i</sub> , then it can be shown that
<br>V<sub>oc</sub> = - E<sup>i</sup> . T L [v] 
<br>For a conjugate matched load ( Z<sub>L</sub> = Z<sub>A</sub><sup>*</sup> ), maximum time average power will be delivered to the load circuit attached to the antenna. Using voltage division in this circumstance
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image7.gif"></sub>
<br>If Z<sub>A</sub> = R <sub>A</sub>+ jX<sub>A</sub> , then
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image8.gif"></sub>
<br>The time average power delivered to this load is then
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image9.gif"></sub>
<br>where R<sub>A</sub> = R<sub>r</sub> for a lossless antenna. Substituting (5) and (8) into the definition of A<sub>em</sub> in (1): 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image10.gif"></sub>
<br>We solved for R<sub>r</sub> in (20) of Lecture 32 to be
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image11.gif"></sub>
<br>Substituting (10) into (9) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image12.gif"></sub>
<br>As we saw in Example N33.1, D = 3 2 for the Hertzian dipole antenna. Using this in (11), we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image13.gif"></sub>
<br>which verifies (2) for the Hertzian dipole antenna. 
<br><b>The Friis Equation</b>
<br>Antennas are often used in a wireless communication system, or often called a communication "link,” as illustrated in the figure below. There is an important equation that is used to design such communication links, called the Friis equation. We imagine that two antennas are oriented towards each other for maximum transmitted and received power: 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image14.gif"></sub>
<br>The Friis equation is simple to derive. First, if P<sub>T</sub> = P<sub>in</sub> is the time average power accepted by (or delivered to) a transmitting antenna, we saw from equation (6) in Lecture 33 that the gain of the transmitting antenna G<sub>T</sub> is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image15.gif"></sub>
<br>We can rearrange this equation (12) for an expression of the radiated time average power density, S<sub>AV</sub>, at the position of a receiving antenna as
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image16.gif"></sub>
<br>where d is the separation distance between the transmitting and receiving antennas. The receiving antenna will capture some of this incident power density in (13) converting it to time average power delivered to a matched load according to the definition of antenna aperture in
<br>(1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image17.gif"></sub>
<br>where A<sub>eR</sub> is the antenna aperture of the receiving antenna. Using (14) in (13) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image18.gif"></sub>
<br>As we saw in (4), however, effective aperture and antenna gain are related to each other by the same factor for all antennas. Using (4) here in (15) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image19.gif"></sub>
<br>Equation (16) – and to a lesser extent (15) – is called the Friis equation. It can be used to design communication links, which we'll illustrate in the next example. 
<br>Example N34.2. Consider a direct broadcast satellite (DBS) television system typical of Dish Network or DirecTV. These typically use transmitting satellites with 120 W of radiated power, frequency between 12.2 GHz and 12.7 GHz, and an EIRP of ~55 dBW in each 24-MHz transponder that handles several compressed digital video channels. The receiving system uses an 18” (0.46 m) diameter offset-fed reflector antenna. What is the approximate receiver power delivered to a matched load? We'll use (16) for this calculate at a mid-band frequency of f = 12.45 GHz. The Effective IsotropicRadiated Power (EIRP) is defined as
<br>EIRP = P<sub>T</sub> G<sub>T</sub> [W] 
<br>It is the same time average power in a certain direction that would be radiated by an isotropic radiator ( G<sub>i</sub> = 1) it if had an input power of P<sub>T</sub> G<sub>T</sub> . For this example, EIRP = 55 dBW. We can write the Friis equation in terms of dBW. Taking 10log<sub>10</sub> of (16) we obtain
<br>P<sub>R</sub> (dB) = P<sub>T</sub> (dB) + G<sub>T</sub> (dB) + G<sub>R</sub> (dB) + 20log<sub>10</sub>(C<sub>0</sub>)
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image20.gif"></sub>
<br>There fore
<br>P<sub>R</sub> (dB) = P<sub>T</sub> (dB) + G<sub>T</sub> (dB) + G<sub>R</sub> (dB) - 20log<sub>10</sub>(f) -20log<sub>10</sub> (d) +147.6
<br>In this example
<br>P<sub>T</sub>(dBW) = 10log<sub>10</sub>(120) = 20.8 dBW
<br>and using the definition of EIRP in (17) 
<br>G<sub>T</sub> (dB) = EIRP ? P<sub>T</sub>(dBW) = (dBW) ?55 20.8 =34.2 dB
<br>For geosynchronous orbit, a typical "slant path” distance is d = 38,000 km. 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image21.gif"></sub>
<br>For this parabolic dish receiver antenna and its very large electrical size (~20 wavelengths in diameter), A<sub>eR</sub> is approximately 70% of the physical aperture area of the dish. Therefore,. 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image22.gif"></sub>
<br>Using these values in (18): 
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image23.gif"></sub>
<br>Or
<br>P<sub>R</sub>(dB) = - 116.9 dBW = PV<sub>R</sub> =2.04*10<sup>-12</sup> W
<br>This is a very small power! Without the combined gains of the two antennas (~68.2 dB = 34.2 dB + 34.0 dB) this received signal would be hopelessly lost in noise. This example illustrates one use of the Friis equation: What antenna gains are required for a communication link? There are other applications, of course. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/antenna_effective_aperture_friis_equation.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image26.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_antenna_effective_aperture_friis_equation/image26.wmf"></sub>
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
