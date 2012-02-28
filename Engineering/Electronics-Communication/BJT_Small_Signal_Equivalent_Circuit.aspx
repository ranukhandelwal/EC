<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="BJT_Small_Signal_Equivalent_Circuit.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.BJT_Small_Signal_Equivalent_Circuit" %>
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
	signal models, there are two small-signal resistances that we must first determine. These are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image1.jpeg"></sub>
<br>1. r p: the small-signal, active mode input resistance between
<br>the base and emitter, as "seen looking into the base.” 2. re: the small-signal, active mode output resistance between the base and emitter, as "seen looking into the emitter.” These resistances are NOT the same. Why? Because the transistor is not a reciprocal device. Like a diode, the behavior of the BJT in the circuit changes if we interchange the terminals. 
<br><b>Determine r p</b>
<br>Assuming the transistor in this circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image2.jpeg"></sub>
<br>is operating in the active mode, then
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image3.jpeg"></sub>
<br>The AC small-signal equivalent circuit from
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image4.jpeg"></sub>
<br>Notice the "AC ground” in the circuit. This is an extremely important concept. Since the voltage at this terminal is held constant at VCC, there is no time variation of the voltage. Consequently, we can set this terminal to be an "AC ground” in the small-signal circuit. For AC grounds, we "kill” the DC sources at that terminal: short circuit voltage sources and open circuit current sources. So, from the small-signal equivalent circuit above: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image5.jpeg"></sub>
<br>we see that
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image6.jpeg"></sub>
<br>Hence, using (2) in (3) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image7.jpeg"></sub>
<br>This r p is the BJT active mode small-signal input resistance of
<br>the BJT between the base and the emitter as seen looking into the base terminal. (Similar to a Thévenin resistance, this statement means we are fictitiously separating the source from the base of the BJT and observing the input resistance, as indicated by the dashed line in Fig. 2.) 
<br><b>Determine re</b>
<br>We'll determine re following a similar procedure as for r p, but beginning with
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image8.jpeg"></sub>
<br>The AC component of i<sub>E</sub> in (5) is
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image9.jpeg"></sub>
<br>or with I<sub>E</sub> =I <sub>c</sub>|c , 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image10.jpeg"></sub>
<br>As indicated in Fig. 1 above, re is theBJT_Small-signal resistance between the emitter and base seen looking into the emitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image11.jpeg"></sub>
<br>Mathematically, this is stated as
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image12.jpeg"></sub>
<br>Assuming an ideal signal voltage source, then e be v<sub>e</sub>=-v<sub>be</sub> and
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image13.jpeg"></sub>
<br>Using (7) in this equation we find
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image14.jpeg"></sub>
<br>But from (5.87) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image15.jpeg"></sub>
<br>Therefore, using this last result in (10) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image16.jpeg"></sub>
<br>This is the BJT active mode small-signal resistance between the base and emitter seen looking into the emitter. It can be shown that R<sub>z=(b+1)re[ed] It is quite apparent from this equation that e r r p . . This result is not unexpected because the active mode BJT is a non-reciprocal device, as mentioned on page 1 of these notes. </sub><sub>
<br></sub><b><sub>BJT Small-Signal Equivalent Circuits</b></sub><sub>
<br>We are now in a position to construct the equivalent active mode, small-signal circuit models for the BJT. There are two families of such circuits: </sub><sub>
<br>1. Hybrid- p model</sub><sub>
<br>2. T model. </sub><sub>
<br>Both are equally valid models, but choosing one over the other sometimes leads to simpler analysis of certain circuits. </sub><sub>
<br></sub><b><sub>Hybrid- p Model</b></sub><sub>
<br>Version A. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image17.jpeg"></sub></sub><sub>
<br>Let's verify that this circuit incorporates all of the necessarysmall-signal characteristics of the BJT: ib= vbe |rp as required by (3). ic= gm vbe as required by (5.86), which we saw in the last lecture. ib+ ic= ie as required by KCL. </sub><sub>
<br>We can also show from these relationships that ie= vbe| re.</sub><sub>
<br>Version B. We can construct a second equivalent circuit by using</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image18.jpeg"></sub></sub><sub>
<br>Hence, using this result the second hybrid- p model is</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image19.jpeg"></sub></sub><sub>
<br></sub><b><sub>T Model</b></sub><sub>
<br>The hybrid- p model is definitely the most popular small-signal model for the BJT. The alternative is the T model, which is useful in certain situations. The T model also has two versions: </sub><sub>
<br>Version A. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image20.jpeg"></sub></sub><sub>
<br>Version B. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image21.jpeg"></sub></sub><sub>
<br>The small-signal models for pnp BJTs are identically the same as those shown here for the npn transistors. It is important to note that there is no change in any polarities (voltage or current) for the pnp models relative to the npn models. Again, these small-signal models are identically the same. </sub></td>

      
      <td class="txt">
	<br></td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_equivalent_circuit.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_equivalent_circuit.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_equivalent_circuit.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_equivalent_circuit.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_equivalent_circuit/image23.wmf"></sub>
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
