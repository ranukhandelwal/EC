<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="MOSFET_Circuits_at_DC.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.MOSFET_Circuits_at_DC" %>
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
	<b>MOSFET Circuits at DC</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We will illustrate the DC analysis of MOSFET circuits through a number of examples. 
<br>Example N27.1 (similar to text example 4.2). Design the circuit below so that the MOSFET operates with I<sub>D</sub> =0.4 mA and V<sub>D</sub> = 1V. The MOSFET has V<sub>t</sub> =2 V, ?<sub>n</sub>C<sub>ox/sub&gt; =20 &mu;A/V</sub><sup>2</sup><sub>, L = 10&mu;m, and 400 W = &mu;m. Neglect the channel-length modulation effect ( ?= 0). </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image1.jpeg"></sub></sub><sub>
<br>This last statement (i.e., ? = 0) means we can neglect the MOSFET output resistance ( r0 &gt; </sub><sub>&infin;</sub><sub> ). </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image2.jpeg"></sub></sub><sub>
<br>From this circuit we can see that VGD = - 1V, which is less than Vt. Consequently, the channel is pinched off at the drain end. Therefore, the MOSFET is operating in the saturation or cutoff modes (not the triode). We'll assume operation in the saturation mode. In this mode</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image3.jpeg"></sub></sub><sub>
<br>Substituting</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image4.jpeg"></sub></sub><sub>
<br>Therefore</sub><sub>
<br>(VGS-2)</sub><sup>2</sup><sub>=> </sub><sub> VGS-2=+1 VGS=+1 V or +3 V</sub><sub>
<br>The first solution is not consistent with our initial assumption of operation in the saturation mode since it is less than Vt. Therefore, </sub><sub>
<br>VGS= 3 V </sub><sub>=> </sub><sub> VS ==-3V</sub><sub>
<br>Finally, </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image5.jpeg"></sub></sub><sub>
<br>Example N27.2 (similar to text example 4.3). Design the circuit below so ID = 0.4 mA. The MOSFET has Vt =2 V, ?n Cox= 20 &mu;A/V</sub><sup>2</sup><sub>, L =10 &mu;m, and W =100 &mu;m. Neglect ro. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image6.jpeg"></sub></sub><sub>
<br>With the gate and drain terminals connected together V GD = 0, which is not greater than Vt. This means the channel is not continuo us and the MOSFET is not operating in the triode mode. We'll assume the device is operating in the saturation mode. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image7.jpeg"></sub></sub><sub>
<br>In saturation, </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image8.jpeg"></sub></sub><sub>
<br>Consequently, </sub><sub>
<br>VGS=0 or 4 V</sub><sub>
<br>The first solution is not consistent with operation in the saturation mode since VGS &lt;Vt .Hence , with V GS=4 V and V DG=0 V </sub><sub>=> </sub><sub> VD= 4 V</sub><sub>
<br>Finally since I G = 0 then </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image9.jpeg"></sub></sub><sub>
<br>Example N27.3 (text example 4.4). Design the circuit below for a drain voltage of 0.1 V. Determine rDS. The MOSFET has Vt =1 V and kn W| L . = 1 mA/V</sub><sup>2</sup><sub>. Neglect ro. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image10.jpeg"></sub></sub><sub>
<br>With VGS = 5V and greater than Vt, the MOSFET has an induced channel and is not cutoff. Next, let's check to see if the channel is pinched off at the drain end. We can do this two (equivalent) ways. First, with VD = 0.1V then</sub><sub>
<br>VGD=5-0.1=4.9</sub><sub>
<br>which is greater than Vt (= 1 V), so the channel is not pinched off at the drain. Alternatively, we can compute</sub><sub>
<br>VGS-Vt=5-1=4 V</sub><sub>
<br>which is greater than VDS (= 0.1 V). So again we find that the channel is not pinched off at the drain. Either of these two results means the MOSFET is operating in the triode mode (continuous channel). In the triode region, </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image11.jpeg"></sub></sub><sub>
<br>so that</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image12.jpeg"></sub></sub><sub>
<br>Then</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image13.jpeg"></sub></sub><sub>
<br>and</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image14.jpeg"></sub></sub><sub>
<br>We could also use (4.13) for this last result, but the work was already done here. From the text, </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image15.jpeg"></sub></sub><sub>
<br>Using the values above, </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image16.jpeg"></sub></sub><sub>
<br>This value is slightly different than what was calculated earlier. Which one is correct? Why is the other not as accurate? </sub><sub>
<br>Example N27.4 (text example 4.6). Design the circuit below so that the MOSFET is operating in the saturation mode with I D=0.5 mA and VD = 3V. What is the largest RD such that the MOSFET remains in the saturation mode? The MOSFET has Vt = 1- V and kp</sub><sup>'</sup><sub> W| L . =1mA/V</sub><sup>2</sup><sub>. Neglect ro. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image17.jpeg"></sub></sub><sub>
<br>For saturation in an enhancement type PMOS device requires</sub><sub>
<br>VGS </sub><sub>&#8804;</sub><sub> Vt(induced) or V SG </sub><sub>&#8805;</sub><sub> |Vt|( induced) And</sub><sub>
<br>VDS</sub><sub>&#8804;</sub><sub>VGS-Vt(pinched off) </sub><sub>
<br>In words, this last equation states that the drain-to-source voltage must be less than the gate-to-source voltage plus |Vt|.</sub><sub>
<br></sub><sub>In the saturation mode (with ?=0 ) </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image18.jpeg"></sub></sub><sub>
<br>or</sub><sub>
<br>0.5*10</sub><sup>-3</sup><sub>=1.5.1*10</sub><sup>-</sup><sup>
<br>3(V</sup><sub>GS</sub><sup>+1)2 therefore</sup><sup>
<br>V</sup><sub>GS</sub><sup>+1=</sup><sup>=> </sup><sup> V</sup><sub>GS</sub><sup>=0 or -2 V</sup><sup>
<br>The first result is not consistent with operation in the saturation mode since V</sup><sub>GS</sub><sup>&lt; V</sup><sub>t</sub><sup> . must be met for saturation. Consequently, </sup><sup>
<br>V</sup><sub>G</sub><sup>=5+V</sup><sub>GS</sub><sup>=5-2=3V RG1 and RG2 must be chosen such that</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image19.jpeg"></sub></sup><sup>
<br>The text chooses R</sup><sub>G</sub><sup> M</sup><sub>2</sub><sup> = O and R</sup><sub>G</sub><sup> =M3 O to satisfy this requirement. (Why did the book use such large values for RG1 and RG2?) The drain resistor can be determined from the circuit above</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image20.jpeg"></sub></sup><sup>
<br>For the largest RD, remember that the PMOS device remains in the saturation mode as long as the drain end of the channel is pinched off. </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image21.jpeg"></sub></sup><sup>
<br>Pinch off at the drain end requires V </sup><sub>DG</sub><sup> &lt; |V</sup><sub>t</sub><sup>| (pinched off) </sup><sup>
<br>which holds up to the point where VD exceeds VG by | V</sup><sub>t</sub><sup>| . That is, V</sup><sub>DMax</sub><sup>= V</sup><sub>G</sub><sup>+|V</sup><sub>t</sub><sup>| = 3+1 =4 V. From this result, </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image22.jpeg"></sub></sup>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image23.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mosfet_circuits_at_dc.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image25.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mosfet_circuits_at_dc/image24.wmf"></sub>
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
