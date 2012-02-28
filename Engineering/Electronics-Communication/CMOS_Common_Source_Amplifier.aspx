<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="CMOS_Common_Source_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.CMOS_Common_Source_Amplifier" %>
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
	<b>CMOS Common Source Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>CMOS Common Source Amplifier.</b>
<br>As was mentioned in Lecture 30, there are two different environments in which MOSFET amplifiers are found, (1) discrete circuits and (2) integrated circuits (ICs). We will now begin to look at the IC MOSFET amplifiers. There are three basic configurations of IC MOSFET amplifiers: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image1.jpeg"></sub>
<br>As was also mentioned in Lecture 30, large-valued resistors and capacitors are not often used in these IC environments. Instead, active loads are incorporated using MOSFETs as loads. In the amplifier circuits shown above, the active loads are actually the nonideal current sources. [Also notice that there are no bypass capacitors as we saw with discrete MOSFET (and BJT) amplifiers.] 
<br>We will look at all three of these amplifiers more closely over the next few lectures. The intention is to pair the discrete version of the MOSFET amplifier with its IC version. Since we've covered the CS amplifier in discrete form already, we'll begin with the analysis of the CMOS CS amplifier. 
<br><b>CMOS Common Source Amplifier</b>
<br>An example of a complementary MOSFET amplifier is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image2.jpeg"></sub>
<br>In this circuit, Q2 and Q3 form a PMOS current mirror. Because both PMOS and NMOS devices are used in this circuit, it is called a complementary MOS (CMOS) circuit. In addition to forming part of the current mirror, Q2 also functions as the current source load (aka active load) for Q1. For Q2 to be a current source, Q2 must operate in the saturation mode, of course. The output resistance ro2 of Q2 is
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image3.jpeg"></sub>
<br>It is helpful to observe the characteristic curve for Q2 to understand its active-load role: 
<br>
<br>Referring to the CS amplifier circuit above in Fig. 6.18(a), when i = I<sub> REF</sub> then V <sub>GD2</sub>=2 (by symmetry with Q1). This implies that v = V<sub>SG</sub>, which is the Q point shown in Fig. 6.18(b). Furthermore, it is useful to observe the graphical construction of the transfer function vO/vI for this amplifier, as illustrated in Figs. 6.18(c) and (d) shown below. The drain currents of Q1 and Q2 are the same. The operating point of the amplifier is found
<br>Furthermore, it is useful to observe the graphical construction of the transfer function vO/vI for this amplifier, as illustrated in Figs. 6.18(c) and (d) shown below. The drain currents of Q1 and Q2 are the same. The operating point of the amplifier is found from the intersection of the Q1 characteristic curve with the load curve of Q2 for a particular vGS1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image4.jpeg"></sub>
<br>Collecting these intersections from this figure as vGS1 ( I v = ) changes, we can construct point-by-point the transfer characteristic curve for this amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image5.jpeg"></sub>
<br>From this plot, we can see that Region III shows a linear relationship between vO and vI. This is the region where the circuit of Fig. 6.18(a) can be used as a linear amplifier. 
<br><b>Small-Signal Voltage Gain and Output Resistance</b>
<br>Now we'll determine the small-signal voltage gain and output resistance of this amplifier. The small-signal equivalent circuit for this CMOS CS amplifier is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image6.jpeg"></sub>
<br>It is important to recognize that no small-signal model is needed for Q2 because its affect on the signal vo can be incorporated using the small-signal resistance ro2 as shown above. So, at the output
<br>V<sub>0</sub> = - g<sub>m1</sub> V<sub>gs2</sub>(r<sub>01</sub>||r<sub>02</sub>
<br>while at the input
<br>V<sub>gs1</sub>= V <sub>t</sub>
<br>Substituting (3) into (2) gives the open circuit small-signal voltage gain for the CMOS CS amplifier to be
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image7.jpeg"></sub>
<br>or substituting for gm1, ro1, and ro2
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image8.jpeg"></sub>
<br>Since ro1 and ro2 are usually large, this Avo gain is typically relatively large (approximately -20 to -100, or so). Neat! We have incorporated the effects of relatively large resistance for this amplifier without having to actually construct a large resistor. From the small-signal model we see from inspection that 
<br>R<sub>out</sub> =r<sub>01</sub>||r r<sub>02</sub>
<br>Summary for CMOS CS amplifier: 
<br>1. Very large input resistance. 
<br>2. Very large output resistance. 
<br>3. Potentially large small-signal voltage gain. 
<br>Example N33.1 (similar to text exercise 6.15). A CMOS CS amplifier shown in Fig. 6.18(a) is fabricated with W/ L=100 um/ 1.6 for all transistors. With k<sub>n</sub><sup> </sup>' = 90 uA/V<sup>2</sup>, k<sub>n</sub><sup> </sup>' = 30 uA/V<sup>2</sup> I<sub>REF</sub> = 100 uA, V<sub>An</sub> =8 V/ìm, and V<sub>Ap</sub>= 12V/ìm, determine the following quantities: (a) Find gm1. The common expression for gm we use is
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image9.jpeg"></sub>
<br>For a MOSFET in the saturation mode
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image10.jpeg"></sub>
<br>Substituting (7) into (6) gives the transconductance for Q1 in terms of ID1 to be
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image11.jpeg"></sub>
<br>This form of gm was actually used earlier in (5).] Because the amplifier is biased so that I<sub>REF</sub>= I<sub>D</sub> , then
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image12.jpeg"></sub>
<br>(b) Find ro1. 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image13.jpeg"></sub>
<br>(c) Find ro2. 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image14.jpeg"></sub>
<br>(d) Find Avo. 
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image15.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image16.jpeg"></sub>
<br>This value represents the largest gain. The gain will be reduced when an actual load is attached to the amplifier. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/cmos_common_source_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_cmos_common_source_amplifier/image18.wmf"></sub>
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
