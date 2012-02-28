<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="CMOS_Common_Gate_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.CMOS_Common_Gate_Amplifier" %>
<%@ MasterType VirtualPath="~/Masters/mosfetlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	source (such as the common gate amplifier), we don't want the source connected to the most negative voltage in the circuit (or whatever voltage is assigned to the body). 
<br>So instead, we'll connect VB to -VSS. The question now is what affect will this have on the device operation? Referring to Fig. 1, the resulting reverse-bias voltage between the source and body (VSB for NMOS): 
<br>1. Will widen the depletion region. 
<br>2. This, in turn, will decrease the channel depth. (To return the channel to its original depth, vGS would need to be increased.) It can be shown that this effect of VSB on the channel can be modeled as simply a change in the threshold voltage according to
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image1.jpeg"></sub>
<br>&bull; V<sub>t0</sub> is the threshold voltage for V <sub>SB</sub>=0
<br>&bull; 2 &phi;<sub>f</sub> is the material dependent Fermi potential (often 2 &phi;<sub>f</sub>&#8776 0.6 V for NMOS) 
<br>&bull; &gamma; is a fabrication process parameter (the body-effect parameter) given as
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image2.jpeg"></sub>
<br>(often &gamma; 0.4 FONT FACE="Symbol"&gt;» V<sup>1/2</sup>).
<br>Notice in (1) that with this body effect a change in VSB produces a change in Vt. This change in Vt will change iD, even though vGS doesn't change. (Why? Because the channel depth changes with changing VSB, as we've just learned.) Consequently, this body voltage VSB controls iD like vGS does.In other words, the body is acting like a second gate (of sorts), sometimes called the backgate. This phenomenon is called the body effect. It can degrade the performance of MOSFET amplifiers in some cases. 
<br><b>Small-Signal Modeling of the Body Effect</b>
<br>A change in the body-to-source voltage vBS will cause a change in the drain current iD, as we've just seen. This behavior can be quantified for time varying signals by the relationship
<br>i<sub>d</sub>= g<sub>md</sub> v<sub>bs</sub>
<br>where gmb is the so-called body conductance
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image3.jpeg"></sub>
<br>It can be shown that
<br>g<sub>mb</sub>=xg<sub>m</sub>[s] 
<br>where is dimensionless and typically lies in value between 0.1 and 0.3.For small-signal modeling, in light of (3) a second dependent current source is added to the MOSFET equivalent circuit, as shown in Fig 4.41, which is dependent on vbs. 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image4.jpeg"></sub>
<br>Alternatively, the small-signal T model for the MOSFET amplifier including the body effect is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image5.jpeg"></sub>
<br><b>Common Gate Amplifier with Active Load</b>
<br>The text models the active load for this CG amplifier as a simple ideal current source as shown in Fig. 6.27(a): 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image6.jpeg"></sub>
<br>Note here that the body terminal is not connected to the source terminal, but rather is connected to the lowest voltage in the circuit (ground). Because of this we need to account for the body effect in the small-signal T model of this amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image7.jpeg"></sub>
<br>Notice that we've incorporated the body effect into the T smallsignal model of the MOSFET. Because the gate and body are both grounded in Fig. 2, then
<br>V<sub>gs</sub>=V<sub>bs</sub>
<br>Consequently, the body effect in this CG amplifier can be completely accounted for by simply replacing gm of the MOSFET with g<sub>m</sub> + g<sub>mb</sub>. That is, 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image8.jpeg"></sub>
<br><b>Small-Signal Amplifier Characteristics</b>
<br>We'll calculate the following small-signal quantities for this CMOS common gate amplifier: Rin, Av, Gv, Gi, and Rout. 
<br>&bull; Input resistance, Rin. Using KCL at the source terminal in Fig. 2 as well as (6) we find
<br>i<sub>+</sub>(g<sub>m</sub>+g<sub>mb</sub>)<sup>v</sup><sub>gs</sub>=i<sub>r0</sub>
<br>An important insight into this circuit can be realized by examining the "supernode” contained in the dashed outline in the small-signal circuit. Because 0 g b i i = = , applying KCL to this supernode
<br>i<sub>0</sub>=i<sub>i</sub>
<br>Since v<sub>gs</sub>=- v<sub>i</sub> and
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image9.jpeg"></sub>
<br>then (8) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image10.jpeg"></sub>
<br>From this result, we can quickly determine that
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image11.jpeg"></sub>
<br>We see from this expression that the body effect tends to reduce the input resistance. Notice that Rin depends on RL. This type of amplifier is called a bilateral am plifier, in contrast to a unilateral amplifier in which Rin is not dependent on RL. 
<br>&bull; Partial small-signal voltage gain, Av. At the output side of the small-signal circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image12.jpeg"></sub>
<br>while at the input
<br>V<sub>i</sub>=i<sub>i</sub>R<sub>in</sub>
<br>Dividing these two equations we arrive at the partial smallsignal voltage gain
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image13.jpeg"></sub>
<br>Here we see that the body effect tends to increase Av. 
<br>&bull; Overall small-signal voltage gain, Gv. As we have done many times in the past for other types of amplifiers
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image14.jpeg"></sub>
<br>Substituting for Av from (15) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image15.jpeg"></sub>
<br>Since the body effect tends to reduce Rin, we see from this expression that it tends to increase Gv. 
<br>&bull; Overall small-signal current gain, Gi. From (9) we see directly that
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image16.jpeg"></sub>
<br>&bull; Output resistance, Rout. To determine Rout from the smallsignal circuit above we set v<sub>sig</sub> =0 and apply a fictitious AC voltage source vx at the output as shown: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image17.jpeg"></sub>
<br>We can see that with vx attached, the voltage vgs will not usually be zero. This means the current in the dependent current source is also not zero. Consequently, we need to analyze this circuit - including the effects of the dependent current source - to determine the output resistance. Employing KCL at the drain terminal
<br>i<sub>x</sub>+i<sub>x0</sub>=(g<sub>m</sub>g<sub>mb</sub>)V<sub>gs</sub>
<br>It is easy to see in Fig. 3 that
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image18.jpeg"></sub>
<br>Applying KCL to the supernode indicated in Fig. 3, we find
<br>i<sub>1</sub> =i<sub>x</sub>
<br>Because
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image19.jpeg"></sub>
<br>then using this in (20) and substituting into (19) 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image20.jpeg"></sub>
<br>From the small-signal circuit in Fig. 3
<br>V<sub>gs</sub>=- V<sub>s</sub>=-i<sub>x</sub>R<sub>sig</sub>
<br>Substituting (24) into (23) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image21.jpeg"></sub>
<br>or rearranging
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image22.jpeg"></sub>
<br>We see from this result that the body effect tends to increase Rout. Since Rout depends on Rsig, this is another reason why this amplifier is a bilateral rather than a unilateral amplifier. 
<br><b>Summary of the Small-Signal Characteristics</b>
<br>In summary, we find for the CG small-signal amplifier: 
<br>o A non-inverting amplifier [see (17) and (18)]. 
<br>o Moderately large input resistance. From (12), with r<sub>0</sub> =&phi; (10<sup> 5</sup>) ,R<sub>in</sub> = &phi; (10<sup>3</sup>), g<sub>m</sub> ,g<sub>mb</sub>- = O (10<sup>10-3</sup>), then from (12),R<sub>in</sub> &phi;=(10<sup>3</sup>)
<br>o Relatively modest small-signal voltage, depending on the choices for RL and Rsig [see (17)]. 
<br>o Small-signal current gain equal to one [see (18)]. 
<br>o Potentially very large output resistance [see (25)]. 
<br>These are characteristics similar to the discrete version of the common gate amplifier we discussed in the previous lecture. No surprise. </td>

      
      <td class="txt">
	<br></td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_gate_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_gate_amplifier/image24.wmf"></sub>
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
