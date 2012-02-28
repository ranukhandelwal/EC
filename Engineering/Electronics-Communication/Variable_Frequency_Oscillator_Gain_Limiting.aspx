<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="Variable_Frequency_Oscillator_Gain_Limiting.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Variable_Frequency_Oscillator_Gain_Limiting" %>
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
	<b>Variable Frequency Oscillator Gain Limiting</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Variable Frequency Oscillator Gain Limiting</b>
<br>The VFO is one of the main subsystems in a transceiver. It sets the operating frequency for both reception and transmission. In order to "tune” to other frequencies, we actually change the frequency of this variable frequency oscillator. Two general methods for making variable oscillators are: 
<br>1. Begin with a crystal oscillator and pass the signal through dividing or multiplication circuits to create sinusoids at other frequencies. This is called a synthesized source (like your Agilent 33120A). 
<br>2. Using an LC oscillator with a variable C and/or L. Synthesized sources often are very stable wrt temperature and other climate effects. However, these circuits are generally complex and expensive. 
<br>LC oscillators are often cheaper but can be less stable with temperature, humidity and other environmental changes. Our VFO uses a varactor in an LC oscillator to tune frequency. It is important that once a frequency is set for communication, the transceiver frequency should not vary (at least not too much). 
<br><b>Frequency Drift</b>
<br>In the NorCal 40A, the VFO operates at 2.1 MHz and is used as an input to the Transmit and RF Mixers
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image1.gif"></sub>
<br>One reason for choosing a relatively "low” VFO frequency is that frequency drift is proportional to operating frequency. Hence, a lower f produces a smaller f drift per ºC change. Also, note that the VFO circuitry in the NorCal 40A is physically as far away as possible from the Power Amplifier. The PA generates most of the heat in the transceiver. The temperature coefficient ? of some quantity x is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image2.gif"></sub>
<br>where T is the temperature (usually &#176;C). Your text lists temperature coefficients for many NorCal 40A components in Tables D.1 and D.2 on p. 356. (You can also find these coefficients in component data sheets.) For example: 
<br>&bull; T68-7 core (for L9) has ? = +50 ppm/ºC, 
<br>&bull; Polystyrene capacitors (C51-C53) have ? = ?150 ppm/ºC. 
<br>Note that ppm = parts per million = Hz/MHz for our purposes. These four components in the VFO have oppositely signed temperature coefficients! Consequently, these two competing effects help to reduce the frequency drift caused by temperature changes . Plus, polystyrene capacitors are largely immune to humidity changes. 
<br><b>Apparatus for Problems 27 and 29</b>
<br>In Prob. 27, you will measure the temperature coefficient ? for your VFO, and make an estimate of the expected value. An apparatus has been constructed to enclose your PCB when making these ? measurements. Warm your PCB with the heat gun through the holes on the sides of the container. Be careful not to melt the plastic container. To help with this, hold the heat gun back about 1 foot and wave it back and forth. 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image3.gif"></sub>
<br><b>Gain Limiting</b>
<br>The VFO in the NorCal 40A is a Clapp oscillator, as shown in Fig. 11.4 and discussed in the last lecture. However, it turns out that the JFET amplifier is not overloaded, as sketched in order to obtain the gain condition |G |= |L |for oscillation. Instead, there is special gain limiting circuitry that has been added to the VFO to keep the JFET from overloading, but still allows the gain to vary with power level. This gain limiting circuit is formed from the diode, startup resistor and the divider capacitors C<sub>1</sub> and C<sub>2</sub> shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image4.gif"></sub>
<br>The purpose of the additional components are: 
<br>&bull; Startup resistor (R21 = 47 k?): When the NorCal 40A is turned on, R21 ensures that the initial gate voltage is zero. This provides a large g<sub>m</sub> so that the oscillator starts easily [g<sub>m</sub> &gt; 1/R ]. 
<br>&bull; Choke (RFC2 = 1 mH): This forces the DC value of the output voltage V<sub>s</sub> equal to zero. 
<br>&bull; Gain limiting diode (D9 = 1N4148): This diode only conducts for short periods of time when the sinusoidal gate voltage V<sub>g</sub> is near positive peaks. 
<br>Considering this last component more carefully, when D9 conducts, current flows up through the divider caps C<sub>1</sub> and C<sub>2</sub>, and then down through D. Consequently, charge is pulled from the caps leaving them with a net charge per cycle. This provides a negative dc voltage on the gate: 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image5.gif"></sub>
<br>The caps will discharge through the startup resistor, but that time constant ? is much greater than T (=1/f = 1/2.1 MHz). 
<br><b>Gain Limiting Circuit Simulation</b>
<br>The gain of the JFET amplifier Q8 in the VFO is limited by the circuit shown in Fig. 11.6. In a simulation of the VFO circuit here, we're going to use the It Sine transient current source in ADS, which is zero for t &lt; 0 and a sinusoid for t &gt; 0. This current source does not appear in the Nor Cal 40A VFO, and is used here only to illustrate how the capacitors C52 and C53 are charged up for gain limiting purposes. 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image6.gif"></sub>
<br>The intended operation of this gain limiting circuit is for the ideal diode DIODE1 to conduct only for positive peaks in I1. The capacitors slowly charge up and over many periods of the current source reach a steady negative voltage, which is precisely what is needed to limit the gain of Q8. In the following result, we can see that the voltage across the two capacitors indeed becomes negative and constant with time: 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image7.gif"></sub>
<br>Here are measurements from the actual VFO in the NorCal 40A: 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image8.gif"></sub>
<br>The yellow trace is the source voltage of Q8, while the blue trace is the gate voltage. Note that this latter voltage has a negative average value, as predicted. 
<br><b>Operation of the Gain Limiting VFO Circuit</b>
<br>1. As long as g<sub>m</sub> &gt; 1/R, the oscillation grows. 
<br>2. As the diode conducts current, it pulls charge through C1 and C2 thus reducing V<sub>g</sub> (&lt; 0) further. 
<br>3. As V<sub>gs</sub> becomes more negative, g<sub>m</sub> decreases, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image9.gif"></sub>
<br>4. Eventually equilibrium is reached when the oscillation conditions |G| =|L| and ?G = ?L are satisfied. In this state, the output voltage oscillates and neither increases in amplitude nor decreases. 
<br><b>VFO Large Signal Analysis</b>
<br>The steady-state JFET source and gate voltages are sketched in above. This can be directly compared with the oscilloscope screen shot shown on page 7. As shown in the text, the large-signal oscillation condition is
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image10.gif"></sub>
<br>where G<sub>m</sub> is the large-signal transconductance of the JFET amplifier. It is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image11.gif"></sub>
<br>where I<sub>d.pp</sub> and V<sub>gs.pp</sub> are peak-to-peak values of the fundamental components (i.e., Fourier terms with frequency = 1?? ) of the drain current and the gate-to-source voltage, respectively. Our task now is to compute the p-t-p values of these fundamental frequency components so we can determine G<sub>m</sub>. In our VFO, C<sub>1</sub> = C<sub>2</sub> so that from V<sub>g</sub> 2V<sub>s</sub> Because of the choke, V<sub>s</sub> has zero dc value, whereas V<sub>g</sub> has a dc value of V<sub>b</sub> (&lt; 0) due to the gain limiting circuit.It turns out that V<sub>b</sub> is smaller than the pinch off voltage V<sub>c</sub> of the JFET, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image12.gif"></sub>
<br>Consequently, this amplifier is operated in class C! The transistor is either on or off. If we approximate V<sub>gs</sub> as
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image13.gif"></sub>
<br>then during the "on” times of the JFET
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image14.gif"></sub>
<br>It is this cosine-squared shape that is sketched above in The dc value of the drain current Io in the VFO JFET is
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image15.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image16.gif"></sub>
<br>As shown in Section B.4 from a Fourier series expansion of a cosine square function, the p-t-p amplitude of the fundamental component is four times the dc value: 
<br>I<sub>dpp</sub> = 4? I<sub>0</sub> ? I<sub>m</sub>
<br>In words, (11.38) means that the p-t-p fundamental current component (i.e., a 2.1-MHz sinusoidal current) of the VFO JFET drain current, I<sub>dpp</sub>, is simply equal to I<sub>m</sub>. Now, we divide (11.38) by <sub>spp</sub> which is the p-t-p output (i.e., JFET source) voltage and find
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image17.gif"></sub>
<br>contains a plot of (apparently) I<sub>dss</sub> and V<sub>c</sub> for some particular JFET: 
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image18.gif"></sub>
<br>In Prob. 27.B you will use to predict V<sub>s pp</sub> for a particular load resistance (since G<sub>m</sub> = 1/R). (I didn't obtain very good results for this part.) 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
	<br>19089
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/variable_frequency_oscillator_gain_limiting.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_variable_frequency_oscillator_gain_limiting/image20.wmf"></sub>
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
