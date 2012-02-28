<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="BJT_Internal_Capacitances.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.BJT_Internal_Capacitances" %>
<%@ MasterType VirtualPath="~/Masters/bjtlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>BJT Internal Capacitances High Frequency Circuit Model</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The BJT amplifiers we have examined so far are all low frequency amplifiers. For large valued DC blocking capacitors and for frequencies of tens to hundreds of kHz, the simple smallsignal models we used will work well. As the frequency increases, though, there are multiple sources of effects that will limit the performance of these amplifiers including: 
<br>1. Internal capacitances of th BJT. These are due to charge storage effects at and near the two pn junctions. 
<br>2. Parasitic effects. These are due to packaging and transistor construction that create additional capacitances, lead inductances, and resistances. Additionally, the performance of many BJT amplifiers we've already examined will be sharply curtailed by DC blocking capacitors that have finite value (i.e., less than infinity). For these reasons, all real transistor amplifiers operate effectively only over a limited (but hopefully large) range of signal frequencies. Referring to Fig. 5.71(b), our analysis of small-signal BJT amplifiers up to this point has focused on the “Midband” frequency region. This frequency band is bounded by the frequencies fL and fH, which are the -3-dB gain frequencies, or half-power frequencies. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image1.jpeg"></sub>
<br>The roll off in gain near fL and lower is due to effects of the DC blocking capacitors CC1 and CC2, and the bypass capacitor CE. It's not possible to eliminate this effect, though fL can be moved about by choosing different values for these capacitors. Butlarge capacitors take up lots of space and can be expensive. The primary focus of this lecture, however, is the origin of the roll off in gain xperienced at higher frequencies near fH and higher. 
<br><b>Capacitance of pn Junctions</b>
<br>There are basically two types of capacitances associated with pn junctions: 
<br>1. Junction capacitance. This is related to the space charge that exists in the depletion region of the pn junction. 
<br>2. Diffusion capacitance, or charge storage capacitance. This is a new phenomenon we haven't yet considered in this course. The junction capacitance effect was briefly mentioned earlier in this course in Lecture 4. The width of the depletion region will change depending on the applied voltage and whether the junction is reversed or forward biased: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image2.jpeg"></sub>
<br>The time-varying E due to the space charge in the depletion region is a so-called displacement current that can be modeled by a junction capacitance. The second basic type of capacitance, diffusion capacitance, is associated with pn junctions that are forward biased. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image3.jpeg"></sub>
<br>In this state, current will flow across the junction, of course. Because of the current source in Fig. 3.49 and the voltage dropV, holes are injected a cross the junction into the n region while electrons are injected across the junction into the p region. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image4.jpeg"></sub>
<br>The concentrations of these electrons and holes decrease in value away from the junction, as shown in Fig. 3.50, due to recombination effects. 
<br>The important point here is that these concentrations of charges create an electric field across the pn junction that will vary with time when a signal source is connected to this device. This electric field is directed from the n to p region, and the overall effect can be modeled by what is called the charge storage capacitance, or diffusion capacitance. 
<br>To summarize, the capacitive effects of a reversed biased pn junction are described by the junction capacitance while those of a forward biased pn junction are described by both a junction and a diffusion capacitance. In the latter case, though, the diffusion capacitance usually dominates. 
<br><b>BJT High Frequency Small-Signal Model</b>
<br>The active mode BJT has one forward biased pn junction (the EBJ) and one reversed biased pn junction (the CBJ). In the case of an npn BJT the capacitances associated with the pn junctions in the device are labe ed as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image5.jpeg"></sub>
<br>As we just discussed, there is a junction capacitance associated with the reversed biased CBJ, which is labeled C ì as shown above. There will be a junction capacitance, Cje, associated with the forward biased EBJ as well as a diffusion capacitance abeled Cde. These latter tw o capacitances appear in parallel and so can be combined as Typically C ì ranges from a fraction of pF to a few pF while C ð ranges from a few pF to tens of pF, which is dominated by Cde. With these capacitances, the high frequency small-signal model of the BJT becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image6.jpeg"></sub>
<br>Note the use of the V ð notation in this small-signal model. Your textbook has switched to sinusoidal steady state notation for this high frequency discussion. The high frequency small-signal model in Fig. 5.67 also includes the resistance rx, which is mostly important at high frequencies. It's there to approximately model the resistance of the base region from the terminal to a point somewhere directly below the emitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image7.jpeg"></sub>
<br>C ì is sometimes referred to as Cob (or Cobo) in datasheets. This designation reflects the fact that C ì can be the output resistance when the BJT is used as a common base amplifier. The values of these small-signal circuit model elements may or may not be available in a datasheet for your transistor. For example, from the Motorola P2N2222A datasheet: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image8.jpeg"></sub>
<br>Actually, we would expect these capacitances to vary with the voltage across the respective pn junction. In the following figure from the Motorola P2N2222A datasheet, we see the dependence of "Ceb” (= C ð ?) and "Ccb” (= C ì) for a range of junction voltages. (Perhaps t he labeled voltage for Ceb should be "forward voltage”?) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image9.jpeg"></sub>
<br><b>Unity-Gain Bandwidth</b>
<br>An important high frequency characteristic of transistors that is usually specified is the unity-gain bandwidth, fT. This is defined as the frequency at which the short-circuit current gain
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image10.jpeg"></sub>
<br>has decreased to a value of one. A test circuit for this measurement would look something like: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image11.jpeg"></sub>
<br>The small-signal high frequency model of this test circuit is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image12.jpeg"></sub>
<br>Applying KCL at the collector terminal provides an equation for the short-circuit collector current
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image13.jpeg"></sub>
<br>At the input terminal B'
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image14.jpeg"></sub>
<br>Substituting (4) into (3) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image15.jpeg"></sub>
<br>Using the definition of hfe from (2) we find from this last equation that
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image16.jpeg"></sub>
<br>It turns out that C ì is typically quite small and for the purposes of determining the unity-gain bandwidth, gm is | | j Cì . for the frequencies of interest here. In other words, the frequency at which ùC ì is important relative to gm is much higher than what is of interest here. Consequently, from (5) 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image17.jpeg"></sub>
<br>We can recognize this frequency response of hfe in (6) as that for a single pole low pass circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image18.jpeg"></sub>
<br>&beta;<sub>0</sub>=g<sub>m</sub>r<sub>&pi;</sub> in this plot is the low frequency value of | h<sub>fe</sub>|, as we've used in the past [see eqn. (5.93)], while the 3-dB frequency of | h<sub>fe</sub>| is given by 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image19.jpeg"></sub>
<br>The frequency at which h<sub>fe</sub> in (6) declines to a value of 1 is denoted by ùT, which we can determine from (6) to be
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image20.jpeg"></sub>
<br>such that
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image21.jpeg"></sub>
<br>Therefore
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image22.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image23.jpeg"></sub>
<br>This unity-gain frequency fT (or bandwidth) is often specified on transistor datasheets. On page 8, for example, f <sub>r</sub> =300 MHz for the Motorola P2N2222A. Using (9), this fT can be used to determine C <sub>&pi;</sub>+ C <sub>&pi;</sub> for a particular DC bias current. 
<br>Lastly, the high frequency, hybrid-ð, small-signal model of Fig.5.67 is fairly accurate up to frequencies of about 0.2 fT. 
<br>Furthermore, at frequencies above 5f &beta; to 10 f &beta;, the effects of r ðare small compared to the impedance effects of C ð. Above that, rx becomes the only resistive part of the input impedance at high frequencies. Consequently, rx is a very important element of the small-signal model at these high frequencies, but much less so atlow frequencies. 
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
<br><b>Discuss about BJT here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for BJT</b>
<br>Discuss all your issues or difficulties on BJT</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/bjt_internal_capacitances.aspx"></asp:HyperLink> 
<br>I want do to this 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;socheat</b> 
</td>

      
      <td class="txt">
	<br>Jul 1, 7:35:08 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2399
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/bjt_internal_capacitances.aspx"></asp:HyperLink> 
<br>preparation for drdo 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;rinkumathur.1988</b> 
</td>

      
      <td class="txt">
	<br>Oct 16, 2:00:04 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>2745
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/bjt_internal_capacitances.aspx"></asp:HyperLink> 
<br>Its operation and manufacturing. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;dharmendra608@yahoo.in</b> 
</td>

      
      <td class="txt">
	<br>Apr 16, 6:54:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2607
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image24.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/bjt_internal_capacitances.aspx"></asp:HyperLink> 
<br>sssssssssssssssss 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;sunilkumarmishra88</b> 
</td>

      
      <td class="txt">
	<br>Dec 2, 4:03:32 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2866
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image26.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image26.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_internal_capacitances/image25.wmf"></sub>
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
