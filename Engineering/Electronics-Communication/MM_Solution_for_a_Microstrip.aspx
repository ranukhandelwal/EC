<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="MM_Solution_for_a_Microstrip.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.MM_Solution_for_a_Microstrip" %>
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
	<b>MM Solution for a Microstrip Using Pulse Expansion-Point Match</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>MM Solution for a Microstrip Using Pulse Expansion-Point Match</b>
<br>The second example we will consider is the quasi-static moment method solution of a microstrip. For simplicity, we will assume that the entire upper half space is filled with the same material
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image1.gif"></sub>
<br>We'll imagine that a time-harmonic voltage source has been connected between the strip and the ground plane. This will cause a non-uniform charge distribution on the strip as well as the ground plane. 
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image2.gif"></sub>
<br>Provided the height and width of the microstrip are electrically very small, we can expect that a quasi-static solution will be quite accurate. 
<br>Quasi-static means that the time harmonic fields are simply those of the static solution, but are oscillating sinusoidally in time. In other words, there are no radiation fields present so all electric field lines begin and end on charges
<br><b>Integral Equation</b>
<br>Next, we'll employ the image theory method to create an equivalent problem for the upper half space ( y &#8805; 0). 
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image3.gif"></sub>
<br>You've learned that the potential at a point r in a homogeneous space produced by a line charge density p<sub>1</sub>(r<sup>'</sup>) is given by
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image4.gif"></sub>
<br>Note that we must integrate along all contours C? that have surface charge. Hence C? includes both the strip and its image Now, we will apply the boundary condition that on the top strip
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image5.gif"></sub>
<br>Using (2) in (1) and accounting for both the +p<sub>1</sub> and -p<sub>1</sub> charge distributions on the strips then
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image6.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image7.gif"></sub>
<br>This is the integral equation for the line charge density on the strip. (Another approach to deriving this integral equation for the charge density would be to first find the Green's function and then convolve it with the forcing function.) 
<br><b>Pulse Expansion-Point Match</b>
<br>For a simple MM solution, we will use a pulse expansion for the charge density
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image8.gif"></sub>
<br>and point match the discretized integral equation. Substituting (4) into (3) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image9.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image10.gif"></sub>
<br>In (5), we can interchange the order of integration and summation, since these are linear operators, except perhaps when x<sup>'</sup> Assuming this isn't the case, then (5) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image11.gif"></sub>
<br>We'll generate N linearly independent, constant coefficient equations by point matching (7) at the centroid of every segment in the discretized strip model. We'll denote these points as r<sub>m</sub>=xx<sub>m</sub>+Yd . 
<br>Point matching (7) at these points r<sub>m</sub> gives
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image12.gif"></sub>
<br>which is a matrix equation of the form
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image13.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image14.gif"></sub>
<br>As before, the process for obtaining a numerical solution from (9) is to "fill” [v] and [v], then solve this system of equations for the line charge density coefficients[&alpha;In particular, 
<br>. For [v] - choose V = 1 V, for example. 
<br>. For[z] - compute (10c) analytically, if possible, or use numerical integration. 
<br>In this particular problem, we are able to evaluate (10c) analytically since a simple anti-derivative of the integrand is available. 
<br><b>Analytical Evaluation of Zmn </b>
<br>To accomplish this analytical evaluation of (10c), we will begin with a segment of width  located at the origin that is supporting a uniform line charge density p<sub>1</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image15.gif"></sub>
<br>The electrostatic potential at point r produced by this "pulse” of line charge density is
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image16.gif"></sub>
<br>When r does not lie anywhere on this strip, the potential is
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image17.gif"></sub>
<br>Using (12) in (10c), it can be shown that for m # n
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image18.gif"></sub>
<br><b>Evaluation of Zmm </b>
<br>A more nettlesome situation occurs if the observation point lies on the segment. This will happen every time m = n while the matrix [z] is being filled. For these "self-cell” evaluations, the observation point will be located at the center of the segment in the chosen pointmatching scheme Referring to the figure above, if x = y = 0 (at the center of the strip) it can be shown that
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image19.gif"></sub>
<br>Consequently, from this result it can be shown that for m =n
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image20.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
	<br>8708
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mm_solution_for_a_microstrip.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mm_solution_for_a_microstrip/image22.wmf"></sub>
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
