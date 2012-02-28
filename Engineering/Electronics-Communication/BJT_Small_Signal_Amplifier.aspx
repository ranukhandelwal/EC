<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="BJT_Small_Signal_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.BJT_Small_Signal_Amplifier" %>
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
	<b>BJT Small-Signal Amplifier Examples</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We will now consider three examples in this lecture of BJTs used as linear amplifiers. Here are the steps to follow when solving small-signal transistor amplifier problems: 
<br>1. Determine the Q point of the BJT using DC analysis. Compute I<sub>C</sub>.
<br>2. Calculate the small-signal model parameters for the BJT: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image1.jpeg"></sub>
<br>3. Rewrite the small-signal circuit: short out DC sources and open DC current sources. Use the small-signal model for the BJT. 
<br>4. Analyze the small-signal circuit for the desired quantities such as voltage, small-signal voltage gain, etc. 
<br>Example N15.1 (text example 5.14). Determine the small-signal AC voltage gain for the circuit below, assuming ß = 100 and the output voltage taken at the collector terminal. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image2.jpeg"></sub>
<br>The first step in the solution is to determine the Q point through DC analysis. By superposition, we'll force 0 i v = for this analysis. Assuming the BJT is in the active mode, the results of the DC analysis are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image3.jpeg"></sub>
<br>We see that the CBJ is reversed biased so this npn BJT is in the active mode because of this and the EBJ is forward biased. Next, we determine the BJT small-signal model parameters for the hybrid- p model: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image4.jpeg"></sub>
<br>Now, we insert a small-signal equivalent model of the BJT into the circuit of Fig. 5.53(a) after shorting the DC voltage sources (VBB and VCC). This gives the small-signal equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image5.jpeg"></sub>
<br>Notice the AC ground at RC. This is an "AC ground” because the voltage at this node does not vary with time. For the purposes of the AC signal analysis, we can set this node to an AC ground. (As a side note, in the lab power supplies have a finite internal resistance. This Thévenin equivalent resistance must be included in the AC circuit for analysis purposes.) Next, we perform the small-signal analysis referring to Fig. 5.53c. At the input
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image6.jpeg"></sub>
<br>while at the output
<br>v<sub>o</sub>=-R<sub>c</sub>i<sub>e</sub>=-R<sub>c</sub>g<sub>m</sub>V<sub>be</sub>
<br>Substituting for vbe from (4) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image7.jpeg"></sub>
<br>Therefore, the small-signal AC voltage gain, Av, is
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image8.jpeg"></sub>
<br>For this particular problem
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image9.jpeg"></sub>
<br>The negative sign indicates this is an inverting amplifier: the AC output signal is inverted with respect to the input AC signal. 
<br>Example N15.2 (text example 5.15). Repeat the analysis of the previous example but with a triangular input waveform of small amplitude. 
<br>In the text, v<sub>ip</sub> =0.8 V, is the peak amplitude of the triangularinput voltage (= V<sub>i</sub> in the text). Then from (4) above (and the fact that there are only resistors in the circuit) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image10.jpeg"></sub>
<br>which is less that 10 mV. This is fairly small with respect to 2 V<sub>T</sub> = 50mV so we'll go ahead and use the small-signal analysis and models. Sketches of the total voltages and currents from this circuit are shown 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image11.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image12.jpeg"></sub>
<br>A few things to take special notice: 
<br>&bull; In Fig. 5.54<sub>c</sub>, v<sub>BE</sub> has a DC part and an AC part (see Fig.5.54<sub>a</sub>) that is "riding” on the former. Notice the enlarged vertical scale in Fig. 5.54<sub>c</sub>
<br>&bull; In Fig. 5.54<sub>d</sub>, i<sub>c</sub> is in-phase with the input voltage. 
<br>&bull; In Fig. 5.54<sub>e</sub>, v<sub>c</sub>= V<sub>c</sub> -i<sub>c</sub>R<sub>c</sub> is 180&#176; out-of-phase with the input. As v<sub>i</sub> ,I<sub>c</sub>  . Þ v<sub>c</sub>. We can see how the AC ground works here. 
<br>Example N15.3 (text example 5.16). Determine the small-signal AC voltage gain for the BJT amplifier circuit shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image13.jpeg"></sub>
<br>The two capacitors in this circuit serve as DC blocks. They have a large enough C so that X<sub>c</sub>=0 . at the operating frequency. With these capacitors, the DC bias is unchanged by the source or load attachments. We call this “capacitively coupled” input and output. As always, we first determine the DC bias. We'll assume the BJT is in the active mode and that ß = 100: From this result
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image14.jpeg"></sub>
<br>From this result
<br>I<sub>c</sub>=0.92mAÞv<sub>c</sub>=-10+I<sub>c</sub>r<sub>c</sub>=-5.4V
<br>Next, we construct the small-signal equivalent circuit and analyze the circuit to determine the voltage gain. We'll use the T model, though the hybrid- p model would work as well. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image15.jpeg"></sub>
<br>Notice the two AC grounds in this circuit: one at RE and the other at RC. Also notice this is the first small-signal model of the pnp transistor we have used. The small-signal model of the pnp transistor is exactly the same as that for the npn with no change in the polarities of the currents or voltages. This can be a little confusing. Here, for example, ie is a negative quantity. Using (3) for the small-signal equivalent model of the BJT
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image16.jpeg"></sub>
<br>From the small-signal AC circuit: 
<br>&bull; v<sub>0</sub>=-a i<sub>e</sub>R<sub>c</sub>
<br>&bull; Because the base is grounded, I<sub>e</sub>=-V<sub>i</sub>|r<sub>e</sub>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image17.jpeg"></sub>
<br>Notice that this small-signal voltage gain is a positive quantity. The reason for this is the input is tied to the emitter. (Note that this positive gain did not occur just because this is a pnp BJT.) Now, with a = 0.99 then from (10) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image18.jpeg"></sub>
<br>Lastly, for linear operation of this amplifier, v<sub>eb</sub> mV. With V<sub>eb</sub>=-V<sub>i</sub>then V<sub>i</sub>@10 mV for linear operation of the amplifier, which implies that v<sub>0</sub>@1.8V A sketch of the output from this small-signal amplifier is shown in Fig. 5.57 for a sinusoidal input voltage: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image19.jpeg"></sub>
<br>We're assuming the output remains linear and the BJT in the active mode at all times for the entire voltage swing in vC. If this input voltage were set to a larger value, this would no longer be the case and the BJT would first encounter nonlinear behavior and eventually saturate. Both of these effects would distort the output voltage and it would no longer be an amplified copy of the input voltage. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/bjt_small_signal_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_small_signal_amplifier/image21.wmf"></sub>
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
