<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Lossy_TLs_Dispersionless_TLs_Special_Cases_for_General_TLs.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Lossy_TLs_Dispersionless_TLs_Special_Cases_for_General_TLs" %>
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
	<b>Lossy TLs Dispersionless TLs Special Cases for General TLs</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Lossy TLs Dispersionless TLs Special Cases for General TLs.</b>
<br>Real transmission lines – such as coaxial cables – have losses that will, among other effects, attenuate the signal as it propagates along the TL. As we've learned, there are two types of current (conduction and displacement) and both of these are supported on a transmission line and are necessary for its operation. There are loss mechanisms associated with each type of current: 
<br>. R is due to the conductor losses in the metal parts of the TL. 
<br>. G is due to the losses in the dielectric material surrounding the conductors in the TL. 
<br>The equivalent circuit for an infinitesimally short section (z) of such a lossy TL is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image1.gif"></sub>
<br>Following a procedure very similar to the lossless TLs, we can derive the phasor domain form of the telegrapher's equations as
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image2.gif"></sub>
<br>The phasor form of the wave equations for V (z) and I (z) can be derived from these telegrapher's equations quite easily. For example, taking the derivative of (2) 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image3.gif"></sub>
<br>Substituting (2) into this equation gives the phasor-domain form of the wave equation for V (z) to be
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image4.gif"></sub>
<br>The general solution for V(z) in (3) is
<br>V(z)=V<sup>+</sup><sub>0</sub>e<sup>-yz</sup>+V<sub>0</sub><sup>-</sup>e<sup>+yz</sup>
<br>where &gamma; is the propagation constant defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image5.gif"></sub>
<br>We see from this definition of &gamma; that it is a complex quantity, so we'll define its real and imaginary parts as
<br>&gamma; &alpha;+ j&beta;[m-1] 
<br>where &alpha;[ is called the attenuation constant [Np/m] and &beta;[ is the phase constant [rad/m]. 
<br>Consequently, with
<br>V(z) = V<sub>0</sub><sup>+</sup> e <sup>-az</sup> e<sup>-j</sup><sup>&beta;</sup><sup>z </sup>+ V<sub>0</sub><sup>-</sup> e <sup>+az</sup> e <sup>+j</sup><sup>&beta;</sup><sup>z</sup>
<br>We can surmise that the voltage signal will attenuate as it propagates along the TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image6.gif"></sub>
<br>As shown in the text: 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image7.gif"></sub>
<br>Z<sub>0</sub> is the same characteristic impedance concept for the TL we've been using for lossless TLs. However, for a lossy TL we see from (8) that Z<sub>0</sub> is a complex number. Lastly, the solution for the current waves on a lossy TL is
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image8.gif"></sub>
<br>The current waves attenuate as they propagate, just as the voltage waves. 
<br><b>Signal Dispersion</b>
<br>Another non-ideal characteristic of general (lossy) TLs is signal dispersion. This occurs when the signal velocity is a function of frequency. 
<br>With &mu; = &omega; /&beta; and from (6) and (5), we surmise that &beta; is not
<br>simply &omega; lc . Consequently, u is a function of frequency. 
<br>This can be a very undesirable effect since the different frequency components of a signal will propagate at different speeds. This can lead to distortion of the signal, which gets worse the further the signal travels along the TL. 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image9.gif"></sub>
<br><b>Dispersionless Transmission Lines</b>
<br>Oliver Heaviside (in the late 1800s) discovered the amazing fact that it is possible to design a lossy TL so that it presents no signal dispersion! For this to happen, he found the PUL parameters of the TL must satisfy
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image10.gif"></sub>
<br>When this condition is met, then &alpha; and &mu; are not functions of frequency! To verify this, note from (5) with r l = g c that: 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image11.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image12.gif"></sub>
<br>Now, using this result in (11) compute the velocity, &alpha;, and Z<sub>0</sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image13.gif"></sub>
<br>This is not a function of frequency. It's actually the same result as for lossless TLs! 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image14.gif"></sub>
<br>We see that &alpha; is not a function of frequency. That's a great result. While there is definitely some attenuation of the signal as it propagates (&alpha; = 0), this attenuation is no frequency dependent. Consequently, we could position linear amplifiers along the channel if needed. 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image15.gif"></sub>
<br>This is the same result as for a lossless TL. It's also not a function of frequency. 
<br><b>Special Cases for General TLs</b>
<br>There are two special - and extreme - cases of general, lossy TLs that are worth discussing. These are the large reactance and large resistance approximations. 
<br>1. Large Reactance Approximation. In this case &omega;l &gt;&gt; r and g &#8776 0. 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image16.gif"></sub>
<br>While
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image17.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image18.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image19.gif"></sub>
<br>Consequently, in the large reactance limit
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image20.gif"></sub>
<br>Both are independent of frequency! Recall Heaviside's dispersionless line conditions from
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image21.gif"></sub>
<br>When g is small, it is difficult to make r/l small to satisfy this condition. However, with the large reactance line we have achieved nearly the same condition. Neat! For a practical example, telephone companies achieve nearly this large reactance state by adding lumped inductor coils every mile or so: 
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image22.gif"></sub>
<br>Say d = 1 mile = 1,609 m = 0.1 &lambda;. Then this implies that 0.1 &lambda; = u/f = 0.67 c0. Therefore, f<sub>max</sub> &#8776 0.1.0.67 .3*10 <sup>10</sup> 20 MHz. Consequently, 1 mile is small with respect to wavelength for frequencies up to approximately 20 MHz. 
<br>2. Large Resistance Approximation. On the other extreme is when r &gt;&gt;&omega;l and g&#8776 0. In this case
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image23.gif"></sub>
<br>Using that fact that
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image24.gif"></sub>
<br>From this expression, we can identify
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image25.gif"></sub>
<br>Both &alpha; and &mu; are functions of frequency (actually f ) and the TL is highly dispersive. This is not a good communications "channel”. The first transatlantic cable was, unfortunately, an example of such a "high resistance” line and was found to be useless for communications. There is an interesting description of this on pp. 82-83 in your EE 322 text The Electronics of Radio by D. Rutledge. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/lossy_tls_dispersionless_tls_special_cases_for_general_tls.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_lossy_tls_dispersionless_tls_special_cases_for_general_tls/image27.wmf"></sub>
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
