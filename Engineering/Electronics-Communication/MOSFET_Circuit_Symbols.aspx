<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="MOSFET_Circuit_Symbols.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.MOSFET_Circuit_Symbols" %>
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
	<b>MOSFET Circuit Symbols</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>MOSFET Circuit Symbols,</b><b>
<br>iD-vDS Characteristics. </b><b>
<br>There are two circuit symbols you may encounter for the enhancement type MOSFET. For the n-channel, one symbol is</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image1.jpeg"></sub></b><b>
<br>Referring to this circuit symbol: </b><b>
<br>The arrowed terminal indicates the source, </b><b>
<br>This arrow direction indicates n-type (direction of current) </b><b>
<br>The gap at the gate indicates the oxide layer. </b><b>
<br>However, the body is often connected to the source. This leads to a more common circuit symbol: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image2.jpeg"></sub></b><b>
<br>Similar circuit symbols are used for p-channel enhancement type </b><b>
<br>MOSFETS: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image3.jpeg"></sub></b><b>
<br>MOSFET iD-vDS Characteristics</b><b>
<br>Similar to a BJT, we can generate a set of iD-vDS characteristic curves for a MOSFET by setting vGS and varying vDS. This is shown in Fig. 4.11 for an n-type MOSFET: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image4.jpeg"></sub></b><b>
<br>There are three regions of operation: </b><b>
<br>(1) Cutoff. To operate an enhancement type MOSFET, we first must induce the channel. For NMOS, this means that v</b><b><sub>GD</b></sub><b>= V</b><b><sub>t</b></sub><b> (induce) If vGS &lt; Vt there is no channel and the device is cutoff, which we see in When the MOSFET is cutoff, iD = iS = 0. </b><b>
<br></b><b>2) Triode. To operate in this mode, we first must induce the channel as in (1) above. We must also keep vDS small enough so the channel is continuous (not pinched off): V</b><b><sub>GD</b></sub><b> &gt;V</b><b><sub>t</b></sub><b>
<br>[Note how similar this last criterion is to V</b><b><sub>GD</b></sub><b> &gt;V</b><b><sub>t</b></sub><b> for the channel to be induced. Here in (2), we have V</b><b><sub>GD</b></sub><b> &gt;V</b><b><sub>t</b></sub><b> for a continuous channel at the drain end. This observation can help us to remember these criterion.] Another way of writing this criterion in (2) is in terms of vDS. Referring to this circuit element</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image5.jpeg"></sub></b><b>
<br>we see that</b><b>
<br>V</b><b><sub>DS</b></sub><b>=V</b><b><sub>GS</b></sub><b>+V</b><b><sub>DG</b></sub><b>
<br>For a continuous channel, as required by (2), (3) becomesv</b><b>
<br>V</b><b><sub>Ds</b></sub><b>-V</b><b><sub>GS</b></sub><b>=V</b><b><sub>DG</b></sub><b>&lt;-V</b><b><sub>t</b></sub><b>
<br>Therefore, </b><b>
<br>V</b><b><sub>DS</b></sub><b>&lt;V</b><b><sub>GS</b></sub><b>-V</b><b><sub>t</b></sub><b>(continuous) </b><b>
<br>We can use either (2) or (4) to check for triode operation of the MOSFET. As given in the last lecture, in the triode region</b><b>
<br>. </b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image6.jpeg"></sub></b><b>
<br>where rDS is defined as the (linear) resistance between the drain and source terminals. The value of rDS is controlled by vGS. </b><b>
<br>(3) Saturation. To operate in this mode we need to first induce the channel</b><b>
<br>V</b><b><sub>GS</b></sub><b>&#8805;</b><b> V</b><b><sub>t</b></sub><b>(pinch off) </b><b>
<br>then ensure that the channel is pinched off at the drain end</b><b>
<br>V</b><b><sub>GS</b></sub><b>&#8805;</b><b> V</b><b><sub>t</b></sub><b>(pinch off) </b><b>
<br>or equivalently</b><b>
<br>V</b><b><sub>GS</b></sub><b>&#8805;</b><b>V</b><b><sub>GS</b></sub><b>(inch off) </b><b>
<br>As we saw in the previous lecture, the drain current in this region is</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image7.jpeg"></sub></b><b>
<br>and is not dependent on vDS. A plot of iD versus vGS for an enhancement type NMOS device in saturation is shown in</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image8.jpeg"></sub></b><b>
<br>In the saturation mode, this device behaves as an ideal current source controlled by vGS: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image9.jpeg"></sub></b><b>
<br>In reality, though, there is a finite output resistance (ro) that should be added to this model: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image10.jpeg"></sub></b><b>
<br>where</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image11.jpeg"></sub></b><b>
<br>This finite output resistance gives a slope to the iD-vDS characteristic curves: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image12.jpeg"></sub></b><b>
<br>Example N26.1 (similar to text exercise 4.4). Given an enhancement type NMOS with Vt = 2 V. </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image13.jpeg"></sub></b><b>
<br>Determine the region of operation of this device for the following VD. Use these criteria for the region of operation: </b><b>
<br>Cutoff: V</b><b><sub>GS</b></sub><b>&gt;V</b><b><sub>t</b></sub><b>
<br>Triode: V </b><b><sub>GS</b></sub><b>&#8805;</b><b> V </b><b><sub>t</b></sub><b> and V </b><b><sub>DS</b></sub><b>&lt;V</b><b><sub>GS</b></sub><b>-V</b><b><sub>t</b></sub><b>
<br>Saturation : V</b><b><sub>GS</b></sub><b>&#8805;</b><b> V</b><b><sub>t</b></sub><b>and V</b><b><sub>DS</b></sub><b>&#8805;</b><b> V</b><b><sub>GS</b></sub><b>-V</b><b><sub>t</b></sub><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image14.jpeg"></sub></b><b>
<br>Example N26.2 (similar to text problem 4.16). An NMOS enhancement type MOSFET has Vt = 2 V. If VGS ranges from 2.5 to 5 V what is the largest VDS for which the channel remains continuous? </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image15.jpeg"></sub></b><b>
<br>V</b><b><sub> GS</b></sub><b> &gt; V</b><b><sub> t</b></sub><b>, V</b><b><sub> GS</b></sub><b> . so the channel is always present. Then for the channel to remain open at the drain end, V</b><b><sub> DS</b></sub><b>&lt; V</b><b><sub> GS</b></sub><b> - V</b><b><sub> t</b></sub><b> (triode) Which VGS to use here? The smallest. Therefore, V</b><b><sub> DS</b></sub><b>|</b><b><sub> max</b></sub><b> &lt; 2.5-2= 0.5 V </b>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuit_symbols.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuit_symbols/image18.wmf"></sub>
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
