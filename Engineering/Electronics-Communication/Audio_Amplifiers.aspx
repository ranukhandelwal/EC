<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Audio_Amplifiers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Audio_Amplifiers" %>
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
	<b>Audio Amplifiers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Audio Amplifiers</b>
<br>Once the audio signal leaves the Product Detector, there are two more stages it passes through before being output to the speaker
<br>1. Audio amplification, 
<br>2. Automatic gain control (AGC). 
<br>We'll discuss each of these separately, beginning with audio amplification in this lecture. 
<br>In the NorCal 40A, the Audio Amplifier is the LM386N-1 integrated circuit. The LM38x amplifier series is quite popular. A simplified equivalent circuit for the LM386 is shown in the data sheet beginning on p. 399 of the text: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image1.gif"></sub>
<br>We'll describe the operation of this circuit beginning near the input. (Note that Sedra and Smith, 5th edition, Sec. 14.8 has a nice description of a closely related circuit: the LM380 IC.) There are three stages of amplification in the LM386: 
<br>1. pnp common-emitter amplifiers (Q1 and Q2), 
<br>2. pnp differential amplifier (Q3 and Q4), 
<br>3. Class AB power amplifier (Q7 and Q8+Q9). 
<br>For the remainder of this lecture, we'll step through the LM386 equivalent circuit and explain the operation of each part. 
<br>&bull; Q1 and Q2: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image2.gif"></sub>
<br>Q1 and Q2 are pnp emitter follower amplifiers. These provide buffering of the input to the LM386. The 50-k? resistors provide dc paths to ground for the base currents of Q1 and Q2. Consequently, the input should be capacitively coupled so to not disturb this internal biasing. Because of these resistors, the input impedance will be dominated by these 50-k? resistors. 
<br>&bull; Q3 and Q4 with Re: 
<br>Q3 and Q4 form a pnp differential amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image3.gif"></sub>
<br>&bull; Q5 and Q6: 
<br>The differential amplifier is biased by the current mirror formed by Q5 and Q6: 
<br>
<br>In the current mirror, I<sub>6</sub> ? I<sub>5</sub> . To see this, notice that V<sub>be</sub> =V<sub>b</sub> for both transistors. With
<br>I<sub>c</sub> = I<sub>cs</sub> <sup>e</sup>V<sub>b</sub>|V<sub>t</sub>
<br>and V<sub>b</sub> the same for both transistors, then provided the two transistors are matched. This implies that I<sub>5</sub> ? I<sub>6</sub> , if we neglect the base currents wrt the collector currents. This is valid if the ?'s are large. This current-source biasing provides a reliable bias and considerably simplifies the analysis of amplifier circuits. 
<br><b>Signal Gain of the LM386</b>
<br>We're now in a position to compute the signal gain provided by the LM386. We'll see that the Audio Amplifier is providing much of the total gain in the NorCal 40A receiver. The current mirror forces the currents on both halves of the differential amplifier to be equal: both dc and ac components. Consequently, the currents i at the emitters of Q3 and Q4 must be the same, as shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image4.gif"></sub>
<br>From this circuit, the small signal ac model is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image5.gif"></sub>
<br>Notice that the voltage across R<sub>e</sub> is simply the differential input voltage v<sub>d</sub>. Why? Because the base-emitter voltage drops in the pnp transistors are the same on each side of the diff amp! Therefore, the voltage across R<sub>e</sub> is v<sub>d</sub>. Tricky.Due to the mirror, the current through R<sub>f</sub> ?2i , neglecting thecurrent in the two 15-k? resistors (which are large impedances relative to the other parts of the circuit). Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image6.gif"></sub>
<br>Now, the output voltage v is produced by a so-called "class AB” power amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image7.gif"></sub>
<br>The combination of Q8 and Q9 is called a "compound pnp
<br>transistor": 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image8.gif"></sub>
<br>Notice that???<sub>Q8</sub>?<sub>Q9</sub> , which is easy to show starting with i<sub>c8</sub>=?<sub>Q8</sub> i<sub>b8</sub> And c9 Q9 b9 i<sub>c9</sub> =?<sub>Q9</sub>i<sub>b9</sub> . 
<br>Compounding pnp's was done in early IC's to improve the traditionally poor performance of pnp transistors wrt frequency response, etc. That's not much of a problem today. Section 10.6 of the text has a discussion on class AB (and class B) power amplifiers. The result, in any event, is that the output voltage v will be much larger than v<sub>d</sub>. Therefore, from (1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image9.gif"></sub>
<br>Also, from the small-signal model shown above, we can see that
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image10.gif"></sub>
<br>Combining these last two results, we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image11.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image12.gif"></sub>
<br>This is the differential voltage gain of the LM386 audio amplifier. 
<br>Notice that this gain does not involve internal device parameters (such as the transistor ?'s) other than R<sub>f</sub>and R<sub>e</sub>. Nice. Have you ever seen such a result as (13.6) before? Sure, with simple operational amplifier circuits such as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image13.gif"></sub>
<br>The voltage gain is
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image14.gif"></sub>
<br>Similar to an op amp, the LM386 has incorporated feedback internally through R<sub>f</sub> and R<sub>e</sub>, in a fashion similar to this inverting op amp circuit that is using external components. Now, using (13.6), the gain of the LM386 shown in (i.e., no other components attached between pins 1 and 8) is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image15.gif"></sub>
<br>As you'll discover in Prob. 31, a capacitor can be placed (externally) across pins 1 and 8 of the LM386 to bypass Re at “high” frequencies [X<sub>c</sub> = (?C)<sup>-1</sup>]. In such a case, 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image16.gif"></sub>
<br>This is a sizeable gain at "high” frequencies. 
<br><b>LM386 Connection in the NorCal 40A</b>
<br>The NorCal 40A Audio Amplifier is built in stages in Prob. 31. The first stage of this construction is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image17.gif"></sub>
<br>The input is taken differentially, as shown, and is capacitively coupled by C20 and C21 for reasons we discussed on p. 2. Note that with the polarity of Vi shown above, we will expect the gain of this audio amplifier to be the negative of 
<br>The output is also capacitively coupled. Why? It can be shown that the dc output voltage is V<sub>cc</sub>/2 at pin 5 of the LM386. So once again, we need to capacitively couple in order not to disturb this internal biasing. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/audio_amplifiers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_audio_amplifiers/image20.wmf"></sub>
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
