<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Oscillators_Clapp_Oscillator_VFO_Startup.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Oscillators_Clapp_Oscillator_VFO_Startup" %>
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
	<b>Oscillators Clapp Oscillator VFO Startup</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Oscillators Clapp Oscillator VFO Startup</b>
<br>Oscillators are circuits that produce periodic output voltages, such as sinusoids. They accomplish this feat without any "input” signal, other than dc power. Our NorCal 40A has three: 
<br>1. VFO (an LC oscillator), 
<br>2. BFO (a crystal oscillator), 
<br>3. Transmitter oscillator (also a crystal oscillator). 
<br>You've likely had some experience with oscillators, perhaps with the astable multivibrator using the 555 IC. This RC oscillator produces a square-wave output voltage that is useful at low frequencies. Generally used in hobby-type circuits. The oscillators in the NorCal 40A are called feedback oscillators. This is a somewhat difficult subject since these oscillators are intrinsically nonlinear devices. Feedback oscillators have three basic parts: 
<br>1. An amplifier with signal gain G, 
<br>2. A linear feedback network with signal loss L, 
<br>3. A load of resistance R. 
<br>We'll ignore the effects of R for now. The amplifier and feedback network are connected as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image1.gif"></sub>
<br>For the amplifier y = Gx while for the feedback network x =y/l =>  y =Lx Here we have two equations for two unknowns. However, these are not linearly independent equations! If
<br>&bull; G ? L ? x = y = 0. No oscillation is possible. 
<br>&bull; G = L ? y and x may not be zero. Hence, oscillation is possible. 
<br>Generally, G and L are complex numbers, so we have two real equations to satisfy in the equality G = L: 
<br>1. G = L - the magnitudes are equal . 
<br>2. ?G = ?L - the phase angles are equal. 
<br>The meaning of (11.3) is that the gain of the amplifier compensates for the loss of the feedback network. The meaning of (11.4) is that the feedback network compensates for the phase shift (i.e., time delay) of the amplifier. In a feedback oscillator, noise in the circuit will be amplified repeatedly until a single frequency output signal y is produced - a perfect oscillation. In general can be satisfied for the situations shown in G may decreases at high power levels due to amplifier overloading: 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image2.gif"></sub>
<br>In the NorCal 40A this decreasing G occurs because of gain limiting rather than overloading of the amplifier – this scheme yields a cleaner sinusoidal output signal. The phase criterion in is met using a resonant circuit in the feedback network. Why? Because near the resonant frequency of the feedback circuit, the phase ?L varies rapidly, as shown in This characteristic allows precise placement of the oscillator frequency. Clever! (Also has the effect of producing smaller "phase noise.”) Hence, from the two curves in we see that the oscillation criteria are met when
<br>&bull; G( P<sub>0</sub>) = L (at a certain P<sub>0</sub>) 
<br>&bull; ?L( f<sub>0</sub>) = ?G (at a certain f<sub>0</sub>)
<br><b>Oscillator Startup</b>
<br>Another important aspect of oscillators is how they begin oscillating (remember: no input!). The criteria we just derived apply to steady state power at the frequency of oscillation. There are two general approaches to starting an oscillator: (1) repeated amplification of noise, or (2) with an external startup signal (as in super-regenerative receivers). If|G| &gt; |L |, then noise that meets the phase criterion (11.6) will be repeatedly amplified. At startup, we will use the small signal gain g to state the start-up criterion for feedback oscillators: 
<br>1. |g| &gt;|L| , 
<br>2. ?L( f<sub>0</sub>) = ?g . 
<br>Interestingly, some oscillators that work well at relatively high power will not start-up by themselves at low power. An example of this is Class C amplifiers, like the Power Amplifier Q7 in the NorCal 40A. Rather than the gain curve shown in Fig. 11.1(b), class C amplifiers have the gain curve shown below. (This G curve was constructed from data collected in Prob. 24.B.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image3.gif"></sub>
<br>Class C amplifiers will not oscillate if P &lt; P<sub>s</sub> . However, once P &gt; P<sub>s</sub> oscillation may occur if the feedback network meets the phase criterion It turns out, interestingly, that the oscillators in the NorCal 40A (such as the VFO) actually startup in Class A then shift to Class C as P increases. 
<br><b>Clapp Oscillator</b>
<br>There are many topologies for feedback oscillator circuits. However, all can be divided into two general classes: (1) Colpitts and (2) Hartley oscillators. Each contains an amplifier, a resonator and a voltage divider network to feed some of the output signal back to the input (called "feedback”). In Colpitts oscillators, capacitors form the voltage divider, while inductors form the divider network in Hartley oscillators
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image4.gif"></sub>
<br>The VFO in the NorCal 40A is a Clapp oscillator, which is a member of the Colpitts family since capacitors form the voltage divider network: 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image5.gif"></sub>
<br>We will analyze the NorCal 40A VFO in two stages. First is startup using small-signal (i.e., linear) analysis. In the next lecture, we will look at steady state using a large signal analysis
<br><b>VFO Startup Condition</b>
<br>We can construct the small signal equivalent circuit for the VFO in as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image6.gif"></sub>
<br>Referring back to the input x in this circuit is v<sub>gs</sub> while the output y is i<sub>d</sub> : 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image7.gif"></sub>
<br>With i<sub>d</sub> = g<sub>m</sub> v<sub>gs</sub> for the JFET, we use the small-signal gain g<sub>m</sub> = g in the startup criterion and 
<br>1. |g<sub>m</sub>| &gt;| L| , 
<br>2. ?L f<sub>0</sub> = ?g<sub>0</sub> . 
<br>g<sub>m</sub>m is a real and positive quantity dependent on the type of JFET and the value of v<sub>gs</sub>. See (p. 173) for an example We'll now solve for v<sub>gs</sub> in terms of id, since L is a ratio of them. This circuit will oscillate at the resonant f of the tank because of the phase criterion (11.9). The resonant frequency f<sub>0</sub> is
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image8.gif"></sub>.
<br>which is in series with L<sub>1</sub>. Now, at this resonant f = f<sub>0</sub>, i<sub>2</sub> + i = 0 (a key!). Hence, with
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image9.gif"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image10.gif"></sub>
<br>At resonance, the source terminal of the JFET has the voltage
<br>v<sub>s</sub> = Ri<sub>d</sub>
<br>Substituting gives
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image11.gif"></sub>
<br>This is our needed equation since we have v<sub>gs</sub> in terms of i<sub>d</sub> . Now, by the definition of L in
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image12.gif"></sub>
<br>By obtaining this equation, we have solved for the small signal loss factor of the feedback network in Fig. 11.5. With this L factor now known, it is simple matter to determine the startup condition for the VFO. Specifically, we find that the startup condition for this JFET VFO (Clapp oscillator) is
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image13.gif"></sub>
<br>In the NorCal 40A, C<sub>1</sub> = C<sub>2</sub> (actually C52 = C53) giving the startup condition
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image14.gif"></sub>
<br>But what about the phase condition ?L( f<sub>0</sub>) = ?g<sub>m</sub> ? Notice that both g<sub>m</sub> and L have zero phase shift at the resonant frequency. Consequently, the phase criterion for startup is intrinsically satisfied. In summary, if the condition (11.25) is satisfied the VFO circuit in the NorCal 40A will begin to oscillate on its own by repeatedly amplifying noise. Very cool! 
<br><b>Check VFO Startup Design</b>
<br>Let's carefully look at VFO startup in the NorCal 40A. The load resistance R of is R23. The VFO begins oscillation with vg near zero because of R21, which is why it is called the “start up resistor.” With v<sub>gs</sub> &#8804; 0, then gm is large: 
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image15.gif"></sub>
<br>Now let's check the startup condition. From
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image16.gif"></sub>
<br>At startup, 18 g<sub>m</sub> ? mS while 1/R23 ? 0.556 mS. The answer is then yes (by 32x). Therefore, the VFO in the NorCal 40A should easily start up. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
	<br>8707
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/oscillators_clapp_oscillator_vfo_startup.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_oscillators_clapp_oscillator_vfo_startup/image18.wmf"></sub>
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
