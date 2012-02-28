<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Mixers_Gilbert_Cell.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Mixers_Gilbert_Cell" %>
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
	<b>Mixers Gilbert Cell</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Mixers Gilbert Cell</b>
<br>Mixers shift the frequency spectrum of an input signal. This is an essential component in electrical communications (wireless or otherwise) if we wish to use RF signals to convey audio or data signals over long distances, for example. The circuit symbol for a mixer has three ports
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image1.gif"></sub>
<br>Notice that all three ports have signals at different frequencies! “Mixing” has a couple of connotations. One is that of combining (by summing) signals from different channels (or sources), as in the recording industry. from the ARRL Handbook on the next page illustrates this principle. Clearly, this is not the type of “mixing” that's needed in communications. We need to shift the frequency. This type of mixing is the result of multiplying signals in the time domain, as shown of the ARRL Handbook. 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image2.gif"></sub>
<br>There are two general types of mixing circuits, those involving: 
<br>1. Nonlinear components, such as diodes, etc. 
<br>2. Linear, but time-varying circuits. These circuits can shift
<br>the frequency spectrum of a signal, in contrast to linear and time invariant circuits (which cannot). 
<br><b>Gilbert Cell</b>
<br>All mixers in the NorCal 40A are based on the Gilbert cell. The Gilbert cell uses a linear, time-varying circuit to achieve timedomain multiplication, and hence, frequency shifting. A Gilbert cell is shown The RF signal is input to a long-tailed differential amplifier, which we studied in Sec. 9.8. The collectors of Q1 and Q2 have a cross connected set of four transistors, which are driven by a local oscillator (LO). To see how the Gilbert cell operates, first consider what happens when the voltage V<sub>LO1</sub> is large enough so that Q3 and Q5 turn on and VLO2 is small enough, that Q4 and Q6 turn off: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image3.gif"></sub>
<br>Here we see that Q3 and Q5 act as closed switches so that: 
<br>&bull; Q1 is connected to R1, and
<br>&bull; Q2 is connected to R2
<br>as in a "typical” differential amplifier configuration with the output taken at, what we will call here, the "IF” terminals. Second, consider what happens when the opposite input occurs. Specifically, suppose VLO2 is large enough so that Q4 and Q6 are on while VLO1 is small enough that Q3 and Q5 are off: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image4.gif"></sub>
<br>Now we see that Q4 and Q6 act as closed switches so that
<br>&bull; Q1 is connected to R2, and
<br>&bull; Q2 is connected to R1. 
<br>This also is a differential amplifier configuration, but with the outputs interchanged wrt to the previous case. In other words, the output (the IF) is almost the same as before. It has just been multiplied by the factor –1. The overall function of the Gilbert cell is to multiply in the time domain the input RF signal (at the RF frequency) by a square wave with value +1 or –1 at the LO frequency! This is mixing. The Gilbert cell is also an active mixer in that the IF output signal is amplified because of the differential amplifier gain. (Active mixers are very nice in the sense that they accomplish two jobs at once: they mix and they amplify.) A Gilbert cell is the active mixer inside the SA602AN IC used in the NorCal 40A (see the datasheet on p. 415). As we've already seen, this IC also has part of an oscillator circuit built inside. What a versatile IC! From Fig. 4 of the SA602AN datasheet we can see that certain subsystems are internally biased. Consequently, we don't need to construct an external bias circuit. However, we must capacitively couple to the SA602AN so we don't disturb this biasing (examples of this are C4, C5, C13, C15, C31 and C33). 
<br><b>Mixer Mathematics</b>
<br>It is helpful to study the mathematic basis behind the Gilbert cell. This will help us understand this circuit better, as well as develop an appreciation of the mixing process in general. Let's define the RF input voltage as
<br>V<sub>rf</sub>(t) =V<sub>rf</sub>cos( ?<sub>rf</sub>t) 
<br>and define the mixing signal (which is not the LO signal, as is stated in the text) by the square wave: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image5.gif"></sub>
<br>Since this mixing signal is a periodic waveform, we can expand it in this Fourier series
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image6.gif"></sub>
<br>as derived in Sec. 2 of Appendix B.The Gilbert cell effectively multiplies both of these signals (12.2) and (12.3) in the time domain as
<br>V(t) =V<sub>rf</sub>(t) ?V<sub>max</sub>(t) 
<br>Giving
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image7.gif"></sub>
<br>Where
<br>?<sub>+</sub>= ? <sub>10</sub>?<sub>rf</sub> ? <sub>-</sub> |? <sub>10</sub>?<sub>rf</sub>|
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image8.gif"></sub>
<br>Note in (12.5) that we have the sum and difference signals present in the output (IF) voltage signal: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image9.gif"></sub>
<br>as well as the third-harmonic terms: 
<br>. <sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image10.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image11.gif"></sub>
<br>and the fifth-harmonic terms: 
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image12.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image13.gif"></sub>
<br>and all higher-ordered odd harmonics. Observe that the amplitudes of these harmonics are decreasing with increasing harmonic number. Also note that the RF signal, the LO signal and the even mixer harmonics are not present in the output. Nice! This occurs because the Gilbert cell is a balanced mixer. However, in reality some (or all) of these signal components will be present in the output since we won't have a perfectly balanced mixer. 
<br><b>NorCal 40A Mixers</b>
<br>There are three mixers in the NorCal 40A. You'll install the: 
<br>1. RF Mixer in Prob. 28, 
<br>2. Product Detector in Prob. 29, and
<br>3. Transmit Mixer in Prob. 30. 
<br>In addition, using the measured spectrum from the output of the Transmit Mixer shown in you will identify the various harmonics using
<br>f<sub>mn</sub> = mf<sub>vfo</sub> &#177; nf<sub>to</sub> 
<br>There is a misprint of this equation in the text. 
<br><b>onversion Gain</b>
<br>Gain (or loss) of a mixer is characterized with a power gain expression similar to any amplifier
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image14.gif"></sub>
<br>where G is called the conversion gain, P is the output IF power and P<sub>+</sub> is the available power from the RF source. Here, however, the input and output frequencies of the two signals are different. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/mixers_gilbert_cell.aspx"></asp:HyperLink> 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered else register </b><b>here</b> </td>
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_mixers_gilbert_cell/image17.wmf"></sub>
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
