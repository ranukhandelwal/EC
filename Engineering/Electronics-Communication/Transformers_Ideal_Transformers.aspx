<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Transformers_Ideal_Transformers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transformers_Ideal_Transformers" %>
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
	<b>Transformers Ideal Transformers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transformers Ideal Transformers</b>
<br>In general, a transformer is a multi-port ac device that converts voltages, currents and impedances from one value to another. This device only performs this transformation for time varying signals. Here, we will consider the transformer circuit shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image1.gif"></sub>
<br>The time varying current I<sub>p</sub>( t) in the "primary” circuit produces a magnetic flux density B<sub>p</sub>( t )in and around coil p. Similarly, the "secondary” coil produces B <sub>s</sub>t . The total magnetic flux density is the sum B( t) = B<sub>p</sub>( t) + B<sub>s</sub>( t) We will assume that the transformer core has a very large relative permeability ?<sub>r</sub> . Consequently, B(t ) will almost exclusively be contained within the core. This B(t ) forms closed loops within the core. (We can think of this as a "selfshielded" core.) . The magnetic flux ? m is defined simply as the integral of B(t )over a cross section of the core: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image2.gif"></sub>
<br>With B(t ) contained exclusively within the core, ?<sub>m</sub>( t) will be the same throughout the transformer (though it will vary with time). The magnetic flux will be proportional to the number of coil turns, the geometry of the coil and the current in the coil: ?<sub>mj</sub>(t) = N<sub>j</sub> A <sub>j</sub>I<sub>j</sub>( t) [Wb/turn] 
<br>A<sub>1</sub> is the inductance constant [H/turn2] of the core and j = p, s. 
<br>This A<sub>1</sub> is provided by the manufacturer of the cores that you use for your transformers (and inductors). Table D.2 in your text lists A<sub>1</sub> for various cores used in the NorCal 40A. 
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image3.gif"></sub>
<br>Note that A<sub>1 can be a very strong function of frequency</sub><sub>
<br></sub><b><sub>Induced Voltage</b></sub><sub>
<br>As we </sub><sub>know,</sub><sub> a time varying magnetic field through a coil of wire produces a voltage between the ends of the coil. This miraculous phenomenon was discovered by Michael Faraday and is mathematically stated in Faraday's law as</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image4.gif"></sub></sub><sub>
<br>where N is the number of (identical) turns of the coil. This </sub><sub>emf</sub><sub> is a "net push” around a circuit that causes electrons to move. Voltage and </sub><sub>emf</sub><sub> are closely related concepts. We can determine the induced voltage V (</sub><sub>t )</sub><sub> using the following equivalent circuit: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image5.gif"></sub></sub><sub>
<br>Applying this equivalent circuit to each side of the transformer shown on the first page gives: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image6.gif"></sub></sub><sub>
<br></sub><sub>The polarity of the lumped </sub><sub>emf</sub><sub> source is set by the direction of the current: a voltage source has current entering the negative terminal. The sign of the </sub><sub>emf</sub><sub> source is due to the direction of </sub><sub>ds</sub><sub> (by the RHR) and the assumed direction </sub><sub>for ?</sub><sub>m (and hence B ). From these circuits and applying (3), the sinusoidal steady state voltage at the primary and secondary are both of the form</sub><sub>
<br>V = j? </sub><sub>N?m</sub><sub> </sub><sub>
<br>where V and ?m are now </sub><sub>phasors</sub><sub>. Specifically, the primary and secondary voltages are</sub><sub>
<br></sub><sub>Vp</sub><sub> = j? </sub><sub>Np</sub><sub> ?</sub><sub>m Vs = j? </sub><sub>Ns</sub><sub>?m</sub><sub>
<br>Dividing these two equations gives</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image7.gif"></sub></sub><sub>
<br>where n is called the turns ratio. Interestingly, we see here that the "output” voltage Vs can be different in amplitude than the "input” voltage </sub><sub>Vp</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image8.gif"></sub></sub><sub>
<br>Note that if Ns &gt; </sub><sub>Np</sub><sub> ,</sub><sub> the secondary voltage is larger in amplitude than the primary voltage. Very interesting. </sub><sub>
<br>&bull; If Ns &gt; </sub><sub>Np</sub><sub> ,</sub><sub> called a step-up transformer, </sub><sub>
<br>&bull; If Ns &lt; </sub><sub>Np</sub><sub> , called a step-down transformer</sub><sub>
<br></sub><b><sub>Primary and Secondary Currents</b></sub><sub>
<br>Next we will consider the electrical currents in the primary and secondary of the transformer. From (1), the magnetic flux is the sum of the two magnetic fluxes from each coil</sub><sub>
<br></sub><sub>?m</sub><sub> =?mp +?ms</sub><sub>
<br>Using (2) and noting that ?ms will be negative since the direction of the current is assumed OUT of the secondary, then ?m = </sub><sub>Np</sub><sub> Al </sub><sub>Ip</sub><sub> ? </sub><sub>Np</sub><sub> Al Is Solving for I p we find that</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image9.gif"></sub></sub><sub>
<br>The magnetic flux is not a circuit quantity. To derive an equivalent circuit for the transformer we need to express </sub><sub>m ?</sub><sub> </sub><sub>in</sub><sub> terms of electrical circuit quantities. To accomplish this, we use (5) in the first term of (11) yielding</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image10.gif"></sub></sub><sub>
<br>where p L is the inductance of the primary coil. Substituting this result back into (11) gives</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image11.gif"></sub></sub><sub>
<br>This last result is extremely illuminating. We see that the current in the primary is the sum of two parts: (1) magnetization current and (2) transformer current. </sub><sub>
<br>(1) Magnetization Current. The first term in (13) does not involve the secondary in any way. In other words, this is the current the transformer would draw regardless of the </sub><sub>turns</sub><sub> ratio of the transformer. </sub><sub>
<br>(2) Transformer Current. The second term in (13) directly depends on the secondary because of the s N term. This component of the primary current is a transformed secondary current, in a manner similar to the voltage in (7), though inversely. </sub><sub>
<br></sub><b><sub>Ideal Transformer</b></sub><sub>
<br>If the magnetization current </sub><sub>Vp</sub><sub>/( </sub><sub>j?Lp</sub><sub>) in (13) is very small in magnitude relative to the transformer current ( Ns| </sub><sub>Np</sub><sub>) Is then such a device is called an ideal transformer. The equations for an ideal transformer are from (7) and (13): </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image12.gif"></sub></sub><sub>
<br>The circuit symbol for an ideal transformer is</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image13.gif"></sub></sub><sub>
<br></sub><b><sub>Discussion</b></sub><sub>
<br>1. We can surmise from (15) that for an ideal step-up transformer Is &lt; I </sub><sub>p .</sub><sub> Therefore, while from (14) the voltage increases by Ns / </sub><sub>Np</sub><sub> ,</sub><sub> the current has decreased by </sub><sub>Np</sub><sub> / Ns . In the </sub><sub>NorCal</sub><sub> 40A, the transformer T1 is used to step up the current from the Driver Amplifier to the Power Amplifier. For T1, 14 </sub><sub>Np</sub><sub> = and 4 Ns = so that ( ) Is = (</sub><sub>Np</sub><sub>/ Ns) I =7/</sub><sub>2 ?</sub><sub> </sub><sub>Ip</sub><sub> .</sub><sub> Because of this current behavior, the power input to the primary equals the </sub><sub>po</sub><sub> </sub><sub>wer</sub><sub> output from the secondary: Pp (</sub><sub>t )</sub><sub> =</sub><sub>Vp</sub><sub> (t ) Is (t ) </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image14.gif"></sub></sub><sub>
<br>Therefore, the input power Pp (t ) equals the output power Ps (t ), as would be expected. </sub><sub>
<br>2. With an impedance Zs connected to the secondary, then</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image15.gif"></sub></sub><sub>
<br>Substituting for Vs and Is in this equation using (14) and (15) </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image16.gif"></sub></sub><sub>
<br>In other words, the effective input impedance </sub><sub>Zp,eff</sub><sub> at the primary terminals (the ratio </sub><sub>Vp</sub><sub>/</sub><sub>Ip</sub><sub>) is</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image17.gif"></sub></sub><sub>
<br>The ideal transformer "transforms” the load impedance from the secondary to the primary. (Remember that this is only true for sinusoidal steady state signals.) 3. For maximum power transfer, we design a circuit so that the load is matched to the output resistance. We can use transformers as matching networks. </sub><sub>
<br>For example, in the </sub><sub>NorCal</sub><sub> 40A, T3 is used to transform the output impedance from the RF Mixer (3 k?) to match the input impedance of the IF Filter (</sub><sub>200 ?</sub><sub>). Using (18) </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image18.gif"></sub></sub><sub>
<br>which is very close to the desired </sub><sub>200 ?.</sub><sub> </sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier</b><b> transform</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match</b><b> filter</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic</b><b> circuits</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro</b><b> statics</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
	<br>7253
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
	<br>9453
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in </b><b>ies</b><b> in </b><b>indore</b>" NavigateUrl="~/engineering/electronics-communication/transformers_ideal_transformers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transformers_ideal_transformers/image20.wmf"></sub>
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
