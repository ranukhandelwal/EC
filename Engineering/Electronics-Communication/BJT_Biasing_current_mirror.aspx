<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="BJT_Biasing_current_mirror.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.BJT_Biasing_current_mirror" %>
<%@ MasterType VirtualPath="~/Masters/bjtlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>BJT Biasing - Current Mirror</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>It is important for the biasing of a transistor amplifier that it remains largely invariant to fairly large changes in â and temperature. Proper biasing doesn't happen by chance. For example, the npn and pnp inverter circuits in Laboratory #3 are highly sensitive to variations in â. That is usually a poor design (but was done on purpose for the lab, of course). In this lecture, we will study four BJT biasing methods: 
<br>1. Single power supply
<br>2. Dual power supply
<br>3. Alternate method for common emitter amplifiers
<br>4. Current source. 
<br><b>Single Power Supply Biasing Method</b>
<br>Perhaps the most common method for biasing BJT amplifier circuits with a single power supply is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image1.jpeg"></sub>
<br>RE is part of this biasing method as well. When used as an amplifier, the input signal would be capacitively coupled to the base of the BJT while the output would be taken (through capacitive coupling) at the collector or emitter of the transistor, depending on the specific requirements for the amplifier. We analyzed a specific example of this type of circuit in Lecture 12 employing Thévenin's theorem to simplify the analysis: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image2.jpeg"></sub>
<br>where VBB and RB are given in (5.68) and (5.69) in the text. Using KVL in the loop shown above V BB=I<sub>B</sub>R<sub>B</sub> +V<sub>BE</sub> +I<sub>E</sub> R<sub>E</sub> With I<sub>B</sub>= I<sub>E</sub>|(b+1) then (1) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image3.jpeg"></sub>
<br>Consequently, 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image4.jpeg"></sub>
<br>We can use (3) to design the biasing circuit so that it is largely insensitive to variations in b. The question is then how do we make IE (and hence IC) largely insensitive to b variations? Examining (3), we deduce that the answer is to choose
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image5.jpeg"></sub>
<br>Furthermore, we can design this biasing circuit so that it is largely insensitive to variations in temperature. The effects of temperature enter this circuit because VBE is a relatively strong function of temperature having a temperature coefficient of -2 mV/&#176;C. (We saw this same behavior with diodes.) From (3) we can see that if we choose
<br>V<sub>BB</sub> &gt;&gt;V<sub>BE</sub> 
<br>then we'll have a biasing circuit design that is largely insensitive to variations in temperature. So physically how do these conditions (4) and (5) make a good biasing circuit? 
<br>&bull; Eqn. (4) makes the base voltage largely independent of â and determined almost solely by R1 and R2. How? Because the current in the divider is much greater than the base current. The rule of thumb for “much greater” is that the divider current should be on the order of IE to IE/10. 
<br>&bull; Eqn. (5) ensures that small variations in VBE (from its nominal 0.7 V) due to temperature changes are much smaller than VBB. 
<br>Additionally, there is an upper limit to VBB because a higher VBB lowers VCB and affects the small values of the positive signal swing. The rule of thumb here is that V<sub>BB</sub>» V<sub>CC</sub>|3 and VCB (or VCE) » V<sub>CC</sub>|3 and .I<sub>C</sub> R<sub>C</sub> »V<sub>CC</sub>|3 
<br>Example N17.1. Design the bias circuit below for VCC = 9 V to provide VCC/3 V across RE and RC, IE = 0.5 mA, and the voltage divider current of 0.2IE, as shown. Design the circuit for a large b, then find the actual value obtained for IE with a BJT having b=100. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image6.jpeg"></sub>
<br>For the resistors R<sub>e</sub>and R<sub>c</sub>,I<sub>c</sub> R<sub>E</sub> =V<sub>CC</sub> /3=3V For I <sub>E</sub> =0.5 mA , then R<sub>E</sub> =6Kb For the voltage divider , if this BJT is in the active mode then V<sub>BE </sub>»0.7V Hence V<sub>B</sub> =V<sub>BE</sub>+V<sub>E</sub> =0.7+3=3.7V Such that 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image7.jpeg"></sub>
<br>A large b for a BJT in the active mode implies I<sub>b</sub>»0. By Ohm's law
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image8.jpeg"></sub>
<br>Hence, 
<br>R<sub>I</sub> =90kb-R<sub>2</sub> =53K b For the design with b = 100 it can be shown that I<sub>E</sub> =0.48 mA. (This is only a -4% change from 0.5 mA with b= ¥ ;) 
<br><b>Dual Power Supply Biasing Method</b>
<br>When two power supplies are available, a possible biasing method is
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image9.jpeg"></sub>
<br>Using KVL around the loop L gives
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image10.jpeg"></sub>
<br>This is the same result as (3), but with VBB replaced by VEE. Consequently, the b- and temperature-invariant design equations for this circuit are the same as those given earlier in (4) and (5) with VBB replaced by VEE. 
<br><b>Alternative Biasing for Common Emitter Amplifiers</b>
<br>This biasing method has a resistor tied from the collector to the base as 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image11.jpeg"></sub>
<br>As shown in the text, for IE to be insensitive to b variations, choose
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image12.jpeg"></sub>
<br>and for VBE to be insensitive to temperature variations, choose V<sub>CC</sub> V<sub>BE</sub> This latter requirement is most often very easy to meet! 
<br><b>Biasing with a Current Source</b>
<br>The last BJT amplifier biasing method we'll consider is one using a current source. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image13.jpeg"></sub>
<br>In this circuit, E I I = . If we are using a “good” current source, then IE will not depend on â. Very nice. However, what we've done in this approach is to push the technical problem to the design of a good current source. 
<br><b>Current Mirror</b>
<br>Simple biasing methods often fail to provide constant collector currents if the supply voltage or ambient temperature change.This is a problem with mobile telephones, for example, where the battery voltage changes with use and the device operates in a range of temperatures. There are sophisticated circuits consisting of tens of evices that can produce "golden currents” that are supply voltage and temperature independent. These golden currents are replicated throughout a device using a current mirror: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image14.jpeg"></sub>
<br>There are better and more sophisticated approaches than this, of course. This is just a simple example. In this current mirror, Q1 is called a diode-connected BJT because the collector and base terminals are connected together. For proper operation of this circuit, it is very important that the BJTs be "matched,” meaning they having the same b characteristic curves, etc. Usually this means that the BJTs must be fabricated at the same time on the same substrate. For the analysis of this circuit, we assume that â is very large and that Q1 and Q2 operate in the active mode. Because of this, we ignore the base currents in Q1 and Q2. Therefore, the collector (and emitter) current through Q1 is approximately equal to IREF. By KVL, 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image15.jpeg"></sub>
<br>Now, since Q1 and Q2 are matched and they have the same VBE, then the collector currents must be the same. This implies that 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image16.jpeg"></sub>
<br>This current mirror circuit will supply this current I as long as Q2 operates in the active region: V &gt; V<sub>BE</sub>- V<sub>EE</sub> Notice that the diode-connected Q1 cannot saturate since thebase and collector terminals are shorted together. Hence, Q1operates in the active mode or is simply cutoff. 
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
<br><b>Discuss about BJT here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for BJT</b>
<br>Discuss all your issues or difficulties on BJT</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/bjt_biasing_current_mirror.aspx"></asp:HyperLink> 
<br>I want do to this 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;socheat</b> 
</td>

      
      <td class="txt">
	<br>Jul 1, 7:35:08 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2399
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/bjt_biasing_current_mirror.aspx"></asp:HyperLink> 
<br>preparation for drdo 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;rinkumathur.1988</b> 
</td>

      
      <td class="txt">
	<br>Oct 16, 2:00:04 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>2745
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/bjt_biasing_current_mirror.aspx"></asp:HyperLink> 
<br>Its operation and manufacturing. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;dharmendra608@yahoo.in</b> 
</td>

      
      <td class="txt">
	<br>Apr 16, 6:54:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2607
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/bjt_biasing_current_mirror.aspx"></asp:HyperLink> 
<br>sssssssssssssssss 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;sunilkumarmishra88</b> 
</td>

      
      <td class="txt">
	<br>Dec 2, 4:03:32 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2866
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_biasing_current_mirror/image18.wmf"></sub>
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
