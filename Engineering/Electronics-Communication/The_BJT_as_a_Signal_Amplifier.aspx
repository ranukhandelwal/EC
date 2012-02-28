<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="The_BJT_as_a_Signal_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.The_BJT_as_a_Signal_Amplifier" %>
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
	<b>The BJT as a Signal Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>One very useful application of the transistor is an amplifier of time varying signals. Consider the "conceptual BJT amplifier” circuit shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image1.jpeg"></sub>
<br>The DC voltages provide the biasing. The input signal is vbe and the output signal is vc. We will assume the transistor is biased so that VC is greater than VB by an amount that llows for sufficient "signal swing” at the collector, but the transistor remains in the active mode at all times. That is, the transistor does not become saturated or cutoff during the cycle. From the circuit above, the total base-to-emitter voltage is 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image2.jpeg"></sub>
<br>Correspondingly, the collector current is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image3.jpeg"></sub>
<br>or using (5.53) i<sub>c</sub>=I<sub>c</sub><sup>e</sup>
<br>For small vbe such that V<sub>be</sub>&lt;&lt;2V<sub>Vr</sub> (i.e., the small-signal approximation), then (3) can be approximated by
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image4.jpeg"></sub>
<br>This is a familiar result: We saw something very similar with small signals and diodes back in Lecture 4.The time varying current in (4) 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image5.jpeg"></sub>
<br>Can be written as i<sub>c</sub>=g<sub>w</sub>V<sub>be</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image6.jpeg"></sub>
<br>is defined as the transistor small-signal transconductance. Its units are Siemens. Note that g<sub>m</sub>I<sub>c</sub>. 
<br><b>Significance of the BJT Small-Signal Transconductance </b>
<br>What is the physical significance of gm? First, gm is the slope of the iC-vBE characteristic curve at the Q point: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image7.jpeg"></sub>
<br>Consider the plot shown in Fig. 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image8.jpeg"></sub>
<br>with i<sub>c</sub>= I<sub>s</sub><sup>e</sup> from (2), the right-hand side of (8) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image9.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image10.jpeg"></sub>therefore 
<br>as we defined in (6). Observe that: 
<br>&bull; The small-signal vbe assumption restricts the operation of the BJT to nearly linear portions of the iC-vBE characteristic curve. 
<br>&bull; From (6), the BJT behaves as a voltage controlled current source for small signals: The small-signal be v controls the small-signal i<sub>c</sub>
<br><b>Signal Voltage Gain</b>
<br>Second, gm has an important relationship to the signal voltage gain in this circuit. Using KVL in Fig. 5.48a, the total collector voltage is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image11.jpeg"></sub>
<br>where VC is the DC voltage at the collector. So from (11), the AC signal at the collector is V<sub>c</sub>=-I<sub>c</sub>R<sub>c</sub> This result is negative, which means this circuit operates as an inverting amplifier for small, time varying signals. From (6), c mbe i<sub>c</sub>= g<sub>m</sub> v<sub>be</sub> = . Using this result in (12) gives V<sub>c</sub>=-g<sub>m</sub>V<sub>be</sub>R<sub>c</sub>=-(g<sub>m</sub>R<sub>c</sub>)<sub>vbe</sub> 
<br>Consequently, the small-signal AC voltage gain Av is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image12.jpeg"></sub>
<br>In a broad sense, we can see that this transistor circuit can act an amplifier of the time varying input signal, provided this input voltage remains small enough. 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image13.jpeg"></sub>
<br>gm is a very important amplifier parameter since the voltage gain in (14) is directly proportional to gm. BJTs have a relatively large gm compared to field effect transistors, which we will consider in the next chapter. Consequently, BJTs have better voltage gain in such circuits. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/the_bjt_as_a_signal_amplifier.aspx"></asp:HyperLink> 
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
	<br>2388
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/the_bjt_as_a_signal_amplifier.aspx"></asp:HyperLink> 
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
	<br>2730
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/the_bjt_as_a_signal_amplifier.aspx"></asp:HyperLink> 
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
	<br>2595
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/the_bjt_as_a_signal_amplifier.aspx"></asp:HyperLink> 
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
	<br>2855
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image16.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_bjt_as_a_signal_amplifier/image16.wmf"></sub>
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
