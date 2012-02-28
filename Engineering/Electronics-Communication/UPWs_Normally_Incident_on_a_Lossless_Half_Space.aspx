<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="UPWs_Normally_Incident_on_a_Lossless_Half_Space.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.UPWs_Normally_Incident_on_a_Lossless_Half_Space" %>
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
	<b>UPWs Normally Incident on a Lossless Half Space</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>UPWs Normally Incident on a Lossless Half Space.</b>
<br>The current sheet solution in Lecture 25 provided us with much information on the properties of uniform plane waves: 
<br>. E xH equals the power flow density, as we saw in the previous lecture, and also gives the direction of propagation. 
<br>.E ^ H and both E and H are perpendicular to the direction of propagation. 
<br>. Ratios of perpendicular components of E and H = &#177; &eta;
<br>. l = 2p /b and u =1/ me Now imagine that a UPW is "incident” on a half space as shown in the figure below. Our quest now will be to determine E and H everywhere. 
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image1.gif"></sub>
<br>In this lecture, we will consider the reflection and transmission of UPWs normally (i.e., perpendicularly) incident on this planar boundary. 
<br><b>Comments</b>
<br>• The incident UPW is produced by an infinite current sheet located somewhere in region 1. We'll just specify an incident UPW with electric field E<sub>i</sub> rather than solving the current
<br>sheet problem again. &bull; Because of the half space, we expect some “reflection” and “transmission” at the interface. 
<br>&bull; The total field in region 1 is the sum of an incident and a reflected wave. The total field in region 2 is just the transmitted field. 
<br><b>Solution for Reflected and Transmitted Waves</b>
<br>Proceeding with the solution, we first draw the vector triplets (E , H , and direction) associated with each UPW (incident, reflected, and transmitted). 
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image2.gif"></sub>
<br>It is important to choose E<sub>r</sub> and E<sub>t</sub> in the same direction as E<sub>i</sub> . The directions of the corresponding magnetic field vectors can be found using the RHR. Next, we write the solutions for E and H in each region making sure to use b<sub>1</sub> ,&eta;<sub>1</sub> in region 1 and b<sub>2</sub> ,&eta;<sub>2</sub> in region 2: 
<br>Region 1-
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image3.gif"></sub>
<br>Region 2-
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image4.gif"></sub>
<br>To determine the unknown coefficients E<sub>1</sub><sup>-</sup> and E<sub>2</sub><sup>+</sup> (assuming E<sub>1</sub><sup>+</sup> is known) we apply the boundary conditions: 
<br>&bull; E<sub>tan</sub> continuous at z = 0: E<sub>x1</sub>|<sub>z=0</sub> = E<sub>x2</sub>|<sub>z=0</sub>
<br>Using (1) and (3) in this boundary condition equation, then
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image5.gif"></sub>
<br>Similar to our analysis of TLs, we will define the ratio
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image6.gif"></sub>
<br>as the electric field reflection coefficient at z = 0 and
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image7.gif"></sub>
<br>as the electric field transmission coefficient at z = 0. Substituting these definitions into (5) we find
<br>1+ T = T 
<br>&bull; H<sub>tan</sub> continuous at z = 0: 
<br>From (2) and (4) 
<br>H<sub>y1</sub>|<sub>z=0</sub> = H<sub>y2</sub>|<sub>z=0</sub>
<br>or
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image8.gif"></sub>
<br>Solving (8) and (9) for and gives
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image9.gif"></sub>
<br>You probably recognize the form of (10) from your previous work with transmission lines where
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image10.gif"></sub>
<br>As we can see in (10) and (11), for UPWs the amount of reflection and transmission at an interface depends on the contrast in the intrinsic impedances of the two half spaces. We have now completed the solution for the UPW incident on a half space: 
<br>For z &#8805; 0
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image11.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image12.gif"></sub>
<br>Example N28.1: A UPW is incident on the half space shown. 
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image13.gif"></sub>
<br>Determine (a) the reflection and transmission coefficients at the interface y = 0, and (b) the total magnetic field in each region. 
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image14.gif"></sub>.
<br>The first step is to sketch the vector triplets for the incident, reflected, and transmitted UPWs: 
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image15.gif"></sub>
<br>(a) From (3) and (14) 
<br>E<sub>2</sub><sup>+</sup> = E<sub>1</sub><sup>+</sup>
<br>In this example, it is given that
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image16.gif"></sub>
<br>Using
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image17.gif"></sub>
<br>(b) From the given E<sub>i</sub> and the sketch above
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image18.gif"></sub>
<br>To determine H<sub>r</sub> , first write E<sub>r</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image19.gif"></sub>
<br>From this E<sub>r</sub> and the sketch above
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image20.gif"></sub>
<br>Consequently, in region 1
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image21.gif"></sub>
<br>while in region 2 using the given E<sub>t</sub> and the sketch above
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image22.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/upws_normally_incident_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_upws_normally_incident_on_a_lossless_half_space/image24.wmf"></sub>
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
