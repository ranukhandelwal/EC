<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="Common_Source_Amplifier_with.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Common_Source_Amplifier_with" %>
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
	<b>Common Source Amplifier with Source Degeneration</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Common Source Amplifier with Source Degeneration.</b>
<br>The small-signal amplification performance of the CS amplifier discussed in the previous lecture can be improved by including a series resistance in the source circuit. (This is very similar - if not identical - to the effect of adding emitter degeneration to the BJT CE amplifier.) This so-called CS amplifier with source degeneration circuit is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image1.jpeg"></sub>
<br>We have a choice of small-signal models to use for the MOSFET. A T model will simplify the analysis, on one hand, by allowing us to incorporate the effects of RS by simply adding this value to 1/gm in the small-signal model, if we ignore ro. This small-signal circuit is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image2.jpeg"></sub>
<br>On the other hand, using the T model makes the analysis more difficult when ro is included. (The hybrid ð model is better at easily including the effects of ro.) However, ro in the MOSFET amplifier is large so we can reasonably ignore its effects for now in the expectation of making the analysis more tractable. 
<br><b>Small-Signal Amplifier Characteristics</b>
<br>We'll now calculate the following small-signal quantities for this MOSFET common source amplifier with source degeneration: Rin, Av, Gv, Gi, and Rout. 
<br>&bull; Input resistance, Rin. Referring to the small-signal equivalent circuit above in with I <sub>g</sub>=0 then
<br>R<sub>in </sub>= R<sub>g</sub>
<br>&bull; Partial small-signal voltage gain, Av. We see at the output side of the small-signal circuit in 
<br>V<sub>0</sub>= - g<sub>m</sub>V<sub>gs</sub>(R<sub>D</sub>||R<sub>L</sub>)
<br>which is the same result (ignoring ro) as we found for the CS amplifier without source generation. At the gate, however, we find through voltage division that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image3.jpeg"></sub>
<br>This is a different result than for the CS amplifier in that vgs is only a fraction of vi here, whereas v<sub>gs</sub> =V<sub>i</sub> without RS. Substituting (3) into (2), gives the partial small-signal AC voltage gain to be
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image4.jpeg"></sub>
<br>&bull; Overall small-signal voltage gain, Gv. As we did in the previous lecture, we can derive an expression for Gv in terms of Av. By definition, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image5.jpeg"></sub>
<br>Applying voltage division at the input of the small-signal equivalent circuit in Fig. 4.44(b), 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image6.jpeg"></sub>
<br>Substituting (6) into (5) we the overall small-signal AC voltage gain for this CS amplifier with source degeneration to be
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image7.jpeg"></sub>
<br>&bull; Overall small-signal current gain, Gi. Using current division at the output in the small-signal model above in
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image8.jpeg"></sub>
<br>while at the input, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image9.jpeg"></sub>
<br>Substituting (9) into (8) we find that the overall small-signal AC current gain is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image10.jpeg"></sub>
<br>&bull; Output resistance, Rout. From the small-signal circuit in with v<sub>sig</sub> =0 then i must be zero leading to
<br>R<sub>out</sub>= R<sub>RD</sub> 
<br><b>Discussion</b>
<br>Adding RS has a number of effects on the CS amplifier. (Notice, though, that it doesn't affect the input and output resistances.) First, observe from (3) 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image11.jpeg"></sub>
<br>that we can employ RS as a tool to lower vgs relative to vi and lessen the effects of nonlinear distortion. This RS also has the effect of lowering the small-signal voltage gain, which we can directly see from (7). A major benefit, though, of using RS is that the small-signal voltage (and current) gain can be made much less dependent on the MOSFET device characteristics. (We saw a similar effect in the CE BJT amplifier with emitter degeneration.) We can see this here for the MOSFET CS amplifier using (7) 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image12.jpeg"></sub>
<br>The key factor in this expression is the second one. In the case that g<sub>m</sub> R<sub>S</sub> &gt;&gt; 1 then
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image13.jpeg"></sub>
<br>which is no longer dependent on gm. Conversely, without RS in the circuit ( R<sub>s</sub> =0 ), we see from (7) that G<sub>v</sub>&alpha; g<sub>m</sub> . and is directly dependent on the physical properties of the transistor (and the biasing) because
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image14.jpeg"></sub>
<br>in the case of an NMOS device. The "price” we pay for this desirable behavior in (12) – where Gv is not dependent on gm – is a reduced value for Gv. This Gv is largest when R<sub>s</sub> =0 , as can be seen from (7). 
<br>Example N32.1 (based on text exercises 4.32 and 4.33). Compute the small-signal voltage gain for the circuit below with R<sub>s</sub> =0 , k<sub>n</sub><sup>'</sup> W/ L' =1 mA/V<sup>2</sup> and Vt = 1.5 V. For a 0.4-Vpp sinusoidal input voltage, what is the amplitude of the output signal? 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image15.jpeg"></sub>
<br>For the DC analysis, we see that V<sub>G</sub> =0 and I<sub>D</sub>= I<sub>S</sub> = 0.5 mA. (Why is V<sub>G</sub> = 0?) Consequently, 
<br>V<sub>D</sub> =10 - R<sub>D</sub>I<sub>D</sub> =10 -14 K &bull;5m = 3V Assuming MOSFET operation in the saturation mode
<br>Assuming MOSFET operation in the saturation mode
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image16.jpeg"></sub>
<br>such that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image17.jpeg"></sub>
<br>or
<br>V<sub>GS</sub>-1.5=+1 V<sub>GS</sub>=2.5 or 0.5V
<br>Therefore 
<br>V<sub>s</sub> = - 2.5 V
<br>for operation in the saturation mode. For the AC analysis, from (13) g&lt;<sub>m</sub>= 10=(2.5-1.5)=1 mS Using this result in (7) with R<sub>s</sub> =0 gives
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image18.jpeg"></sub>
<br>For an input sinusoid with 0.4-Vpp amplitude, then
<br>V<sub>0</sub>G<sub>v</sub> . V<sub>sig</sub>=6.85.0.4 V <sub>pp</sub> = 2.74 V<sub>pp</sub>
<br>Will the MOSFET remain in the saturation mode for the entire cycle of this output voltage? For operation in the saturation mode, v<sub>DG</sub>= v<sub>D</sub> &gt;V<sub>t</sub> = 1.5 V. On the negative swing of the output voltage, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image19.jpeg"></sub>
<br>which is greater than Vt, so the MOSFET will not leave the saturation mode on the negative swings of the output voltage. On the positive swings, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image20.jpeg"></sub>
<br>which is less than V<sub>DD</sub> = 10 V so the MOSFET will not cutoff and leave the saturation mode. (Interestingly, the MOSFET does leave the saturation mode on the negative swings for 15 R<sub>D</sub>= R<sub>L</sub> = 15 k beta, as used in the text exercises 4.32 and 4.33.) Lastly, imagine that for some reason the input voltage is increased by a factor of 3 (to 1.2 Vpp). What value of RS can be used to keep the output voltage unchanged? 
<br>Lastly, imagine that for some reason the input voltage is increased by a factor of 3 (to 1.2 Vpp). What value of RS can be used to keep the output voltage unchanged? From (7), we can choose RS so that the so-called feedback factor 1+ g<sub>m</sub> R<sub>s</sub> equals 3. The output voltage amplitude will then be unchanged with this increased input voltage.Hence, for
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image21.jpeg"></sub>
<br>With R <sub>s</sub>=2 k beta the new overall small-signal AC voltage gain is from (7) 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image22.jpeg"></sub>
<br>The overall small-signal voltage gain has gone down, but the amplitude of the output voltage has stayed the same since the input voltage amplitude was increased. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/common_source_amplifier_with.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_source_amplifier_with/image24.wmf"></sub>
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
