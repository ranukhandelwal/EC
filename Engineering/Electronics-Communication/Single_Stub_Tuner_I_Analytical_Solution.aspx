<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Single_Stub_Tuner_I_Analytical_Solution.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Single_Stub_Tuner_I_Analytical_Solution" %>
<%@ MasterType VirtualPath="~/Masters/emlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Single Stub Tuner I Analytical Solution</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Single Stub Tuner I Analytical Solution.</b>
<br>Instead of requiring a special &lambda;/4-length of TL to a match a load to a TL, as discussed in the last lecture, other matching techniques can be used. One of these is the single-stub tuner that we will discuss in this and the next lecture. The single-stub tuner uses a shorted (or open) section of TL attached at some position along the TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image1.gif"></sub>
<br>The shorted section is called the stub. All pieces of TL will be assumed to have the same Z<sub>0</sub> and &beta; , although this is not necessary. Why a shorted section? These are easy to fabricate and the length can be made adjustable using a "slip sheath.” In addition, no power is dissipated in this stub. In the analysis of stub matching networks, it is more convenient to work with admittances rather than impedances since we are dealing with parallel connections. The total TL admittance Y (d ) at some position d and TL characteristic admittance 0 Y<sub>0</sub> are defined as 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image2.gif"></sub>
<br>Consequently, the normalized TL admittance is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image3.gif"></sub>
<br>Where by 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image4.gif"></sub>
<br>From the above TL figure and (1) we see that for a matched TL (d &gt; d<sub>s</sub> ) requires
<br>y<sub>in</sub> = 1
<br>The goal of the single-stub tuner design is to derive an expression for y<sub>in</sub> , then solve this expression for the parameters l<sub>s</sub> and d<sub>s</sub> such that y<sub>in</sub> = 1. 
<br>Proceeding with the derivation of y<sub>in</sub> , at d = 0: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image5.gif"></sub>
<br>Such that 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image6.gif"></sub>
<br>Since the stub is a short circuit, its input admittance is purely imaginary (reactive). Specifically, recall from a previous lecture that for a shorted section of TL
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image7.gif"></sub>
<br>In terms of a normalized input admittance for the shorted stub
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image8.gif"></sub>
<br>where the shorted stub susceptance is b<sub>s</sub> = - 1 /tan (&beta;l<sub>s</sub>) Therefore, at d = d<sub>s</sub> we can construct the equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image9.gif"></sub>
<br>Adding the two normalized admittances (transformed-load and stub admittances) together at d = d<sub>s</sub> gives our desired expression for y<sub>in</sub> : 
<br>y<sub>in</sub> = y (d<sub>s</sub><sup>+</sup>) = jb<sub>s</sub> + y(d<sub>s</sub><sup>-</sup>)
<br>As discussed above, a matched TL for d = d<sub>s</sub> requires y<sub>in</sub> = 1. Requiring this in (3) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image10.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image11.gif"></sub>
<br>There fore
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image12.gif"></sub>
<br>This last equation comes from the definition of - on p. 2. We will now solve (4) for d<sub>s</sub> and l<sub>s</sub> by equating the magnitude and phase of both sides of (4): 
<br>: Magnitude: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image13.gif"></sub>
<br>: Phase: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image14.gif"></sub>
<br>: or
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image15.gif"></sub>
<br>Finally, we solve for the two unknowns <sub>s</sub> and l<sub>s</sub> that force y<sub>in</sub> = 1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image16.gif"></sub>
<br>From
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image17.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image18.gif"></sub>
<br>However, for the shorted stub
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image19.gif"></sub>
<br>as developed earlier on page 3 of this lecture, then
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image20.gif"></sub>
<br>Finally, from this last expression we can determine that
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image21.gif"></sub>
<br>Equations (7) and (8) are the final solutions we need. That is, by selecting the length of the shorted stub l<sub>s</sub> according to (8) and the location of the stub d<sub>s</sub> according to (7) we can match any load Z<sub>L</sub> to the TL for d = d<sub>s</sub> . Note this is accomplished without consuming any power in the matching network! 
<br>Example N23.1: Match a load of Z<sub>L</sub> = 25 -j50 beta to a TL with Z<sub>0</sub> = 50 beta using a short-circuited, single-stub tuner. Use the analytical solution method outlined in this lecture. [See the VisualEM "Example C.7” worksheet for the solution. Note that the animation shows no "pulsation” of the voltage indicating a purely traveling wave towards the load. This is expected behavior on a perfectly matched TL.] 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match</b><b> filter</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>8706
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic</b><b> circuits</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>13419
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro</b><b> statics</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>7500
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>7280
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>19090
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>9454
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>14002
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br>12726
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image22.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in </b><b>ies</b><b> in </b><b>indore</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_i_analytical_solution.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_i_analytical_solution/image23.wmf"></sub>
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
