<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="Common_Base_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Common_Base_Amplifier" %>
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
	<b>Common Base Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We will cover the second of the three families of BJT amplifiers in this lecture by discussing theCommon_Base_Amplifier shown in Fig. 5.62a: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image1.jpeg"></sub>
<br>The small-signal equivalent circuit for this amplifier is shown in Fig. 5.62b (ignoring ro): 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image2.jpeg"></sub>
<br>As before, let's determine the small-signal AC characteristics of this amplifier by solving or Rin, Gv, Gi, Ais, and Rout. 
<br>&bull; Input resistance, Rin. From direct inspection of the smallsignal equivalent circuit, we see that 
<br>R<sub>in</sub>=r<sub>e</sub>
<br>Since re is often small (on the order of 20 to 30bita), then Rin of the CB amplifier is very small. Generally this is not desirable, though in the case of certain high frequency amplifiers input impedances near 50 bita is very useful (to reduce so-called "mismatch reflections” at the input). 
<br>• Small-signal voltage gain, Gv. We'll first calculate the partial voltage gain
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image3.jpeg"></sub>
<br>At the output, 
<br>v<sub>o</sub>=-ai<sub>e</sub>(R<sub>c</sub>||R<sub>L</sub>
<br>The small-signal emitter current is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image4.jpeg"></sub>
<br>Substituting (3) and (4) into (2) gives the partial voltage gain to be
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image5.jpeg"></sub>
<br>This is the same gain as for the CE amplifier (without ro), except the gain here for the CB amplifier is positive. The overall (from the input to the output) small-signal voltage gain Gv is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image6.jpeg"></sub>
<br>We can equivalently write this voltage gain as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image7.jpeg"></sub>
<br>with Av given in (5). By simple voltage division at the input to the small-signal equivalent circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image7.jpeg"></sub>
<br>Substituting this result and (5) into (7) yields the final expression for the overall small-signal voltage gain
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image8.jpeg"></sub>
<br>Since from (1) R<sub>in</sub>= r<sub>e</sub> then Gv simplifies to
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image9.jpeg"></sub>
<br>If 1 we can interpret this small-signal overall voltage expression in (10) as the ratio of the total resistance in the collector lead to the total resistance in the emitter lead. This gain can be fairly large, though if Rsig is nearly the same size as the total emitter resistance the gain will be small. In other words, if this amplifier is connected to a high output impedance stage, it will be difficult to realize high gain. 
<br>&bull; Overall small-signal current gain, Gi. By definition
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image10.jpeg"></sub>
<br>Using current division at the output of the small-signal equivalent circuit above
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image11.jpeg"></sub>
<br>Because i<sub>i</sub> = -i<sub>e</sub> this expression gives
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image12.jpeg"></sub>
<br>&bull; Short circuit current gain, Ais. In the case of a short circuit load (RL = 0), Gi in (13) reduces to the short circuit current gain: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image13.jpeg"></sub>
<br>&bull; Output resistance, Rout. Referring to the small-signal equivalent circuit above and shorting out the input vsig = 0 R<sub>out</sub>= R<sub>c</sub> which is the same as the CE amplifier (when ignoring ro). <b>Summary</b>
<br>Summary of the CB small-signal amplifier: 
<br>1. Low input resistance. 
<br>2. Gv can be very large, though critically dependent on Rsig. 
<br>3. Ais= á
<br>4. Potentially large output resistance (dependent on RC). One very important use of the CB amplifier is as a unity-gain current amplifier, which is also called a current buffer amplifier. This type of amplifier accepts an input signal current at a low impedance level and outputs nearly the same current amplitude, but at a high output impedance level. Even though this is a buffer amplifier, there is still power gain. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/common_base_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/common_base_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/common_base_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/common_base_amplifier.aspx"></asp:HyperLink> 
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
	<br><b>To reply/post a comment you need to login, Use your user name and password to login if you are already registered </b><b>else register here</b> </td>
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_base_amplifier/image15.wmf"></sub>
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
