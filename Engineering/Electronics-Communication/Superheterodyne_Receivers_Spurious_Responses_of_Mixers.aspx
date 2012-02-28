<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Superheterodyne_Receivers_Spurious_Responses_of_Mixers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Superheterodyne_Receivers_Spurious_Responses_of_Mixers" %>
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
	<b>Superheterodyne Receivers Spurious Responses of Mixers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Superheterodyne Receivers Spurious Responses of Mixers</b>
<br>Recall from that a direct conversion receiver has the following simplified system diagram: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image1.gif"></sub>
<br>The frequencies internal to the direct conversion receiver are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image2.gif"></sub>
<br>From the last lecture, we can now understand that while f+ and fare the intended output signals, other frequency components will also be present at the mixer output due to HO harmonics produced in the mixing process. As we'll see shortly, these HO harmonics are not the same as “spurious responses of the receiver”, known as “spurs.” The superheterodyne receiver does not have the same troubles with image frequencies as the direct conversion receiver does: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image3.gif"></sub>
<br>The frequencies internal to the superheterodyne receiver are: 
<br>Stage 1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image4.gif"></sub>
<br>Stage 2: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image5.gif"></sub>
<br>in the text, the NorCal 40A system diagram is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image6.gif"></sub>
<br><b>Spurious Responses of Receivers (Spurs)</b><b>
<br>In addition to the image frequencies, there are additional spurious output responses from the receiver (called "spurs”) caused by signals mixing with higher harmonics of the LO. By definition, a spur is an unintended output signal from a receiver. For example, the VFO and BFO images shown in the diagrams on page 2 are spurs. </b><b>
<br>Recall that in the Gilbert cell, the LO (or more precisely a square wave at the LO frequency) multiplies the RF signal in the time domain. </b><b>
<br>This process will inevitably produce spurs due to the presence of HO harmonics produced by mixing. Let's consider these HO spurs from the RF mixer. In this case: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image7.gif"></sub></b><b>
<br></b><b>We ask: What RF frequencies can mix (i.e., multiply) with the third harmonic of the LO (VFO) to produce an output at the frequency f</b><b><sub>if</b></sub><b>? Mathematically, we are asking: </b><b>
<br>f</b><b><sub>3</b></sub><b> ? =3f</b><b><sub>lo</b></sub><b> +f</b><b><sub>if</b></sub><b> </b><b>
<br>or rearranging, </b><b>
<br>f</b><b><sub>3</b></sub><b> ? =3f</b><b><sub>lo</b></sub><b> ?f</b><b><sub>if</b></sub><b> </b><b>
<br>If a received antenna signal is present at this frequency f</b><b><sub>3</b></sub><b>? , we will hear it at the same time we hear the intended signal at f</b><b><sub>rf</b></sub><b>Not good. So once again, we need to filter this spur out.The other third harmonic spur is located at the frequency</b><b>
<br>So, spurs at f</b><b><sub>3</b></sub><b> ? and f</b><b><sub>3</b></sub><b> ? are in fact the "image frequencies” of the third harmonic of the LO. To verify that these two frequencies can generate spurious responses from the receiver, consider the following: </b><b>
<br>&bull; For f </b><b><sub>3</b></sub><b>?-</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image8.gif"></sub></b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image9.gif"></sub></b><b>
<br>So indeed, we see a signal at f</b><b><sub>3</b></sub><b> ? would generate a spurious signal at f</b><b><sub>if</b></sub><b>from the RF mixer. </b><b>
<br>&bull; For 3 f ?–</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image10.gif"></sub></b><b>
<br>Again, we see that a signal at f</b><b><sub>3</b></sub><b> ? would generate a spurious signal at f</b><b><sub>if</b></sub><b> from the RF mixer. There are also possible spurs from higher-order mixer products: </b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image11.gif"></sub></b><b>
<br></b><b>and so on. </b><b>
<br>How many and which spurs are potentially troublesome for a receiver depend on the specific construction of the receiver (its IF, RF, VFO, etc.)Let's look closely at the NorCal 40A and identify the troublesome spurs. </b><b>
<br>1. VFO image: </b><b>
<br>F</b><b><sub>i</b></sub><b> = f</b><b><sub>if</b></sub><b> ? f</b><b><sub>lo</b></sub><b> = 4.9 ? 2.1= 2.8 MHz</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image12.gif"></sub></b><b>
<br>2. Third VFO harmonic spurs: </b><b>
<br>f</b><b><sub>3</b></sub><b>=3f</b><b><sub>lo</b></sub><b>-f</b><b><sub>if</b></sub><b>=3.2.1-4.9=1.4mhz</b><b>
<br>(This spur is in the AM radio frequency band.) </b><b>
<br>f</b><b><sub>3</b></sub><b>=3f</b><b><sub>lo</b></sub><b>+f</b><b><sub>if</b></sub><b>=3.2.1+4.9=11.2mhz</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image13.gif"></sub></b><b>
<br>The RF Filter does a good job of filtering out both of these third harmonic spurs. However, f </b><b><sub>3</b></sub><b>? can be very strong and consequently heard on occasion. </b><b>
<br>3. Fifth VFO harmonic spurs: </b><b>
<br>f</b><b><sub>5</b></sub><b>? =5f</b><b><sub>lo</b></sub><b> ?f</b><b><sub>if</b></sub><b> =5?2.1 ?4.9 =5.6MHz</b><b>
<br>f</b><b><sub>5</b></sub><b>? =5f</b><b><sub>lo</b></sub><b> +f</b><b><sub>if</b></sub><b> =5.2.1+ 4.9=15.4MHz</b><b>
<br></b><b><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image14.gif"></sub></b><b>
<br>Of all the spurs, it turns out that f</b><b><sub>5</b></sub><b> ? is the one closest to the intended RF signal. It causes the largest spurious response in the NorCal 40A since it is difficult to filter out while at the same time continuing to receive the intended RF signal. In Prob. 28, you will work to locate two of the strongest spurs in the NorCal 40A, both of which are related to the RF Mixer. These are the image frequency f</b><b><sub>i</b></sub><b> of the RF Mixer and the fifth VFO-harmonic spur f</b><b><sub>5</b></sub><b> ? of the RF Mixer. </b><b>
<br>Later in Prob. 29, you will locate and measure the dB reduction of f</b><b><sub>3</b></sub><b> ? from the RF Mixer. However, you will be measuring the output voltage from the Product Detector. </b><b>Consequently, what you are actually measuring is how much of this RF Mixer spur "bleeds through” the Product Detector. </b>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
	<br>7254
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/superheterodyne_receivers_spurious_responses_of_mixers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_superheterodyne_receivers_spurious_responses_of_mixers/image16.wmf"></sub>
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
