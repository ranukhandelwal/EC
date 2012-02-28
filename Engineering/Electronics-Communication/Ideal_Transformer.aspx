<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Ideal_Transformer.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Ideal_Transformer" %>
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
	<b>Ideal Transformer</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Ideal Transformer</b>
<br>In general, a transformer is a two-port AC device that converts time varying voltages and currents from one amplitude to another between its two ports. This also has the effect of transforming impedance levels. This device only performs this transformation for time varying signals. Here, we will consider the transformer circuit shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image1.gif"></sub>
<br>We will analyze this physical transformer as a time varying magnetic circuit (ignoring flux leakage): 
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image2.gif"></sub>
<br>From this magnetic circuit we find
<br>V<sub>m1</sub>((t)- -V<sub>m2</sub>((t)  &psi; <sub>m</sub>((t) Where
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image3.gif"></sub>.
<br>Substituting these into (1) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image4.gif"></sub>
<br>In an ideal transformer: 
<br>. the core permeability &mu; is linear, 
<br>. &mu; -> &infin;, and
<br>. the windings are perfect conductors. From the second of these ideal transformer assumptions, the RHS of (2) vanishes leaving
<br>N<sub>1</sub>I<sub>1</sub>(t)-N<sub>2</sub>I<sub>2</sub>(t)= 0
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image5.gif"></sub>
<br>Furthermore, by Faraday's law we know that
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image6.gif"></sub>
<br>For the transformer geometry above
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image7.gif"></sub>
<br>(because a transformer does not "transform” at DC) 
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image8.gif"></sub>
<br>Equations (3) and (6) are the basic equations of an ideal transformer. 
<br><b>Discussion</b>
<br>1. From (6), the voltage from the so-called "secondary” of the transformer is
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image9.gif"></sub>
<br>Note that if N<sub>2</sub>&gt; N<sub>1</sub>, the secondary voltage is larger than the primary voltage! Very interesting. 
<br>. If N<sub>2</sub> &lt; N<sub>1</sub>, called a step-up transformer, 
<br>. If N<sub>2 </sub>N<sub>1</sub>, called a step-down transformer. 
<br>2. From (3), the secondary current is
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image10.gif"></sub>
<br>We can surmise from (8) that for a step-up transformer, I<sub>2</sub> (t)&lt; I<sub>1 </sub>(t).Therefore, while the voltage increases by
<br>N<sub>2 </sub>/ N<sub>1</sub>, the current has decreased by N<sub>1</sub> / N<sub>2 </sub>. Because of this property, the power input to the primary equals the power output from the secondary
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image11.gif"></sub>
<br>Therefore, the input power P<sub>1</sub>(t)equals the output power P<sub>2 </sub>(t ) 
<br>3. With a resistance RL connected to the secondary, then
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image12.gif"></sub>
<br>Substituting for V2 and I2 from 
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image13.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image14.gif"></sub>
<br>In other words, the effective input resistance R<sub>1,eff</sub> at theprimary terminals (the ratio V<sub>1</sub>/I<sub>1</sub>) is
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image15.gif"></sub>
<br>The transformer "transforms” the load resistance from the secondary to the primary. (Remember that this is only true for time-varying signals.) For sinusoidal steady state and load impedance ZL, equation (10) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image16.gif"></sub>
<br>4. For maximum power transfer, we design a circuit so that the load is matched to the output resistance. We can use transformers as "matching networks.” 
<br>5. Notice that the primary has the source connection so that the ground occurs at the "-” V<sub>s</sub> terminal. However, the secondary is not grounded. This secondary is said to be "balanced.” (Exception to this is the autotransformer.) 
<br>6. Remember that only time varying signals are "transformed” by a transformer. 
<br>Example N10.1: Design the transformer shown below so that maximum power is delivered to the load R<sub>L</sub> for fixed R<sub>s</sub> and R<sub>L</sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image17.gif"></sub>
<br>This transformer "transforms” the load resistance to the primary according to (10). An equivalent circuit at the primary terminal can be constructed using this effective primary resistance: 
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image18.gif"></sub>
<br>From
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image19.gif"></sub>
<br>(As an aside, note that R<sub>p,eff</sub> ->&infin; as R<sub>L</sub> ->&infin;, which is an open circuit. In practical transformers, it's not uncommon for ( ) 1 I<sub>1</sub>(t) &#8776 some small fraction of rated I for an open load.) For maximum power transfer R<sub>p,eff</sub>= R<sub>s</sub> . Consequently
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image20.gif"></sub>
<br>The "turns ratio” N<sub>1</sub>/N<sub>2</sub> is adjusted to this value for maximum power transfer from the source to R<sub>L</sub>, even when R<sub>L</sub> &#8800; R<sub>s</sub> . 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/ideal_transformer.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_ideal_transformer/image22.wmf"></sub>
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
