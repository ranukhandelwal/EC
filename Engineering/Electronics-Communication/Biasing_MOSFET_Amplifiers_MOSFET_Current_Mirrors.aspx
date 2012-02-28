<%@ Page Language="C#" MasterPageFile="~/Masters/mosfetlinks.master" AutoEventWireup="True" CodeBehind="Biasing_MOSFET_Amplifiers_MOSFET_Current_Mirrors.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Biasing_MOSFET_Amplifiers_MOSFET_Current_Mirrors" %>
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
	<b>Biasing MOSFET Amplifiers. MOSFET Current Mirrors</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Biasing MOSFET Amplifiers. MOSFET Current Mirrors.</b>
<br>There are two different environments in which MOSFET amplifiers are found, (1) discrete circuits and (2) integrated circuits (ICs). The methods of biasing transistor amplifiers are different in these two environments.Why? Primarily because it's “expensive” t o fabricate resistors (and large capacitors) on ICs. Of course, this is not a problem for discrete component circuits.We will discuss these two environments separately. 
<br><b>Biasing Discrete MOSFET Amplifier Circuits</b>
<br>The methods we can use here are virtually identical to the BJT amplifier circuits we saw in Chapter 5. A few of these biasing topologies are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image1.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image2.jpeg"></sub>
<br>Example N30.1. Design the MOSFET amplifier below so that I<sub>D</sub> =1 mA and allow for a drain voltage swing of &#177;2 V. The amplifier is to present a 1-M beta input resistance to a capacitively coupled input signal. The transistor has k<sub>n</sub><sup>'</sup> W| L = 0.5 mA/V<sup>2</sup> and V<sub>t</sub> =2 V.
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image3.jpeg"></sub>
<br>We can see directly from this circuit that at DC, V<sub>G</sub> = 0. Recall that for operation in the saturation mode V<sub>GD</sub>= V<sub>t</sub> (with V<sub>GS</sub> &gt;0 ). Now, for 2 ± -V swing in vo and large AC gain, we want RD to be large. Hence, let's choose V<sub>D</sub> =0 (since V<sub>t</sub> = 2V). Then for this &#177;2 -V swing in v<sub>0</sub> V <sub>GD</sub>|<sub>max </sub>=0-2=-2&lt;V<sub>t</sub>
<br>V<sub>GD</sub>|<sub>max</sub>=0+2 V =V<sub>t</sub>
<br>Because of these results, the MOSFET stays in saturation. 
<br>Consequently, 
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image4.jpeg"></sub>
<br>For a saturated MOSFET
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image5.jpeg"></sub>
<br>For R <sub>D</sub>=1 mA =>  (V<sub>GS</sub> -2 )<sup>2</sup>=4
<br>Or
<br>V<sub>GS</sub> = + 2 + 2 +4 V or 0 V With V <sub>G</sub> =0 and V <sub>GS </sub>=4 V then V 0 V
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image6.jpeg"></sub>
<br>Lastly, for a 1-M. AC input resistance, then referring to the input portion of the small-signal model
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image7.jpeg"></sub>
<br>we see that
<br>R<sub>in</sub>=R<sub>G</sub> =>  R<sub>G</sub>=1 M beta
<br><b>Biasing IC MOSFET Amplifiers. Current Mirrors.</b>
<br>For MOSFET amplifier biasing in ICs, DC current sources are usually used. As discussed in Lecture 17, "golden currents” are produced using sophisticated multi-component circuits. Then current mirroring (aka current steering) circuits are used to replicate this golden current to provide DC biasing currents at different points in the IC. The basic MOSFET current mirror is shown in Fig. 4.33b for NMOS. (This is basically the same circuit we saw with the BJT current mirror in ) 
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image8.jpeg"></sub>
<br>Q1 has the drain and gate terminals connected together. This forces Q1 to operate in the saturation mode in this particular circuit if In this mode
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image9.jpeg"></sub>
<br>With a zero gate current, 
<br>I <sub>REF</sub>=I <sub>D1</sub>
<br>where we can easily see from the above circuit that
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image10.jpeg"></sub>
<br>Now, we'll assume the two MOSFETs in the circuit have the same VGS. Consequently, the drain current in the second transistor is
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image11.jpeg"></sub>
<br>If these two transistors are perfectly matched but perhaps fabricated with different channel dimensions, then 1 2 n n k<sub>n1</sub> <sup>'</sup>= K<sub>n2</sub><sup>'</sup> , and V<sub>t1</sub>= V<sub>t2</sub> so that we see by comparing (1) and (4) that
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image12.jpeg"></sub>
<br>In this NMOS current mirror shown above, Q2 acts as a current sink since it pulls current I<sub>0</sub> =I<sub>D2</sub> from the load, which is the amplifier circuit of in this case.In PMOS this current mirror circuit is constructed as
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image13.jpeg"></sub>
<br>Here Q2 acts as a current source since it pushes current I<sub>0</sub>I =I<sub>D2</sub> into the load. Example N30.2. Design an NMOS current mirror with V <sub>DD</sub>= 5 V, VSS = 0, and I<sub>REF</sub> =100 uA. For the matched transistors L =10 um , W =100 um, V<sub>t</sub> = 1V, and 20 n k<sub>n</sub><sup> ' = uA/V2. Referring to the NMOS current mirror circuit in Fig. 4.33b above, notice that the drain of Q1 is connected to its gate so that V</sup><sub>GD1</sub><sup> = 1, which is less than Vt. This means Q1 is operating in the saturation mode (or is possibly cutoff). </sup><sup>
<br>Assuming operation in saturation, </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image14.jpeg"></sub></sup><sup>
<br>For I </sup><sub>REF</sub><sup>=100 uA </sup><sup>=> </sup><sup> 100=10.10(V</sup><sub>GS</sub><sup>-1)or V </sup><sub>GD</sub><sup>=+1+1=2V or 0 V</sup><sup>
<br>Now , by KVL V </sup><sub>DD</sub><sup>=I</sup><sub>REF</sub><sup>R+V</sup><sub>GS</sub><sup>
<br>With V </sup><sub>GS</sub><sup>=2V then </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image15.jpeg"></sub></sup><sup>
<br>Here are a few additional questions based on this design: </sup><sup>
<br>&bull; What is the lowest possible value for V</sup><sub>0</sub><sup> =V</sup><sub>2D</sub><sup> and still have a functioning current mirror? As with Q1, the transistor Q2 must also operate in saturation if it's going to supply a constant current. </sup><sup>
<br>Hence</sup><sup>
<br>V </sup><sub>GD2</sub><sup>&#8804;</sup><sup> V </sup><sub>t</sub><sup> </sup><sup>=> </sup><sup> V</sup><sub>G2</sub><sup>-V</sup><sub>D2</sub><sup>&#8804;</sup><sup> V </sup><sub>t</sub><sup> </sup><sup>therefore, </sup><sup> V </sup><sub>0</sub><sup>= V </sup><sub>D2</sub><sup> </sup><sup>&#8805;</sup><sup> V </sup><sub>G2</sub><sup>- V </sup><sub>t</sub><sup> or V</sup><sub>0</sub><sup> </sup><sup>&#8805;</sup><sup> V </sup><sub>GS</sub><sup>-V</sup><sub>t</sub><sup>=2-1=1 V</sup><sup>
<br>Therefore, </sup><sup>
<br>V</sup><sub>0</sub><sup>|=1V</sup><sup>
<br>&bull; Imagine that V</sup><sub>A</sub><sup> =107 L. (Notice that VA is proportional to the channel length, which is commonplace.) What is ro? V</sup><sub>A =10</sub><sup>7</sup><sub>.10*10</sub><sup>-6</sup><sub>=100 V</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image16.jpeg"></sub></sub><sub>
<br>&bull; What is change in the output current IO if VO changes by 3 V? </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image17.jpeg"></sub></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
	<br>13469
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
	<br>7301
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/biasing_mosfet_amplifiers_mosfet_current_mirrors.aspx"></asp:HyperLink> 
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
	<br>15316
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_biasing_mosfet_amplifiers_mosfet_current_mirrors/image19.wmf"></sub>
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
