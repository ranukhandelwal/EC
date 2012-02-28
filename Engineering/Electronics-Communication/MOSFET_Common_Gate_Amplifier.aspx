<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="MOSFET_Common_Gate_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.MOSFET_Common_Gate_Amplifier" %>
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
	<b>MOSFET Common Gate Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>MOSFET Common Gate Amplifier.</b>
<br>We'll continue our discussion of discrete MOSFET amplifiers we began with the common source amplifier in Lectures 31 and 32. Here we'll cover the common gate amplifier, which is shown in Fig. 4.45. It has a grounded gate terminal, a signal input at the source terminal, and the output taken at the drain. 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image1.jpeg"></sub>
<br><b>Small-Signal Amplifier Characteristics</b>
<br>As we've done with previous amplifiers in this course, we'll calculate the following small-signal quantities for this MOSFETcommon gate amplifier: Rin, Av, Avo, Gv, Gi, Ais, and Rout. Tobegin, we construct the small-signal equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image2.jpeg"></sub>
<br>The T model was used since we ignored ro while Rsig appears in series with 1/gm. 
<br>&bull; Input resistance, Rin. Because the gate is grounded, we can see directly from this small-signal equivalent circuit that 
<br>Actually, this result may not be that readily apparent to you since while the gate is grounded, the current in the gate is zero ( i<sub>g =0 ). To verify this result in (1), we can apply a voltage source vx at the source terminal and calculate the ratio of this voltage to the current directed into the source terminal, which we'll define as ix: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image3.jpeg"></sub></sub><sub>
<br>At the input to this circuit</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image4.jpeg"></sub></sub><sub>
<br>This current ix doesn't flow through the gate terminal! Instead, ix flows through the dependent source, then to ground. Indeed, we see that </sub><sub>
<br>x mgs ix=- gm Vgs =- i</sub><sub>
<br>Tricky! In any event, the input resistance in (1) has been verified. </sub><sub>
<br>&bull; Partial small-signal voltage gains, Av and Avo. At the output side of the small-signal circuit</sub><sub>
<br>v0=- gmvgs (RD =-RL) </sub><sub>
<br>At the input, we can see that because the gate is grounded Substituting (3) into (2), gives the partial small-signal AC voltage gain to be</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image5.jpeg"></sub></sub><sub>
<br>In the case of an open circuit load ( R L</sub><sub>-></sub><sub>&infin;</sub><sub>), the small-signal voltage gain becomes</sub><sub>
<br>&bull; Overall small-signal voltage gain, Gv. Using voltage division at the input to the small-signal equivalent circuit</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image6.jpeg"></sub></sub><sub>
<br>Substituting this into</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image7.jpeg"></sub></sub><sub>
<br>gives the overall small-signal voltage gain of this common gate amplifier to be</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image8.jpeg"></sub></sub><sub>
<br>More specifically, using (1) in this expression</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image9.jpeg"></sub></sub><sub>
<br>&bull; Overall small-signal current gain, Gi. Using current division at the output in the small-signal circuit above</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image10.jpeg"></sub></sub><sub>
<br>Substituting (11) into (10) gives the overall small-signal AC current gain to be</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image11.jpeg"></sub></sub><sub>
<br>&bull; Short-circuit small-signal current gain, Ais. The short circuit small-signal AC current gain can be easily determined from (12) with RL =0 as </sub><sub>
<br>Ais=Gi|RL=0</sub><sup>1</sup><sub>
<br>&bull; Output resistance, Rout. From the small-signal circuit above with vsig =0we find that i =0 since the gate is grounded. Consequently, Rout =RD </sub><sub>
<br></sub><b><sub>Summary</b></sub><sub>
<br>In summary, we find for the CG small-signal amplifier: </sub><sub>
<br>o A non-inverting amplifier. </sub><sub>
<br>o Moderate input resistance [see (1)]. </sub><sub>
<br>o Moderately large small-signal voltage gain [see (9)], but smaller than CS amplifier. </sub><sub>
<br>o Small-signal current gain less than one [see (12)]. </sub><sub>
<br>o Potentially large output resistance (dependent on RD) [see (14)]. </sub><sub>
<br>Similar to the BJT CB amplifier we discussed in Lecture 20, the CG amplifier finds use as a current buffer amplifier. It has the relatively small input resistance, relatively large output resistance, and Gi less than (and potentially near) one characteristics of such amplifiers. (Does this amplifier provide any power gain for a signal?) </sub><sub>
<br>Example N34.1 (based on text exercise 4.34). Use the circuit of Fig. E4.30 to design a common gate amplifier. Find Rin, Rout, Avo, Av, Gv, and Gi for RL =10 k beta and sRsig = 50 beta Ù. What will the overall voltage gain become for Rsig = 50beta? 10 kbeta? 100 kbeta? The DC analysis results are shown in Fig. E4.30: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image12.jpeg"></sub></sub><sub>
<br>Using (4.71) </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image13.jpeg"></sub></sub><sub>
<br>Based on this DC biasing, the corresponding common gate amplifier circuit is: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image14.jpeg"></sub></sub><sub>
<br>The small-signal equivalent circuit for this amplifier is: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image15.jpeg"></sub></sub><sub>
<br>The 4.7-Mbetaresistor functions to force the gate to ground potential. But since ig =0 , it will have no other impact on the circuit. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image16.jpeg"></sub></sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image17.jpeg"></sub></sub><sub>
<br>&bull; What is the overall voltage gain when: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image18.jpeg"></sub></sub><sub>
<br>We see from these calculations that the overall voltage gain decreases substantially as Rsig increases. Can you explain what is physically happening to cause this to occur? </sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_common_gate_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_common_gate_amplifier/image20.wmf"></sub>
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
