<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Uniform_Plane_Waves_in_Lossy_Materials.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Uniform_Plane_Waves_in_Lossy_Materials" %>
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
	<b>Uniform Plane Waves in Lossy Materials. Skin Depth</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Uniform Plane Waves in Lossy Materials. Skin Depth.</b>
<br>All real materials have loss, to one extent or another. We will now consider uniform plane waves that propagate through lossy materials. The only loss mechanism we'll consider here is that due to conduction current, J =sE , everywhere in an infinite space. So, for example, perhaps we have a current sheet J producing (or radiating) electromagnetic plane waves in an infinite lossy space: 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image1.gif"></sub>
<br><b>Wave Equation for Lossy Media</b>
<br>We'll derive the wave equation for this lossy space. We begin with the curl forms of Faraday's and Ampere's laws: 
<br>xE = - jwwH
<br>xH = j&omega;&epsilon;E+ J = j&omega;&epsilon;E+ sE = (s+ j&omega;&epsilon;)E
<br>Notice that we now have a J (=sE) in Ampere's law (2) in contrast to a lossless media in the previous lecture. Proceeding as we did in the previous lecture, there is no spatial variation of the current sheet and the space in the x or y directions, so we expect the E or H fields not to vary in x or y either. Consequently, with / x -> 0 and / x -> 0 become, respectively, 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image2.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image3.gif"></sub>
<br>To form the wave equation for E in this lossy space, we first take d / dz of (3) 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image4.gif"></sub>
<br>or separately
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image5.gif"></sub>
<br>Next, we substitute for dH<sub>x</sub>/ dz and dH<sub>y</sub>/ dz from (4) to give
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image6.gif"></sub>
<br>As we learned in the previous lecture, because  J<sub>s</sub> is uniform and oriented only in the a<sub>x</sub> direction, then the E fields produced by this current sheet will be oriented only in the a<sub>x</sub> direction as well. From here onwards, we'll focus only on E<sub>x</sub> and its associated H (an H<sub>y</sub>).
<br>From (9), we'll define the propagation constant  such that
<br><sup>2</sup> = jww(s + jw) 
<br>leading from (9) to
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image7.gif"></sub>
<br>This is the phasor wave equation for E<sub>x</sub> in a lossy space. Notice that this equation is identical in form to the wave equation for V on a lossy transmission line in Lecture 20. 
<br><b>Solutions to the Wave Equation in a Lossy Space</b>
<br>The solutions to the wave equation (11) are
<br>E<sub>x</sub>(z) = E<sub>0</sub> + e<sup>-yz</sup> + E<sub>0</sub>-e<sup>+yz</sup>
<br>where E<sup>+</sup><sub>0</sub> and E<sup>-</sup><sub>0</sub> are complex constants. Defining the real and imaginary parts of  as
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image8.gif"></sub>
<br>As we saw in Lecture 20, these two terms are the phasor forms of waves propagating in the +z and -z directions, respectively, with attenuation: 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image9.gif"></sub>
<br>Associated with this time varying electric field is a corresponding magnetic field. To determine this H , we could derive the wave equation for H from (1) and (2), as we did for E , and then solve for H . Alternatively, and more simply, we can determine H directly from Faraday's law: 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image10.gif"></sub>
<br>Using we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image11.gif"></sub>
<br>The factor jww/ in (18) we expect to be an impedance quantity. Using (10) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image12.gif"></sub>
<br>This quantity <sub>c</sub> is the complex intrinsic impedance of the lossy space. It is a complex quantity, just as the characteristic impedance of a lossy TL was found to be complex in Lecture 20. Notice in (19) that as s 0, <sub>c</sub>  as expected for a lossless space, as we saw in the previous lecture. Using this <sub>c</sub>, the magnetic field associated with Ex in (16) for this lossy space is
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image13.gif"></sub>
<br><b>Discussion</b>
<br>From (16) and (20), notice that
<br>&bull; The fields do not vary spatially in planes perpendicular to the direction of propagation (±z ). Even though the space is lossy, these fields are still uniform plane waves, as in the lossless case. 
<br>&bull; Ratios of perpendicular components of E and H equal &#177;<sub>c</sub> . 
<br>. For the +z propagating wave: 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image14.gif"></sub>
<br>. For the -z propagating wave: 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image15.gif"></sub>
<br>This is a result similar to lossless spaces, but  <sub>c</sub> is now complex for a lossy space. 
<br>&bull; For a lossy space, the wavelength and wave speed are defined exactly the same for lossless spaces as  = 2/ and u =w/ , respectively. However,  ww for lossy spaces. Rather, from (15) = Im[]. 
<br><b>Skin Depth</b>
<br>We've now learned that as a plane wave propagates through a lossy space, it attenuates in amplitude as it propagates. For a UPW propagating in the +z direction, for example, then from (16) and (20) 
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image16.gif"></sub>
<br>The distance this electromagnetic wave must travel for the amplitude to be reduced by the factor e<sup></sup><sup>1</sup> is called the skin depth, , of the material. We can derive an equation for  beginning with the magnitude of the electric field in (21) At some arbitrary position z0, from (22) while at some position  meters further away
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image17.gif"></sub>
<br>For this ratio to equal e<sup></sup><sup>1</sup> requires
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image18.gif"></sub>
<br>As an example, consider copper which has an electrical conductivity s = 5.8x10<sup>7</sup> S/m,  <sub>0</sub> , and w  w<sub>0</sub> . Using (13) to calculate  and hence , then using (25): 
<br>f  =1/  60 Hz 8530 wm 1 MHz 66.1 wm 10 MHz 20.9 wm 100 MHz 6.6 wm 1 GHz 2.09 wm 
<br>This skin depth of an electromagnetic wave in a lossy space is directly related to the skin effect in a round wire that we discussed in Lecture 9. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
	<br>19089
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/uniform_plane_waves_in_lossy_materials.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_uniform_plane_waves_in_lossy_materials/image20.wmf"></sub>
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
