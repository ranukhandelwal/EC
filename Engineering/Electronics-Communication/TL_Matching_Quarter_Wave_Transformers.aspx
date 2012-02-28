<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="TL_Matching_Quarter_Wave_Transformers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.TL_Matching_Quarter_Wave_Transformers" %>
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
	<b>TL Matching Quarter Wave Transformers Resistive Pads</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>TL Matching Quarter Wave Transformers. Resistive Pads.</b>
<br>Transmission lines are commonly used as components in communication systems. In this capacity, the TL functions as a conduit for an electrical signal as it propagates from one subsystem to another. In such an application, we want to transfer as much of the signal's electrical energy to its destination as possible. However, reflections from the load (i.e., the stination) may prevent this from happening. Consider the sinusoidal steady state excitation of a TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image1.gif"></sub>
<br>As we have already seen in previous lectures, there will be no reflection from the load if Z<sub>L</sub> = Z<sub>0</sub> . This is called a matched TL. A matched TL has a VSWR = 1. In general, though, an equivalent circuit at the input to the above TL is
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image2.gif"></sub>
<br>According to the maximum power transfer theorem and a fixed Z<sub>s</sub> , maximum power is delivered to the load on a lossless TL when Z<sub>in</sub> = Z<sub>s</sub> <sup>*</sup> . Furthermore, for almost all high frequency equipment Z <sub>s</sub> = Z<sub>0</sub> . Now, if Z<sub> L </sub>= Z<sub>0</sub> it is straightforward to show that Z<sub> in </sub>= Z<sub>L</sub>. Hence, Z<sub> in </sub>= Z<sub>s</sub><sup>*</sup> [because Z<sub>s</sub><sup>*</sup>=(z<sub>0</sub>)<sup>*</sup>= Z =0 and Z<sub>0</sub>= Z<sub>L</sub> ]. In summary, on a lossless and matched TL we have shown that the maximum power transfer condition is met. 
<br><b>Matching Networks</b>
<br>In the more common situation when Z<sub>L</sub> &#8800; Z <sub>0</sub>, matching a load to a TL is commonly accomplished using additional circuitry attached to the TL. This additional circuitry is called a matching network. 
<br>We will discuss three types of matching networks in this course: 
<br>1. Quarter-wave transformer
<br>2. Resistive pads
<br>3. Single-stub tuner. 
<br><b>Quarter-Wave Transformer</b>
<br>We've seen in a couple of lectures now that for a TL in the sinusoidal steady state with an arbitrary load
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image3.gif"></sub>
<br>the total impedance at position d from the load is
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image4.gif"></sub>
<br>With the generalized reflection coefficient given as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image5.gif"></sub>
<br>Now suppose that the length L of the TL at some frequency is exactly &lambda; / 4. Then, 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image6.gif"></sub>
<br>There fore
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image7.gif"></sub>
<br>By definition, we know that
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image8.gif"></sub>
<br>Substituting this result in (2) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image9.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image10.gif"></sub>
<br>This result in (3) is an interesting characteristic of a TL that is exactly &lambda; /4 long at a given frequency. We can harness this characteristic to design a matching network using a &lambda; /4-long section of TL. Consider the following structure composed of an impedance load interconnected to a TL (we'll call this TL #1) through a &lambda; /4-section of a second TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image11.gif"></sub>
<br>Imagine we wish to match an arbitrary load L Z to the TL #1. We can use (3) to design this &lambda; /4 section of TL by adjusting its characteristic impedance, Z<sub>0</sub> . In particular, to match Z<sub>L</sub> to TL #1 we require Z<sub>in,1</sub> = Z<sub>0,1</sub> . For this example, the applicable quantities for (3) are
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image12.gif"></sub>
<br>Using these values in (3) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image13.gif"></sub>
<br>In other words, if the &lambda; /4 section of TL has the special characteristic impedance given in (4) - a geometric mean of Z <sub>0,1</sub>and Z<sub>L</sub> then TL #1 will be matched to the load. This type of matching network is called a quarter-wave transformer (QWT). It transforms the impedance from one value to another from the output of the &lambda; /4 section to its input, according to (3). 
<br><b>QWT Discussion</b>
<br>Ideally, a matching network should not consume (much) power. In (4) we can deduce that Z<sub>0</sub> will generally be a complex quantity indicating that for a perfect match, the QWT will need to include a lossy TL. However, if the load is purely resistive we can connect the QWT directly to the load and use a lossless TL. Otherwise if Z<sub> L </sub>is not resistive, we can insert a third TL (TL #2 in the figure below of length d<sub>q</sub> ) such that Z<sub>in,2</sub> is real. [Think of the Smith chart (!) and the values of Z<sub>in,2</sub> at |V<sub> d</sub>|<sub>max</sub> or |V<sub> d</sub>|<sub>min</sub>]
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image14.gif"></sub>
<br>Two disadvantages of this QWT are that: 
<br>1. We would need to cut the TL to insert it, and
<br>2. It works perfectly only for one load at one frequency. 
<br>Actually, it produces some bandwidth of "acceptable” VSWR on the TL, as do all real-life matching networks. 
<br><b>Resistive Pads</b>
<br>A resistive pad is essentially an attenuator that provides a good deal of matching capabilities. Unfortunately, this matching capability comes at a price: reduced signal level. Moreover, these pads are sometimes relatively expensive. A pi-structure resistive pad has the following topology: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image15.gif"></sub>
<br>The insertion loss (IL) of a resistive pad is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image16.gif"></sub>
<br>It can be shown that the design equations for the pi-structure resistive pad are
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image17.gif"></sub>
<br>A sample of a resistive pad design and its performance is shown in the VisualEM "Section C.4.4 and Problem C.4.13” worksheet. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>8706
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>13419
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>7500
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>7253
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>7280
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br>12726
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/tl_matching_quarter_wave_transformers.aspx"></asp:HyperLink> 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are </b><b>already registered else register here</b> </td>
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tl_matching_quarter_wave_transformers/image19.wmf"></sub>
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
