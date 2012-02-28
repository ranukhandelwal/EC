<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Near_and_Far_Fields_of_the_Hertzian_Dipole_Antenna.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Near_and_Far_Fields_of_the_Hertzian_Dipole_Antenna" %>
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
	<b>Near and Far Fields of the Hertzian Dipole Antenna Radiation Resistance</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Near and Far Fields of the Hertzian Dipole Antenna. Radiation Resistance. </b>
<br>In the previous lecture, we calculated the phasor E and H fields produced by a Hertzian dipole antenna of current I = a<sub>z</sub> I and length ÑL located at the origin of the coordinate system to be
<br>E(r) = a<sub>r</sub>E<sub>r</sub> + a<sub>&theta;</sub> E<sub>&theta;</sub> [V/m] 
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image1.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image2.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image3.gif"></sub>
<br>In this lecture, we will carefully examine these fields and discover interesting behavior of this Hertzian dipole antenna. 
<br><b>Near Fields of the Hertzian Dipole Antenna</b>
<br>The properties of these E and H fields in (1)-(4) are quite different depending if we observe them electrically close or electrically far from the dipole antenna. Electrical distance here is measured by br. 
<br>As b r ®0 we can neglect the 1/( jbr)<sup>2</sup> term with respect to the 1/( jbr)<sup>3</sup> term in (2) and neglect the 1/( jbr)<sup>3</sup> and 1/( jbr) terms with respect to the jbr)<sup>2</sup> term in (3). Additionally, for both (2) and (3) we employ the series expansion
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image4.gif"></sub>
<br>keeping only the first term b r ®0. After performing all three of these operations we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image5.gif"></sub>
<br>But
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image6.gif"></sub>
<br>So that
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image7.gif"></sub>
<br>From the previous lecture, we saw that Q = I/ jw so that Becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image8.gif"></sub>
<br>Following a similar process for E<sub> </sub><sub>q</sub><sub> </sub>in (3) we find that. 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image9.gif"></sub>
<br>This electric field in (7) and (8) for the near fields of the Hertzian dipole antenna has exactly the same form as that for an electric dipole p = a<sub>z</sub> QÑL C-m
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image10.gif"></sub>
<br>that you saw previously in EE 381 for static fields: 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image11.gif"></sub>
<br>Equations (7) and (8) have exactly the same form as (9). The difference is (7) and (8) are phasors while (9) is a static field. [See Mathcad worksheet "Animated Electric Fields of the Hertzian Dipole”.] Keeping the leading term in (4) as b r ®0 gives
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image12.gif"></sub>
<br>which is exactly the same form as the static magnetic field produced by a current element IÑL using the Biot-Savart law in magnetostatics [see equation (3) in Lecture 30], though that is not proven here. In summary, the E and H fields electrically close (br&lt;&lt; 1) to the Hertzian dipole antenna have the same form as those fields of the static problem (electric dipole, magnetic current element), but those of the antenna simply oscillate sinusoidally with time. These near fields of the Hertzian dipole antenna are consequently said to be quasi-static. 
<br><b>Far Fields of the Hertzian Dipole Antenna</b>
<br>The situation is completely different for the E and H fields at distances electrically far from the antenna. In the case that br &gt;&gt;1, then from (1) through (4): 
<br>E<sub>r</sub> ? 0 (br &gt;&gt; 1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image13.gif"></sub>
<br>These far zone fields of the antenna behave very differently than the near zone fields: 
<br>&bull; Notice that because of the e<sup>- j</sup><sup>b</sup><sup>r</sup> factors in , E and H are propagating as waves in the + a<sub>r</sub> direction (away from the dipole antenna). These are called spherical waves. 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image14.gif"></sub>
<br>&bull;E ^H . 
<br>[It is intereting to observe both of these phenomenon in the Mathcad worksheet "Animated Electric Fields of the Hertzian Dipole”.] 
<br>&bull; Both E and H are perpendicular to the direction of propagation ( a<sub>r</sub> ) because E<sub>r</sub> is vanishingly small with respect to the E<sub>q</sub> term. 
<br>&bull; E <sub>q</sub> / H<sub>j</sub> =h . 
<br>All of these properties sound very familiar, don't they? These are the same characteristics of uniform plane waves (UPWs). Here, though, there is one big difference: the far fields of this Hertzian dipole antenna are proportional to 1/r. They decay in amplitude as they propagate away from the antenna. For the UPW, they didn't decay in amplitude. The fundamental reason for this behavior is the source for a UPW is an infinite current sheet. Because of its infinite extent, the EM waves it produced didn't decay as they propagated. Such a behavior, though, requires a source that supplies an infinite amount of power, which is not at all realistic. 
<br><b>Power Radiated by the Hertzian Dipole Antenna</b>
<br>This Hertzian dipole antenna is a much more realistic source of EM waves and it produces a finite amount of power radiated. We calculate this time average power using the Poynting vector
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image15.gif"></sub>
<br>Substituting the far field E and H from (11)-(13) into (14) we Find
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image16.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image17.gif"></sub>
<br>assuming a lossless infinite space in which the antenna radiates so that h is a real number. Substituting we find
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image18.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image19.gif"></sub>
<br>This result indicates that this antenna is radiating an EM field (a wave) that is carrying time average power away from the antenna. Notice in (16) that this time average power density decays as 1/r<sup>2</sup> . (The fields decay as 1/r .) We can now calculate the total radiated time average power PAV by integrating (16) over a sphere centered on the dipole antenna with a radius in the far field of the antenna such that
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image20.gif"></sub>
<br>The integral in this expression can easily be evaluated as
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image21.gif"></sub>
<br>Substituting this result gives
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image22.gif"></sub>
<br>or with b = 2&pi; /&lambda; then
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image23.gif"></sub>
<br><b>Radiation Resistance and Equivalent Input </b>
<br><b>Circuit for the Hertzian Dipole Antenna</b>
<br>This time average power in (18) represents power that is carried away from the terminals of the antenna by the electromagnetic wave. This power will not return to the antenna. For a generator connected to the terminals of the antenna, this effect simply looks like a resistance. Even if the antenna is made from perfectly conducting wires, there is still power "lost” to radiation. In fact, we define a radiation resistance R<sub>r</sub> for an antenna as a hypothetical lumped resistance that would dissipate the same amount of power as that radiated by the antenna. For a resistor, 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image24.gif"></sub>
<br>Equating (19) with (18) we find that for a Hertzian dipole Antenna
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image25.gif"></sub>
<br>An equivalent circuit for the input terminals to the Hertzian dipole antenna includes this radiation resistance in series with a capacitive reactance that captures the near-field terminal characteristics of the dipole antenna: 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image26.gif"></sub>
<br>We haven't solved for this equivalent capacitance here, but can be found in many antenna textbooks. 
<br>Example N32.1. A steel dipole antenna of length 62" and 1/8" diameter is operating at 1 MHz (an AM radio antenna, for example). Assume a Hertzian dipole antenna model. 
<br>(a) Calculate the antenna radiation resistance and Ohmic resistance. 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image27.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image28.gif"></sub>
<br>so this antenna is electrically very short. Then using (20), 
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image29.gif"></sub>
<br>Because of the skin effect, in a wire of length L
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image30.gif"></sub>
<br>where the surface resistance R<sub>s</sub> is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image31.gif"></sub>
<br>For this antenna of length ÑL made from steel in which &sigma; = 2x10<sup>6</sup> S/m and &mu; = &mu; <sub>0</sub> , then
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image32.gif"></sub>
<br>Notice how small the radiation resistance is in comparison! It's actually ten times smaller than the Ohmic resistance of the steel wire at 1 MHz. This turns out to be a universal characteristic of electrically small antennas: They are not efficient radiators of EM waves. 
<br>(b) Calculate the radiation efficiency e<sub>r</sub> of this antenna. By definition, the radiation efficiency is
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image33.gif"></sub>.
<br>For this specific Hertzian dipole antenna
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image34.gif"></sub>
<br>which is a very low value. 
<br>(c) Calculate the input impedance The equivalent circuit at the terminals of the antenna is
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image35.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image36.gif"></sub>
<br>Therefore
<br>Z<sub>in</sub> = R<sub>ohmic</sub> + R<sub> r</sub> - jX<sub>A</sub> = 0.242 - j37.844 beta
<br>Notice the extremely large capacitive reactance in this Z<sub>in</sub> . So, not only is this antenna not an efficient radiator, but it is difficultto couple energy to it from a source! Need a matching networkto do this by resonating out the C using an L, for example, but then the antenna becomes narrow banded. Not all antennas perform this poorly! One can make dipole antennas much more efficient by making them electrically longer. Approaching &lambda; /2 in length, these antennas perform much better. 
<br>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/near_and_far_fields_of_the_hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image39.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image39.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_near_and_far_fields_of_the_hertzian_dipole_antenna/image38.wmf"></sub>
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
