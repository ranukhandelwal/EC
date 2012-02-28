<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="MOSFET_Small-Signal_Amplifier_Examples.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.MOSFET_Small_Signal_Amplifier_Examples" %>
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
	<b>MOSFET Small-Signal Amplifier Examples</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>MOSFET Small-Signal Amplifier Examples.</b>
<br>We will illustrate the analysis of small-signal MOSFET amplifiers through two examples in this lecture. 
<br>Example N29.1 (text example 4.10). Determine Av (neglecting the effects of RG), Rin, and Rout for the circuit below given that
<br>V<sub>t</sub>=1.5V,K<sub>a</sub>W|L=0.25 MA /V<sup>2</sup>, and V<sub>A</sub>=50 V
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image1.jpeg"></sub>
<br>The first step is to determine the DC operating point. The DC equivalent circuit is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image2.jpeg"></sub>
<br>Since V<sub>g</sub> V<sub>D</sub> =0 &lt; the MOSFET is operating in the saturation mode if I<sub>D</sub> =0 So, neglecting ro and assuming operation in the saturation mode
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image3.jpeg"></sub>
<br>For this DC circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image4.jpeg"></sub>
<br>Notice in the circuit that V<sub>DS</sub>= V<sub>GS</sub> so that this last equation Becomes I<sub>D</sub>=0.125(V<sub>DS</sub>-1.5)<sup>2</sup>
<br>Also, by KVL V<sub>DS</sub>=15-R<sub>D</sub>I<sub>D</sub>=15-10,000 I<sub>D</sub>
<br>Substituting (2) into (1) I<sub>D</sub>=1.25*10<sup>-4</sup>(15-10000I<sub>D</sub>-1.5)<sup>2</sup>
<br>Solving this equation gives
<br>I<sub>D</sub>=1.06 mA =>  V<sub>DS=</sub>4.4 V (=V<sub>gs</sub> I<sub>D</sub>=1.72 mA =>  V<sub>DS=</sub>2.2 V (=V<sub>gs</sub>
<br>This latter result is not consistent with the assumption of operation in the saturation mode since V<sub>t</sub> &lt; V<sub>GS</sub> = 1.5V. So the proper solution for ID is the first ( I<sub>D</sub> =1.6 mA). 
<br>Next, we construct the small-signal equivalent circuit. We'll use the p small-signal model of the MOSFET with ro included: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image5.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image6.jpeg"></sub>
<br>To compute the small-signal voltage gain, we start at the output (assuming RG is extremely large R<sub>G</sub> &gt;&gt; r<sub>t</sub>0|| R<sub>D</sub>|| R<sub>L</sub> ) V<sub>0</sub>-g<sub>m</sub>V<sub>gs</sub>(r<sub>0</sub>||R<sub>D||</sub>R<sub>L</sub>)
<br>At the input notice that v<sub>gs</sub> = V<sub>i</sub>. Therefore
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image7.jpeg"></sub>
<br>Notice that the assumption R<sub>G</sub>|| r<sub>0</sub>|| R<sub>D</sub>|| R<sub>L</sub> is met and hugely exceeded since 10 MO &gt;&gt; 4,521 O. For the input resistance Rin calculation, we cannot set 0 gs v<sub>gs</sub> =0 and subsequently open circuit the dependent current source - since this would artificially force R<sub>in</sub> =0 . Rather, we need to determine ii as a function of vi and use this in the definition: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image8.jpeg"></sub>
<br>The dependent current source will remain in these calculations. Proceeding, at the input of the small-signal equivalent circuit shown above
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image9.jpeg"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image10.jpeg"></sub>
<br>Consequently, using this expression we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image11.jpeg"></sub>
<br>Lastly, to determine the output resistance, we can set 0 gs v = in the small-signal equivalent circuit above, which will open circuit the dependent current source leading to the equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image12.jpeg"></sub>
<br>from which we see that R<sub>out</sub> =||R<sub>0</sub> ||R<sub>D</sub>|| r =4 =5.2 kO
<br>Example N29.2 (text exercise 4.23). Determine the following quantities for the conceptual MOSFET small-signal amplifier of Fig. 4.34 given that VDD = 5 V, RD = 10 kO, and VGS = 2 V. 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image13.jpeg"></sub>
<br>The MOSFET characteristics are V<sub>t</sub> =1 V, k<sub>n</sub> ' =20 ?A/V<sup>2</sup> 2, W/L= 20, and . &lambda; = 0. 
<br>(a) Determine ID and VD. We see from the circuit that V<sub>t</sub> &gt;V<sub>t</sub> . Therefore, the MOSFET is operating in the saturation or triode mode. We'll assume saturation. In that case
<br>(b) <sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image14.jpeg"></sub>
<br>Let's check if the MOSFET is operating in the saturation mode: 
<br>V<sub>GD</sub>=2-3=-1&lt;V<sub>t</sub>
<br>(c) Determine gm. Using (4.61) 
<br>(d) <sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image15.jpeg"></sub>
<br>(c) Determine the voltage gain Av. We begin by first constructing the small-signal equivalent circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image16.jpeg"></sub>
<br>Directly from this circuit, 
<br>V<sub>0</sub>=-g<sub>g</sub>V<sub>gs</sub>R<sub>D</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image17.jpeg"></sub>
<br>(e) If ( ) 0.2sin v<sub>gs</sub> =0.2 V, find vd and the max/min vD. 
<br>(f) <sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image18.jpeg"></sub>
<br>Therefore, v<sub>d</sub> = - 0.8 (wt)V Hence V<sub>D</sub>|<sub>max</sub>=V<sub>D</sub>+V<sub>d</sub>=3+0.8=3.8V
<br>While V<sub>D</sub>|<sub>max</sub>=V<sub>D</sub>+V<sub>d</sub>=3-0.8=2.2V
<br>e) Determine the second harmonic distortion. From (4.57) or
<br>(6) in the previous lecture notes, the drain current is given as
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image19.jpeg"></sub>
<br>or
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image20.jpeg"></sub>
<br>Substituting sin v<sub>gs</sub> =0.2 sin into this equation gives 
<br>i<sub>D</sub>(wt)= I <sub>D</sub>+80*10<sup>-6</sup>sin (wt) t+8*10<sup>-6 sin 2(wt) Using the trigonometry identity sin2 =1 /2- (wt) 1 /2cos (wt). this last expression becomes</sup><sup>
<br>i</sup><sub>D</sub><sup>=200+80 sin (wt)+4-4 cos (2wt) uA i</sup><sub>D</sub><sup>=204+80 sin (wt)-4 cos (2wt) uA The first term in iD is ID, the DC current. We see that there is a slight shift upward in value by 4 </sup><sup>&mu;</sup><sup>A. </sup><sup>
<br>The third term in iD is the second harmonic term because it varies with time at twice the frequency of the input signal. The second harmonic distortion is</sup><sup>
<br>4 \80*100%=5% </sup>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_small-signal_amplifier_examples.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_small-signal_amplifier_examples/image22.wmf"></sub>
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
