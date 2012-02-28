<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Transformer_Shunt_Inductance_Tuned_Transformers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transformer_Shunt_Inductance_Tuned_Transformers" %>
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
	<b>Transformer Shunt Inductance Tuned Transformers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transformer Shunt Inductance </b>
<br><b>Tuned Transformers</b><b>
<br>In the last lecture, we derived the transformer equations</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image1.gif"></sub></b><b>
<br>where Im = magnetization current and It = transformer current. An equivalent electrical circuit for such a nonideal transformer can be constructed from these two equations </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image2.gif"></sub></b><b>
<br>In particular, we have a shunt inductor that appears at the primary terminals of an ideal transformer. With the shunt inductance in the model, the high-pass nature of a physical transformer is properly accounted for, since at DC the primary terminals of T will be shorted. </b><b>
<br>Without the shunt L, the ideal transformer appears to transform voltages and currents equally well for all frequency, which cannot be true (by Faraday's Law). </b><b>
<br>Secondary Inductance</b><b>
<br>Equivalently, the shunt inductance can also have been incorporated from the secondary.To do this, we begin again with</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image3.gif"></sub></b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image4.gif"></sub></b><b>
<br>Now, from (6.10) V</b><b><sub>s</b></sub><b> = N</b><b><sub>s</b></sub><b> j??</b><b><sub>m</b></sub><b>
<br>Or</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image5.gif"></sub></b><b>
<br>Substituting (3) into (2) leaves</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image6.gif"></sub></b><b>
<br>Or</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image7.gif"></sub></b><b>
<br>The equivalent electrical circuit for (6.21) and this last expression is</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image8.gif"></sub></b><b>
<br>To check the directions for the current shown in this figure, we can apply KCL at the secondary: </b><b>
<br>I</b><b><sub>t</b></sub><b> = I</b><b><sub>m</b></sub><b> + I</b><b><sub>s</b></sub><b> or I</b><b><sub>s</b></sub><b> = I</b><b><sub>t</b></sub><b> ? I</b><b><sub>m</b></sub><b>
<br>The minus sign here agrees with (5). To summarize this work so far, whether the magnetization current effect is included on the primary side or the secondary side of the transformer is immaterial: they are equivalent. Actually, we can develop this latter secondary inductance equivalent circuit simply from the impedance transformation property of the ideal transformer! Begin with</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image9.gif"></sub></b><b>
<br>We've seen previously that for an ideal transformer</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image10.gif"></sub></b><b>
<br>Here Z</b><b><sub>p</b></sub><b> = j? L</b><b><sub>p</b></sub><b> and L</b><b><sub>p</b></sub><b> = A</b><b><sub>l</b></sub><b> N</b><b><sub>p</b></sub><b><sup>2</b></sup><b>
<br>So that</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image11.gif"></sub></b><b>
<br>which we can model simply as an ideal transformer with a shunt Ls as shown on the previous page </b><b>
<br>Tuned Transformers</b><b>
<br>Achieving impedance match between the various subsystems in a multistage communications circuit is very important. Otherwise, precious signal is needlessly wasted. Transformers – specifically ideal transformers – can be used as matching networks since, as we've already seen, </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image12.gif"></sub></b><b>
<br>We can choose Np/Ns to change (or "transform”) Zp to a desired value for matching. </b><b>
<br>Note that (6.19) is valid only for ideal transformers. One way to negate the effects of the magnetization current Im in a practical transformer (so that the ideal T equations apply) is to use a tuning capacitor: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image13.gif"></sub></b><b>
<br>We can adjust C to resonate out the effects of Lp at the desired frequency of operation. That is, suppose the transformer is designed to operate at f = f0. For an LC resonance at f0 =1/ (2?under root LC ), then adjust C such that</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image14.gif"></sub></b><b>
<br>Consequently, now at this operating frequency f0</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image15.gif"></sub></b><b>
<br>and the equivalent circuit for this tuned transformer circuit becomes</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image16.gif"></sub></b><b>
<br>which is simply an ideal transformer. Very cool! This resonant method is only a narrow-band solution, but it can be extremely useful. Capacitive transformer tuning effectively makes a band-pass filter from a high-pass filter. </b><b>
<br>Examples</b><b>
<br>The two tuned transformers in the NorCal 40A are T2 (RF Filter) and T3 (matching between RF Mixer and IF Filter). Let's consider both of these quickly once again in the light of our expanded understanding of transformers</b><b>
<br>1. T3 (between RF Mixer and IF Filter): This transformer was also considered in the previous lecture. T3 is used to transform the output impedance from the RF Mixer to match the input impedance of the IF Filter (200 ?). From the data sheet for the SA602AN IC, the output impedance is 2x1500 ? = 3000 ?. Using (7): </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image17.gif"></sub></b><b>
<br>which is very close to the desired 200 ? for the IF Filter! </b><b>
<br>2. T2 (RF Filter): Consider once again the second order Butterworth bandpass filter example we discussed earlier in</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image18.gif"></sub></b><b>
<br>L1 and C1 are components that are soldered onto your PCB. Where do the 86.2 nH and 6.0 nF components come from? As we mentioned earlier in Lecture 12, they both come from T2! To see this explicitly for T2, L</b><b><sub>p</b></sub><b> = A</b><b><sub>l</b></sub><b> N</b><b><sub>p</b></sub><b> = 66 *10</b><b><sup>-9</b></sup><b> H/turn</b><b><sup>2</b></sup><b> 1</b><b><sup>2</b></sup><b> 66 nH, which is close to the 86.2 nH shown above that is needed for a second-order bandpass filter. What about the C? That comes from C2 and the impedance </b><b>transforming properties of T2: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image19.gif"></sub></b><b>
<br>With Ns = 20, Np = 1 and Cs = 15 pF, then</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image20.gif"></sub></b><b>
<br>which is exactly the value needed for the second order Butterworth bandpass filter! Very cool. </b>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
	<br>9452
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/transformer_shunt_inductance_tuned_transformers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transformer_shunt_inductance_tuned_transformers/image22.wmf"></sub>
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
