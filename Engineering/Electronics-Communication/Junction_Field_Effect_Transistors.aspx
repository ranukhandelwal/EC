<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="Junction_Field_Effect_Transistors.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Junction_Field_Effect_Transistors" %>
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
	<b>Junction Field Effect Transistors. Source Follower Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Junction Field Effect Transistors. Source Follower Amplifier</b>
<br>As mentioned in Lecture 16, there are two major families of transistors. We've worked with BJTs in the past few lectures. The second transistor type we will consider is the field effect transistor (FET). In the NorCal 40A, we use discrete junction field effect transistors (JFETs). (Recall that in ICs, metal oxide semiconductor FETs are usually used.) Four important points concerning the JFET are: 
<br>1. Probably the simplest transistor, 
<br>2. Very large input impedance (but MOSFETs even larger), 
<br>3. Virtually obsolete compared to the MOSFET, 
<br>4. Now used mainly in discrete circuit design - switches, amplifiers, etc. 
<br>In the NorCal 40A, JFETs are used in the: 
<br>1. Buffer Amplifier (as a buffer amplifier-duh!), 
<br>2. Variable Frequency Oscillator, VFO (as the gain element in the oscillator), 
<br>3. Automatic Gain Control, AGC (as a voltage controlled variable resistance). 
<br><b>Physical Behavior of Junction Field Effect Transistors</b>
<br>As with BJTs, there are n and p type JFETs. We use only n-type in the Norcal 40A (the J309). 
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image1.gif"></sub>
<br>itself often connected to the p-type body. By making V<sub>gs</sub> more negative, the gate pn junction develops a larger depletion region. This has the effect of narrowing the channel and, consequently, decreasing Id (the drain current). Eventually, when V<sub>gs</sub> =V <sub>c</sub>(&lt;0) the channel becomes closed (or "pinched off”). V<sub>c</sub> is called the cutoff voltage and is less than zero. (For the J309, V<sub>c</sub> ? ?2.5V.) 
<br>Mathematically, the drain current is expressed as
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image2.gif"></sub>
<br>I<sub>dss</sub> is the drain to source current with the gated shorted to the source. This characteristic curve is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image3.gif"></sub>
<br>The slope of this drain current versus V<sub>gs</sub> is called the transconductance g<sub>m</sub> of the JFET: 
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image4.gif"></sub>
<br>The significance of gm to a JFET is analogous to ? for a BJT. Substituting (9.74) into (9.75) and performing the differentiation Gives
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image5.gif"></sub>
<br>This curve is simply a straight line, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image6.gif"></sub>
<br>Interestingly, we see that g<sub>m</sub> actually changes as V<sub>gs</sub> changes. The ? for BJTs did not have such dependence. Later in Section 11.4 (and Probs. 26 and 27), we will harness this behavior of JFETs to make a nice oscillator! 
<br><b>Small Signal Model of the JFET</b>
<br>The low frequency, small signal model for an n-type JFET is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image7.gif"></sub>
<br>The gate is open circuited, which models the extremely large input impedance of properly biased JFETs (remember that the input can be a reversed-biased pn junction). This input impedance is easily greater than 1 M?.In the model above, r<sub>0</sub> is the output resistance of the JFET. It's often neglected in paper analysis of these circuits. (However, in Prob. 27, r<sub>d</sub> = r<sub>0</sub> = 5 k? is used in second-order calculations.) 
<br><b>Source Follower FET Amplifier</b>
<br>A JFET source follower amplifier is very similar to the BJT emitter follower
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image8.gif"></sub>
<br>The FET source follower (1) has a very large input impedance, (2) is very simple to bias, and (3) has G<sub>v</sub>&lt;1 . The source follower is used in the Buffer Amplifier (Q5) in the NorCal 40A. The Buffer Amplifier isolates the Transmit Mixer from the Driver Amplifier. This isolation keeps changes in the input impedance to the Driver Amplifier from affecting the Transmit Mixer. 
<br>Surprisingly, R alone is all that's needed to set the bias of the source follower, provided the gate is dc grounded (but, of course, not ac grounded!). 
<br>As an example of a dc grounded gate, consider the Buffer Amplifier in the NorCal 40A. Notice that R10 and L6 provide a dc path to ground so there is no dc current. Also, notice that ac signals at the gate are not grounded. The dc source voltage in the above circuit is
<br>V<sub>s</sub> = I<sub>b</sub>R
<br>where Ib is the drain to source bias current. Then
<br>V<sub>gs</sub> =V<sub>g</sub> ?V<sub>s</sub> =0 ? I<sub>b</sub> R = ?I<sub>b</sub> R
<br>This is simply an equation for a straight line. This straight line is the load line and we can use it together with the JFET characteristic equation (9.74) to determine the dc bias point for
<br>V<sub>gs</sub> and I<sub>ds</sub>.
<br>Referring to
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image9.gif"></sub>
<br>The intersection of the load line with the JFET characteristic curve gives a graphical solution for the dc bias point of the source follower amplifier: V<sub>gs</sub> = V<sub>b </sub>and I<sub>d</sub> = I<sub>b</sub>. Once the source follower has been properly biased, the ac output impedance and the voltage gain can be easily determined. Using the small-signal equivalent circuit model for the source follower
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image10.gif"></sub>
<br>From this circuit we see that
<br>v = g<sub>m</sub> v<sub>gs</sub> R 
<br>where 
<br>v<sub>gs</sub> = v<sub>g</sub> ? v<sub>s</sub> = v<sub>i</sub> - v
<br>Substituting (9.79) into (9.78) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image11.gif"></sub>
<br>Now, solving for the ratio of output to input voltage, we find
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image12.gif"></sub>
<br>Or 
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image13.gif"></sub>
<br>where Gv is the voltage gain. The JFET transconductance is usually quite small. But if we choose R such that g<sub>m</sub> R&gt;&gt; (i.e., R&gt;&gt; g<sub>m</sub><sup>?1</sup> ), then
<br>G<sub>v</sub> &lt;&lt;1
<br>which is typical for a source-follower JFET amplifier 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>6859
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>13468
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>7541
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>7300
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>19140
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/junction_field_effect_transistors.aspx"></asp:HyperLink> 
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
	<br>15314
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_junction_field_effect_transistors/image15.wmf"></sub>
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
