<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="TL_Input_Impedance_Time_Average_Power.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.TL_Input_Impedance_Time_Average_Power" %>
<%@ MasterType VirtualPath="~/Masters/mwlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>TL Input Impedance Time Average Power Return and Insertion Losses</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>TL Input Impedance Time Average Power Return and Insertion Losses. VSWR.</b>
<br>Example N4.1: Determine an expression for the voltage at the input to the TL assuming R<sub>s</sub> = Z<sub>0</sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image1.gif"></sub>
<br>To calculate the input voltage V<sub>g</sub> , we'll first determine the effective impedance seen at the TL input terminals seen looking towards the load at z = 0. This is called the input impedance Z<sub>in</sub> Forming the ratio of (19) and (20) from the previous lecture gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image2.gif"></sub>
<br>. In other words, the input impedance is purely reactive
<br>Z <sub>in</sub> = jX <sub>in </sub>where X <sub>in </sub>= - Z<sub>0</sub> cot ( &beta; l ) 
<br>A plot of this reactance is shown in Fig. 2.8c of the text. An equivalent circuit can now be constructed at the input to the TL by using R<sub>s</sub> and Z<sub>in</sub> as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image3.gif"></sub>
<br>Using voltage division, 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image4.gif"></sub>
<br>This circuit voltage V<sub>g</sub> is also the voltage on the TL at z = - l . That is, from (19) in the previous lecture
<br>V( z = - l ) = 2V<sub>0</sub><sup>+</sup> cos (- Bl) 
<br>Since V<sub>g</sub> = V( z = ?l) , we can equate these two voltages giving
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image5.gif"></sub>
<br>More often than not, expressions of this type are used to determine V<sub>0</sub><sup>+</sup> in terms of V<sub>s</sub> and R<sub>s</sub> . We'll see more on this topic in 
<br><b>Input Impedance of a Transmission Line</b>
<br>In problems like the one in the last example, it is helpful to have an analytical expression for the input impedance of an arbitrarily terminated TL. As we saw in the last lecture, the voltage and current everywhere on a homogeneous TL are
<br>V(z) = V<sub>0</sub><sup>+</sup> e <sup>- jBz</sup> + V<sub>0</sub><sup>-</sup> e <sup>+ jBz</sup>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image6.gif"></sub>
<br>We can readily construct an input impedance expression for a TL of length l by dividing (1) and (2) for some arbitrary load reflection coefficient T<sub>L</sub> at z = 0: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image7.gif"></sub>
<br>such that
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image8.gif"></sub>
<br>Substituting for T<sub>L</sub> and simplifying gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image9.gif"></sub>
<br>This is the input impedance for a lossless TL of length l and characteristic impedance Z<sub>0</sub> with an arbitrary load Z<sub>L</sub> Three special cases are: 
<br>1. With an open circuit load ( Z<sub>L</sub> = ?), (5) yields
<br>Z<sub>in</sub> = - jZ<sub>0</sub>cot (Bl ) beta
<br>as we derived in the last lecture. 
<br>2. With a short circuit load ( Z<sub>L</sub> =0 ), (5) yields
<br>Z<sub>in</sub> = jZ<sub>0</sub> tan (&beta; l) beta
<br>A plot of this input reactance is shown in Fig. 2.6c. 
<br>3. With the resistive load Z<sub>L</sub> = Z<sub>0</sub> , (5) yields
<br>Z<sub>in</sub> = Z <sub>0</sub> beta
<br>The input impedance is Z<sub>0</sub> regardless of the length of the TL. All of these last three expressions should be committed to memory. You will use them often in microwave circuits. Note that both input impedances (6) and (7) are purely reactive, which is expected since neither type can dissipate energy, assuming lossless TLs. 
<br><b>Time Average Power Flow on TLs</b>
<br>A hugely important part of microwave engineering is delivering signal power to a load. Examples include efficiently delivering power from a source to an antenna, or maximizing the power delivered from a filter to an amplifier. Often, the "power” we are ultimately concerned with is the time average power P<sub>Av</sub>, expressed as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image10.gif"></sub>
<br>This expression is similar to that used in circuit analysis. Substituting V(z) and I(z) from (1) and (2) into (8) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image11.gif"></sub>
<br>Notice that the second and third terms are conjugates so that
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image12.gif"></sub>
<br>The real part of this sum is zero. Consequently, (9) simplifies to
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image13.gif"></sub>
<br>Since this power is not a function of z (true for a lossless and homogeneous TL), a z-dependence is no longer indicated for P<sub>Av</sub>. It is important to reiterate that we're assuming a lossless TL throughout this analysis. These results are not valid for lossy TLs.Equation (10) is very illuminating. It shows that the total time average power delivered to a load is equal to the incident time The relative reflected time average power from an arbitrary load on a lossless TL is the ratio of the two terms in From (10) we see that if the load is entirely reactive so that , then P<sub>Av</sub> = 0 and no time average power is delivered to the load, as expected. For all other passive loads, P<sub>Av</sub> &gt; 0. The time average power that is not delivered to the load can be considered a "loss” since the signal from the generator was intended to be completely transported – not returned to the generator. This return loss (RL) is defined as
<br>RL =- 10log <sub>10</sub> (|T<sub>L</sub>|<sup>2</sup>) = -20log <sub>10</sub>(|T<sub>L</sub>|) dB
<br>The two extremes for return loss with a passive load are: 
<br>1. A matched load where T<sub>L</sub> =0 and RL = ? (no reflected power), and
<br>2. A reactive load where T<sub>L</sub> =1 and RL = 0 (all power reflected). 
<br><b>Transmission Coefficient and Insertion Loss</b>
<br>Insertion loss is a term closely related to return loss. Consider a junction of two semi-infinite TLs as shown in Fig. 2.9: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image14.gif"></sub>
<br>We'll arbitrarily assume that a voltage wave is incident from z &lt; 0. From (1), the total voltages in the two regions are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image15.gif"></sub>
<br>In these expressions,V<sub>0</sub><sup>+</sup> is the complex amplitude of the incident voltage wave and V<sub>1</sub><sup>+</sup> is the complex amplitude of the transmitted voltage wave. There is no reflection on the righthand TL so there is only the outgoing term. We will define the voltage transmission coefficient T as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image16.gif"></sub>
<br>so that (13) can be written as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image17.gif"></sub>
<br>At the junction of these TLs, the two boundary conditions are that the voltage and current are each continuous across the junction. Equating voltages (12) and (15) at z = 0 gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image18.gif"></sub>
<br>The reflection coefficient for this junction of two TLs is
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image19.gif"></sub>
<br>Substituting (17) into (16) and simplifying gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image20.gif"></sub>
<br>This transmission coefficient between two "ports” in a microwave circuit is often expressed in decibels as the insertion loss, IL: 
<br>IL =- 10log<sub>10</sub>(|T|<sup>2</sup>) = - 20log <sub>10</sub> (|T|) dB
<br>The two extremes for insertion loss in a passive circuit are: 1. A matched junction where ? = 0, so that T =1 and IL = 0 (all power transmitted), and
<br>2. A completely reflecting junction where ? = ?1, so that T = 0 and IL = ? (no power transmitted). 
<br><b>Voltage Standing Wave Ratio</b>
<br>As we've seen, there is generally some amount of reflection of voltage and current waves from discontinuities and loads attached to a TL. To help quantify the amount of interference that exists on a TL, we define the voltage standing wave ratio (VSWR) as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image21.gif"></sub>
<br>where |V(z)|<sub>max</sub> and |V(z)|<sub>min</sub> are the maximum and minimum voltage magnitudes, respectively, found anywhere on a long TL. As shown in the text, we can determine expressions for these quantities. Specifically, 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image22.gif"></sub>
<br>Substituting these into the definition of VSWR in (20) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image23.gif"></sub>
<br>From this expression, we can definitely see that VSWR is intimately related to the amount of reflection at the load (through ) and the subsequent interference on the TL. 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image24.gif"></sub>
<br>Example N4.2: Compute the VSWR and return loss for the TL shown below. Plot the magnitude of the phasor voltage from z = 0 to z = -7 cm. From this plot, confirm the value of VSWR that you computed earlier.
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image25.gif"></sub>
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
<br><b>Discuss about Microwave Engineering here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for Microwave Engineering</b>
<br>Discussion on Microwave Engineering</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/tl_input_impedance_time_average_power.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2386
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/tl_input_impedance_time_average_power.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2307
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/tl_input_impedance_time_average_power.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vannak</b> 
</td>

      
      <td class="txt">
	<br>Jun 1, 4:16:47 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>3862
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tl_input_impedance_time_average_power/image27.wmf"></sub>
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
