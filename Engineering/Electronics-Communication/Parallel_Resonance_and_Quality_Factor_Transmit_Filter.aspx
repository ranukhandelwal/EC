<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Parallel_Resonance_and_Quality_Factor_Transmit_Filter.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Parallel_Resonance_and_Quality_Factor_Transmit_Filter" %>
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
	<b>Parallel Resonance and Quality Factor Transmit Filter</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Parallel Resonance and Quality Factor. Transmit Filter</b>
<br>As we saw in the last lecture, in order for a series RLC circuit to possess a large Q the reactance of L or C (at resonance) must be much larger than the resistance: 
<br>. 
<br>Consequently, if we desire a large Q (very good frequency selectivity) in a series "tank” circuit, the resistance should be relatively small (for a reasonable X). For example, a resistance of 50 ? - 75 ? is common for receivers and some antennas. This relatively small resistance is seen by the RF Filter in the NorCal 40A, which uses a series RLC filter. 
<br><b>Parallel Resonance</b>
<br>However, if the "load” resistance in the circuit is relatively large, it becomes more difficult to achieve the high reactances at resonance necessary for a high-Q series RLC circuit. If this is the case - and it often is in the NorCal 40A - then a designer needs to use a parallel resonant RLC circuit 
<br>
<br>For this parallel RLC circuit
<br>
<br>which is the inverse of Qs. Following the analysis in the text (Section 3.7), we find that the frequency response is similar to a series RLC circuit
<br>
<br>For a high-Q parallel resonant circuit, we need a small reactance of L or C (at resonance) compared to the resistance. Sometimes this is easier to do when R is large in a parallel RLC circuit than with a high reactance in a series RLC circuit. 
<br><b>Examples</b><b>:</b>
<br>7.00E+06 = resonant frequency 15 = Qp = Qs = Q
<br>
<br>The green highlighted case is close to the RF Filter in the NorCal 40A (series RLC). 7.00E+06 = resonant frequency 100 = Qp = Qs = Q
<br>
<br>Three things we can observe from these examples: 
<br>1. For higher Q in a series RLC (at fixed R) we need to use a larger L or a smaller C (larger reactance for L and C). 
<br>2. For higher Q in a parallel RLC (at fixed R) we need to use a smaller L or a larger C (smaller reactance for L and C). 
<br>3. For a fixed R, smaller L and larger C (smaller reactance for both L and C) are needed in a parallel RLC circuit to achieve the same Q as a series RLC. Also, as mentioned in the text
<br>
<br>which is the same expression as for Qs. A number of parallel RLC circuits are used in the NorCal 40A. One of these is the Transmit Filter constructed in Prob. 9. 
<br><b>Transmit Filter</b>
<br>The Transmit Filter is a "modified parallel RLC circuit” (see inside front cover). The Transmit Filter is mainly used to filter all harmonics other than 7 MHz coming from the Transmit Mixer see Fig
<br>
<br>This is not a true parallel RLC circuit in the sense of Fig. 3.7a. It is important to analyze this circuit for use in Prob. 9. First, we'll combine C38 and C39 and include losses from L6: 
<br>
<br>We'll use a Norton equivalent circuit for Vin and Cc: 
<br>
<br>Using this in the previous circuit: 
<br>
<br>which we can reduce to
<br>
<br>This is still not a parallel RLC form. Instead, this is called an "RL-parallel-C” (RL||C) circuit. The characteristics of this circuit (and the RC||L) are listed at the end of this lecture (from Krauss, et al. "Solid State Radio Engineering”). Here are those characteristics of the RL||C circuit important to us right now: 
<br>
<br>What is particularly relevant here are the approximate expressions for large Qt. These are precisely the same equations for a standard RLC circuit, but with an Rt: 
<br>
<br>Rt is not an actual resistor but rather an effective resistance. This Rt is quite large in the Transmit Filter. Let's check some numbers for the NorCal 40A: 
<br>
<br>What is the resistance of L6 at 7 MHz? Not as obvious as it looks. (Due to the skin effect, the resistance of wire changes with frequency.) Let's assume R<sub>L6</sub> ?1 ?. Then, 
<br>
<br>Whoa! That's big. The Q of this RL||C Transmit Filter should then be
<br>
<br>That's a respectable Q for a discrete-element RLC circuit. Your measured value will probably be less than this (more losses). 
<br><b>Summary</b>
<br>The Transmit Filter shown on p. 4 of this lecture can be modeled by an effective parallel RLC circuit shown on the previous page. It is emphasized that Rt is not an actual resistor, but rather an effective resistance due to losses in L6 and other effects mentioned in Prob. 9. You can use the analysis shown here to help with your solution and measurements in Prob. 9. 
<br>Lastly, you will find through measurements that this "modified parallel RLC circuit” has a much larger Q than if C37 were removed (yielding just a regular parallel RLC tank). Interesting! 
<br><b>Winding Inductors and Soldering Magnet Wire</b>
<br>You will wind the inductor L6 that is used in the Transmit Filter. It is specified in the circuit schematic to be constructed from 28 turns of wire on a T37-2 core, which is a toroid of 0.37-in diameter constructed from a #2-mix iron powder. 
<br>
<br>It is important you develop the habit of winding the toroids as illustrated in the text and in the NorCal40A Assembly Manual tutorial. Hold the toroid in your left hand and begin threading the wire through the top center of the toroid with your right. Each time the wire passes through the center of the toroid is considered one turn. 
<br>You'll need a small piece of fine sandpaper to clean the varnish off the ends of the magnet wire before soldering. Not removing ALL of the varnish will likely cause big problems because of poor ohmic contact. I check the continuity between the solder pad and a portion of the magnet wire sticking up through the solder meniscus to confirm good ohmic contact. 
<br>
<br>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>sir,
<br>plz send me the notes for fourier transforms its very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>shruthi.s</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match</b><b> filter</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>heloo sir ,i want a tutorial for match filter.plz send it as soon as possible it is very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>richa</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic</b><b> circuits</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>I want lecture notes for single phase ac &amp; 3phase ac circuits 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>kalaivanisudhagar</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro</b><b> statics</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>what is the work done to move a charge? derive an expression for assembling a configuration of point charges
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>harismhkt</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>i want lcr circiut teorems derivations 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>harismhkt</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>i want oscillator frequency derivations for all. plz let me know from where i can get that 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>shruthi.s</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
<br>I WANT A TUTORIAL FOR CMOS TRANSISTORS. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>maroofalamkhan</b> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in </b><b>ies</b><b> in </b><b>indore</b>" NavigateUrl="~/engineering/electronics-communication/parallel_resonance_and_quality_factor_transmit_filter.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_parallel_resonance_and_quality_factor_transmit_filter/image2.wmf"></sub>
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
