<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="PNP_Bipolar_Junction_Transistor.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.PNP_Bipolar_Junction_Transistor" %>
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
	<b>PNP Bipolar Junction Transistor</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The second type of BJT is formed from pnp doped regions as 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image1.jpeg"></sub>
<br>Differences between pnp and npn BJTs are: 
<br>&bull; Biasing voltages are applied oppositely to the npn, though still forward biasing EBJ and reverse biasing the CBJ for active mode operation, for example. 
<br>&bull; Current is primarily composed of holes (in the p type regions) rather than electrons as in the npn BJT. 
<br>&bull; The current direction conventions are iE into the emitter while iC and iB are out from the device.The circuit symbol for the pnp BJT is
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image2.jpeg"></sub>
<br>Once again, the filled arrow is always located on the emitter and helps us to remember the direction of the emitter current. Notice that the currents are pointed in opposite directions compared to the npn BJT. For biasing in the active mode, a possible circuit is
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image3.jpeg"></sub>
<br>As with the npn, for the pnp BJT in the active mode and with the current convention shown above
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image4.jpeg"></sub>
<br>Consequently, we need to only memorize this one set of equations for use with both npn and pnp BJTs, plus the current conventions for these two BJTs. Examples We'll now consider a few examples of the DC analysis of npn and pnp BJT circuits.Examples We'll now consider a few examples of the DC analysis of npn and pnp BJT circuits. Example N11.1 (text example 5.1). Design the following circuit so that I<sub>c</sub> =2 mA and V<sub>c</sub>5 = V. For this particular transistor, ß = 100 and 0.7 V<sub>be</sub> = V at I<sub>c</sub> =1 mA. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image5.jpeg"></sub>
<br>The "design” of this circuit is to determine the RC and RE that provide the specified IC and VC. For i<sub>c</sub>=2 MA , than
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image6.jpeg"></sub>
<br>We're assuming that the transistor is in the active mode with theEBJ forward biased and the CBJ reversed biased. For the forward biased EBJ junction, 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image7.jpeg"></sub>
<br>It's given that at IC = 1 mA, VBE = 0.7 V. What is VBE when IC = 2 mA? Using (6) for two different iC and vBE we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image8.jpeg"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image9.jpeg"></sub>
<br>For this particular case, 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image10.jpeg"></sub>
<br>This is not much of an increase from 0.7 V, which is what we typically observe when the BJT is in the active mode. Consequently, v<sub>e</sub>=-0.717v
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image11.jpeg"></sub>
<br>We can use this emitter current to select the proper resistor 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image12.jpeg"></sub>
<br>or
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image13.jpeg"></sub>
<br>That completes the design. One last thing, though. Notice how small the base current IB is relative to IC and IE: I<sub>b</sub>= I<sub>c</sub>-I<sub>e</sub> = 20&mu;A. This is typical of BJTs operating in the active mode. Example N11.2 (text exercise 5.10). Determine IE, IB, IC, and VC in the circuit below if ß = 50 and VE = -0.7 V. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image14.jpeg"></sub>
<br>Because VB = 0, then the given VE means the BJT may be operating in the active mode since VBE = 0.7 V. (It could also be operating in the saturation mode.) We'll assume active mode operation for now, and confirm this ssumption when we're finished. 
<br>(i) Compute IE. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image15.jpeg"></sub>
<br>(ii) Compute IE. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image16.jpeg"></sub>
<br>(iii) Compute IB. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image17.jpeg"></sub>
<br>(iv) Compute VC. V<sub>c</sub>=10-5,000.i<sub>c</sub>=5.45v 
<br>Note that since V<sub>cb</sub> =V<sub>c</sub>- V<sub>b</sub> = 4.45-0=5.45V is greater than zero (thus reverse biasing the CBJ) and the EBJ is forward biased, the npn BJT is indeed operating in the active mode, as assumed. Example N11.3 (text exercise 5.11). Given that VB = 1.0 V and VE = 1.7 V, determine a (and ß) for the transistor in the circuit below. Also calculate VC.Using
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image18.jpeg"></sub>
<br>Because V <sub>eb</sub>= V <sub>e</sub>-V <sub>b</sub> = 0.7 V, the pnp transistor may be operating in the active mode, which is what we will assume. 
<br><b>(i)</b> Determine a and ß. We'll use the relationships i <sub>c</sub> ia <sub>e</sub> = and i <sub>c</sub> iß <sub>b</sub> = to determine a and ß. 
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image19.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image20.jpeg"></sub>
<br>Note that this VC means that the CBJ is reversed biased by thevoltage 1.0- (-1.75) 2.75 = V. Hence, the active mode operation for the pnp BJT is the proper assumption since we've already determined that the EBJ is forward biased. 
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
<br><b>Discuss about DIODE here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/pnp_bipolar_junction_transistor.aspx"></asp:HyperLink> 
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
	<br>2388
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/pnp_bipolar_junction_transistor.aspx"></asp:HyperLink> 
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
	<br>2730
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/pnp_bipolar_junction_transistor.aspx"></asp:HyperLink> 
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
	<br>2595
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/pnp_bipolar_junction_transistor.aspx"></asp:HyperLink> 
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
	<br>2855
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image23.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image24.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image24.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image23.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_pnp_bipolar_junction_transistor/image23.wmf"></sub>
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
