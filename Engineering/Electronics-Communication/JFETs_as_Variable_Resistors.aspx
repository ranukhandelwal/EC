<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="JFETs_as_Variable_Resistors.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.JFETs_as_Variable_Resistors" %>
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
	<b>JFETs as Variable Resistors</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>JFETs as Variable Resistors</b>
<br>One nice feature of the NorCal 40A is the Automatic Gain Control (AGC). This circuit keeps the audio output at a reasonably constant level as you tune across the band and receive very strong or weak signals. A key part of the AGC is the pair of JFETs Q2 and Q3. These are simply J309s, as we used for the Buffer Amplifier (Q5) and the VFO (Q8). As we'll see, Q2 and Q3 in the AGC simply act as voltage controlled variable resistors! For the remainder of this lecture, we will discuss this valuable behavior of JFETs, while in the next lecture we will discuss the details behind the AGC. 
<br><b>JFET with an Open Channel (Triode Region)</b>
<br>Recall from our previous discussion on JFETs in Lecture 21 that an n-type JFET can be physically approximated by the geometry shown in the figure below. The JFET has a negative V<sub>gs</sub> which increases the depletion regions (and decreases the channel width) as V<sub>gs</sub> is made more negative. 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image1.gif"></sub>
<br>Current I<sub>ds</sub> will flow from drain to source. The amount of current (at a given V<sub>ds</sub>) depends on the channel resistance, r<sub>ds</sub>.As V<sub>gs</sub> becomes more negative, the depletion regions grow wider and the channel narrows. Consequently, the channel resistance r<sub>ds</sub>increases. Assuming V<sub>ds</sub> is small enough, this behavior can be represented by straight lines of varying slope in a characteristic plot of the JFET transistor: 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image2.gif"></sub>
<br>As V<sub>gs</sub> becomes more negative, eventually the two depletion regions combine and the channel is depleted of all charge carriers (e- for n channel) and no current will flow. This particular V<sub>gs</sub> is the JFET pinch off (or cut off) voltage V<sub>c</sub>. It is a negative number for n-channel JFETs. We can view this effect in a JFET as a voltage controlled resistance (VCR). 
<br><b>Saturated JFETs</b>
<br>For completeness, we'll quickly mention what happens to the channel as V<sub>ds</sub> becomes large, though this is not the regime in which Q2 and Q3 operate in the NorCal 40A. As V<sub>ds</sub> increases, V<sub>gs</sub> remains constant while the reverse bias "voltage” of each pn junction will increase as we move up the channel. This will give a tapered shape to the depletion region: 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image3.gif"></sub>
<br>The channel becomes pinched off at the drain end when
<br>V<sub>gd</sub>=V<sub>c</sub>
<br>However, current still flows in the channel because charge carriers can drift through this relatively small depletion region. Note that this "pinch off” is not the same as the JFET being completely pinched off so that no current can flow. Here, pinch off is occurring only at the drain end of the device. Also, notice that as V<sub>ds</sub> increases from this pinched off state, there will be little change in I<sub>d</sub>! The maximum Id occurs when V<sub>gs</sub> = 0 and is defined as I<sub>d.ss</sub>, the drain-to-source current with the gate shorted. As V<sub>gs</sub> (&lt; 0) varies, a larger region of the channel becomes depleted. This implies r<sub>ds</sub> increases, which implies a smaller I<sub>d</sub>. From this behavior, we can generate a family of characteristic curves as shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image4.gif"></sub>
<br>When the JFET is biased with a "large” V<sub>ds</sub> and V<sub>c</sub> &lt;V<sub>gs</sub> &lt; 0, it will operate in the so-called active (or saturation) region. 
<br><b>Linear or Triode Region of the JFET</b>
<br>In the JFET linear region (also called the triode region or VCR region), the drain current is expressed as
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image5.gif"></sub>
<br>For small V<sub>ds</sub> [ &lt;&lt;2(V<sub>gs</sub>-V<sub>c</sub>) ], as is the case in the linear region
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image6.gif"></sub>
<br>By definition, the channel resistance r<sub>ds</sub> is computed as
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image7.gif"></sub>
<br>Plots of these two quantities in (3) are shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image8.gif"></sub>
<br><b>JFETs in the AGC</b>
<br>So how are the JFETs applied as variable controlled resistors in the NorCal 40A? shows them as the AGC attenuators: 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image9.gif"></sub>
<br>More specifically, consider the Q2 circuit connected to U3: 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image10.gif"></sub>
<br>C20 charges to V<sub>C20</sub> &lt;?V<sub>s</sub> through Q2 and the internal 50-k? resistor at pin 2 of U3. V<sub>d</sub> will be slightly less than V<sub>s</sub> because ofthe Q2 channel resistance. Because of this V<sub>ds</sub> is small, which implies Q2 operates in the triode region. The VCR control voltage is V<sub>gs</sub>. Here is an equivalent model for this Q2 circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image11.gif"></sub>
<br>A similar model applies to the Q3 circuit. We'll see in the next lecture that the AGC will vary r<sub>ds</sub> in response to the output voltage at the speaker. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/jfets_as_variable_resistors.aspx"></asp:HyperLink> 
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
	<br>15314
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image14.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image14.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image14.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_jfets_as_variable_resistors/image13.wmf"></sub>
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
