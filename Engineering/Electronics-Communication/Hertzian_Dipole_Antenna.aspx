<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Hertzian_Dipole_Antenna.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Hertzian_Dipole_Antenna" %>
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
	<b>Hertzian Dipole Antenna</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Hertzian Dipole Antenna.</b>
<br>In the previous lecture, we discussed the fundamental sourcefield relationship that can be used to calculate the E and H fields produced by sinusoidal steady state line currents. In this process, we first compute the phasor vector magnetic potential
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image1.gif"></sub>
<br>where R = |r - r| , then compute the phasor magnetic field as
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image2.gif"></sub>
<br>Using Ampere's law, we determine the phasor electric field
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image3.gif"></sub>
<br>What might be surprising to you is that one of the most difficult challenges an antenna designer faces is determining the current distribution I (r) on a particular antenna. This is often a complicated problem and usually the only accurate solution is to use computational electromagnetics methods. There is a famous class of straight wire antenna that has an accurate approximate solution for the form of the current on the antenna. This class of antenna is known as a thin-wire dipole antenna: 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image4.gif"></sub>
<br>It is called a "dipole” antenna because there are two wires or poles comprising the antenna. The form of the current on the wire is known quite accurately for thin wires (a &lt;
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image5.gif"></sub>
<br>It is infinitesimally short with a uniform current distribution. Because
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image6.gif"></sub>
<br>then for sinusoidal steady state this means that I = j&beta;Q. The ends of this short antenna are capacitively loaded by small metallic spheres or disks to create a current that is approximately uniform along its length in Without the capacitive loading the current would be approximately triangularly shaped with a maximum value at the center of the antenna and linearly decreasing to zero at both ends, as illustrated in 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image7.gif"></sub>
<br><b></b><b>A for a Hertzian Dipole Antenna</b>
<br>Following the procedure described at the beginning of page 1, we'll now determine the E and H fields produced (i.e., "radiated”) by the Hertzian dipole antenna. This three-step process begins with the calculation of A from (1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image8.gif"></sub>
<br>The current I(r) is that for the Hertzian dipole antenna, which we will assume is located at the center of a spherical coordinate system: 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image9.gif"></sub>
<br>Substituting for this assumed uniform current into (1) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image10.gif"></sub>
<br>Because this antenna is infinitesimally short then R is approximately constant over the entire range integration. Consequently, the integral in (4) can be performed trivially leading to
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image11.gif"></sub>
<br>(Notice that R has now become r.) So we now have completed the first step and have obtained an analytical expression for A. The next step is the calculation of H . Because of the spherical symmetry of the dipole antenna, we'll use the spherical coordinate system to simply the mathematics. We can convert A in (5) to spherical vector components quite easily by using the relationship
<br>a<sub>z</sub>= a<sub>r</sub>, cos&theta; -a<sub>&theta;</sub> sin &theta; 
<br>Giving
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image12.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image13.gif"></sub>
<br><b></b><b>H for a Hertzian Dipole Antenna</b>
<br>Now that we have successfully determined A produced by the Hertzian dipole antenna, we can now determine the E and H fields, beginning with H . As we saw in (2) 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image14.gif"></sub>
<br>Because of the  symmetry, / ->0 which, using the determinant form of curl in the spherical coordinate system, gives
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image15.gif"></sub>
<br>such that
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image16.gif"></sub>
<br>&bull; Using
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image17.gif"></sub>
<br>&bull; Using
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image18.gif"></sub>
<br>Consequently, using we find H to be
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image19.gif"></sub>
<br>Factoring out ( j&beta;)<sup>2</sup> = -&beta;<sup>2</sup> from both terms in (14) we arrive at the final form of the magnetic field produced (or "radiated”) by the Hertzian dipole antenna
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image20.gif"></sub>
<br><b>E for a Hertzian Dipole Antenna</b>
<br>Now that H has been determined, we can solve for the E field produced by this Hertzian dipole antenna according to (3). Using the determinant form of curl in the spherical coordinate system
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image21.gif"></sub>
<br>Such that 
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image22.gif"></sub>
<br>Substituting for H from (15) into (16), and simplifying, gives
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image23.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image24.gif"></sub>
<br><b>Summary</b>
<br>So, this concludes the calculation of the E and H fields produced (or "radiated”) by the Hertzian dipole antenna. There is a wealth of information contained in these field solutions for E in (17)-(20) and H in (15) that we will carefully pick through in the next lecture. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
	<br>6859
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
	<br>7541
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
	<br>19140
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image25.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/hertzian_dipole_antenna.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image27.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_hertzian_dipole_antenna/image26.wmf"></sub>
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
