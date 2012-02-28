<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Poyntings_Theorem_Power_Flow_and_Plane_Waves.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Poyntings_Theorem_Power_Flow_and_Plane_Waves" %>
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
	<b>Poyntings Theorem Power Flow and Plane Waves</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Poyntings Theorem Power Flow and Plane Waves.</b>
<br>A propagating electromagnetic (EM) wave carries energy with it. Physically this makes sense to us when we listen to the radio or talk on a cell phone. These types of wireless communications are possible because EM waves carry energy. 
<br>In these examples, some of this EM energy is used to oscillate electrons in the metal parts of the receiving antenna of our radio or cell phone, which ultimately results in wireless communications. 
<br>There is a precise mathematical definition of the time rate of energy flow (i.e., power flow) for EM waves. Before getting to this, we first need to digress briefly to first discuss Poynting's theorem. 
<br><b>Poynting's Theorem</b>
<br>Poynting's theorem is a hugely important mathematical statement in electromagnetics that concerns the flow of power through space. We'll derive it now for time-domain fields. We begin with Maxwell's curl equations
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image1.gif"></sub>
<br>Next, we employ the vector calculus identity
<br>(E H) = H ( E)- E ( H) 
<br>Substituting (1) and (2) into (3) we have: 
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image2.gif"></sub>
<br>Using the constitutive equations B = &mu;H , D =&epsilon;E , and J =&sigma;E in (4) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image3.gif"></sub>
<br>assuming &mu; &#8800; f (t) and &epsilon;&#8800; f (t) 
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image4.gif"></sub>
<br>thinking of the chain rule of differentiation. Consequently, using this result and a similar one for the E E/ t term, (5) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image5.gif"></sub>
<br>This is the point form of what is called Poynting's theorem. Lastly, we integrate this point form equation (6) throughout a volume V bounded by the closed surface S: 
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image6.gif"></sub>
<br>where V, S, and ds are related as
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image7.gif"></sub>
<br>Applying the divergence theorem to the LHS of this last equation gives
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image8.gif"></sub>
<br>where in moving  / t outside of the integral we're assuming that V is not a function of time. This result is called the integral form of Poynting's theorem. 
<br><b>Discussion of Poynting's Theorem</b>
<br>To understand the physical significance of the LHS of (7), we'll begin by looking at the RHS, which has elements you've seen before in EE 381. In particular, the first and second terms in the RHS of (7) are the time rates-of-change of the stored energy in the magnetic and electric fields inside V. The third term is the Ohmic power dissipated in V due to the flow of conduction current. We can now interpret the RHS of (7) as the rate of decrease in the magnetic and electric power stored in V, and further reduced by the Ohmic power dissipated in V. 
<br>OK, so now here is the payoff: By the conservation of energy law, all of this represented by the RHS of (7) must equal the power leaving the volume through the bounding surface S. Consequently, the quantityE H in the LHS of (7) is a vector that must represent the power flow of the EM field leaving the volume V per unit area. We define this vector
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image9.gif"></sub>
<br>The LHS is the power flow into S. The first term in the RHS is the increase in the stored power in the H and E fields in V, while the second term is the increase in the Ohmic power dissipated in V. 
<br><b>Power Flow for UPWs</b>
<br>We will now apply this Poynting vector concept to uniform plane waves. In Example N25.1, we found for a certain UPW that
<br>E(z,1) = -a<sub>y</sub> 43.501 cos (6&pi;10<sup>8</sup> t - 21.780z)V/m H(z,1) = -a<sub>x</sub> 0.1 cos (6&pi;10<sup>8</sup> t - 21.780z)A/m
<br>This UPW is propagating in the +z direction: 
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image10.gif"></sub>
<br>The instantaneous Poynting vector associated with this UPW using (8) is then
<br>S(z,t) = E(z,t)  H(z,t)= (-a<sub>y</sub>  a<sub>x</sub> )4.350 cos <sup>2</sup> (6&pi;  10<sup>8</sup>t -21.780z)W/m<sup>2</sup>
<br>such that
<br>S(z,t) = a<sub>z</sub> 4.350 cos <sup>2</sup> (6&pi;  10<sup>8</sup> t -21.780 z)W/m<sup>2</sup> 
<br>The direction of this S (z,t ) is a<sub>z</sub> . This indicates that the flow of power of this UPW in the same direction as the wave propagation: in the a<sub>z</sub> direction. 
<br><b>Time Average Power Flow</b>
<br>Notice in (11) that while S (z,t ) oscillates in time, it has a nonzero time average value. (As an aside, this is one of the reasons why S (z) is not a phasor quantity.) In particular, using the trigonometric identity
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image11.gif"></sub>
<br>The second term in the RHS oscillates in time (at twice the frequency of E and H ) and has a zero time average value, while the first term is constant and does not vary with time. Consequently, the time average value of this Poynting vector in
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image12.gif"></sub>
<br>This UPW - on time average - carries or transfers power in the direction that the wave is propagating. 
<br><b>Sinusoidal Steady State Time Average Power Flow</b>
<br>It turns out that there is another way to calculate this time average Poynting vector for sinusoidal steady state, and to calculate it directly from phasor fields. We derive this expression beginning with (8) and writing E(t ) and H (t ) in terms of their phasor forms
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image13.gif"></sub>
<br>For evaluating (14), note that
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image14.gif"></sub>
<br>Rather, we can employ
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image15.gif"></sub>
<br>in (14) to give
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image16.gif"></sub>
<br>which we can write as
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image17.gif"></sub>
<br>We can recognize the RHS as a term plus its complex conjugate. So, once again using (15) 
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image18.gif"></sub>
<br>Integrating this expression over one time period as in (13), we find from (16) that
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image19.gif"></sub>
<br>Using this equation, we can compute a time averaged quantity ( AV S ) directly from phasor domain quantities (E and H ). For the UPW of Example N25.1, the phasor form of E and H Are
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image20.gif"></sub>
<br>Using (17), the time average Poynting vector is then
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image21.gif"></sub>
<br>This is the same result we found in (13) using the time domain forms of E and H . Here in (17) we find a time averaged quantity directly from the phasor domain fields. Neat! 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW </b><b>THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/poyntings_theorem_power_flow_and_plane_waves.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_poyntings_theorem_power_flow_and_plane_waves/image23.wmf"></sub>
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
