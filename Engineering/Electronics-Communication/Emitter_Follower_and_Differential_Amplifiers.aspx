<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Emitter_Follower_and_Differential_Amplifiers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Emitter_Follower_and_Differential_Amplifiers" %>
<%@ MasterType VirtualPath="~/Masters/ec2links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Emitter Follower and Differential Amplifiers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Emitter Follower and Differential Amplifiers</b>
<br>The next two amplifier circuits we will discuss are very important to electrical engineering in general, and to the NorCal 40A specifically.However, neither of these amplifiers appears in discrete form in the NorCal 40A. Instead, you will find these amplifiers performing their important functions inside ICs. 
<br><b>Emitter Follower (aka Common Collector) Amplifier</b>
<br>A typical emitter follower amplifier is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image1.gif"></sub>
<br>There are two big differences between this amplifier and the common emitter amplifier: 
<br>1. there is no collector resistor, 
<br>2. the output voltage is taken at the emitter. There are four important characteristics of the emitter follower amplifier (presented here without derivation): 
<br>1. voltage gain ?? 1, 
<br>2. current gain &gt; 1, 
<br>3. high input impedance, 
<br>4. low output impedance (?1 ?). 
<br>Consequently, the emitter follower is useful as
<br>1. a buffer amplifier, 
<br>2. an almost ideal voltage source. 
<br>In the NorCal 40A, emitter followers can be found internally in the: 
<br>1. Audio Amplifier U3 (LM 386). See the equivalent schematic on p. 399. 
<br>2. Oscillator circuits of the Product Detector U2 and the Transmit Mixer U4. Both are SA602 ICs. See the equivalent circuit shown in Fig. 4 on p. 419 of the text. 
<br><b>Differential Amplifier</b>
<br>This is probably a new circuit for you. The differential amplifier is an interesting circuit in that it amplifies only a difference in the two input voltages. 
<br>Actually, you've used differential amplifiers for years now, though you probably didn't know it. A differential amplifier appears as the input circuit for an operational amplifier. It is this circuit that gives rise to the familiar v<sub>0</sub>= A(v<sub>+ </sub>?V<sub>?</sub>) relationship for the op amp (where A is the open-loop gain). The differential amplifier also appears in the Audio Amplifier and the SA602 mixer ICs in the NorCal 40A. In the latter case, the diff amps appear in the form of Gilbert Cells (see p. 227). We will spend some time here on the operation of the differential amplifier, considering its importance to the mixing process. 
<br>A typical differential amplifier is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image2.gif"></sub>
<br>It's important that the circuit have matched transistors and resistors for satisfactory performance (more specifically, to ensure symmetry in the circuit). 
<br>This diff amp is a moderately complicated circuit to analyze. A relatively simple method of analysis, however, is to consider two special cases of input signals: 
<br>1. v<sub>i1</sub> = ?v<sub>i2</sub> , called the differential (or "odd”) input, 
<br>2. v<sub>i1</sub> = v<sub>i2</sub> , called the common-mode (or "even”) input. 
<br>After determining the response of the diff amp to each of these two excitations, arbitrary combinations of inputs can be analyzed as weighted combinations of these two. 
<br>I. Differential Input,v<sub>i1</sub> = ?v<sub>i2</sub> : For these input voltages, 
<br>I<sub>e1</sub>=-i<sub>e2</sub> =>  i<sub>t</sub>=i<sub>e1</sub>+i<sub>e2</sub>=0
<br>With each amplifier effectively grounded at Rt, then we can use the common-emitter amplifier gain
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image3.gif"></sub>
<br>To give
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image4.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image5.gif"></sub>
<br>The output voltage for this specific input combination is defined as the differential output voltage v<sub>d</sub> as
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image6.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image7.gif"></sub>
<br>where v<sub>id</sub> ? v<sub>i1</sub> ? v<sub>i2</sub> is the differential input voltage. Therefore, the differential gain G<sub>d</sub> is
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image8.gif"></sub>
<br>Note that this is the same gain for just one half of the differential amplifier. 
<br>II. Common-Mode Input, v<sub>i1</sub> = v<sub>i2</sub> : For these input voltages, 
<br>i<sub>e1</sub> = i<sub>e2</sub> ? i<sub>te</sub> = i<sub>e1</sub> + i<sub>e2</sub>
<br>Applying KVL through the transistor bases to Rt and then to ground, the input voltages can be expressed as
<br>v<sub>i1</sub> = R<sub>e</sub> i <sub>e1</sub>+ R<sub>t</sub> i<sub>t</sub> =( R<sub>e</sub> + 2R <sub>t</sub>)i<sub>e1</sub> 
<br>v<sub>i2</sub> = R<sub>e</sub> i <sub>e2</sub>+ R <sub>t</sub>i <sub>t</sub>=( R<sub>e</sub> + 2R<sub>t</sub>) i<sub>e2</sub>
<br>The last equalities use the relationships i<sub>t</sub> = 2i <sub>e2</sub> and i<sub>t</sub> = 2i<sub>e2</sub> ,respectively. 
<br>Next, using KVL from Vcc to v1 (ac signals only) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image9.gif"></sub>
<br>Similarly, it can be shown that
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image10.gif"></sub>
<br>Notice that with this common-mode input, both v1 and v2 are equal. Consequently, the output voltage is
<br>v<sub>0</sub>= v<sub>1</sub> ? v<sub>2</sub> = 0
<br>This last result clearly shows that the differential amplifier does not amplify signals that are common to both inputs. Cool! Since these voltages v<sub>1</sub> and v<sub>2</sub> are the same, we define either of them as the common-mode voltage vc
<br>v <sub>c</sub>= v<sub>1</sub> = v<sub>2</sub>
<br>so that
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image11.gif"></sub>
<br>Using 
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image12.gif"></sub>
<br>where v<sub>ic</sub> = v<sub>i1</sub> = v<sub>i2</sub> . Hence, the common-mode gain G<sub>c</sub> is
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image13.gif"></sub>
<br><b>Differential Amplifiers in the SA602 Mixers</b>
<br>As mentioned previously, the differential amplifier plays a critical role in the SA602 mixer. Specifically, the diff amp appears as the two input terminals 1 and 2 (see p. 419). However, in the NorCal 40A, only one diff amp input is connected to the signal (SA602 pin 1). The other input (pin 2) is connected to ground (through a dc block capacitor). This input configuration is not one of the two considered earlier. We can account for this type of input, however, simply as a weighted sum of differential and common-mode inputs. That is, in order to account for the inputs v<sub>i1</sub> = v<sub>i</sub> and v<sub>i2</sub> = 0, use (1) and
<br>(2) to yield: 
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image14.gif"></sub>
<br>Let's check that weighted sums of these two inputs (9.70) and (9.71) are indeed equivalent to the desired inputs v<sub>i1</sub> = v<sub>i</sub> and v<sub>i2</sub> =0 . First, calculate (9.70)+2?(9.71) (i.e., the sum v<sub>id</sub> + 2v<sub>ic</sub> ) giving
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image15.gif"></sub>
<br>Next, calculate 2?(9.71)-(9.70) (i.e., the sum 2 v<sub>ic</sub> ?v ) giving
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image16.gif"></sub>
<br><b>Summary of Common and Differential Inputs</b>
<br>The check we just performed illustrates the usefulness of the common and differential input analysis. We began with
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image17.gif"></sub>
<br>Then we asked: What v and v<sub>ic</sub> (differential and commonmode inputs) yield the same v<sub>1</sub> and v<sub>2</sub> as for the non-symmetric inputs shown above? The answers, as we just saw, are
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image18.gif"></sub>
<br>Expanding these two results, we find from (9.59) that
<br>V<sub>d</sub>=V<sub>1</sub>-V<sub>2</sub>=G<sub>d</sub>V<sub>id</sub>=G<sub>d</sub>V<sub>i</sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image19.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
	<br>6859
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
	<br>7541
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
	<br>19140
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/emitter_follower_and_differential_amplifiers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_emitter_follower_and_differential_amplifiers/image21.wmf"></sub>
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
