<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="Common_Collector_Emitter_Follower_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Common_Collector_Emitter_Follower_Amplifier" %>
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
	<b>Common Collector Emitter Follower Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The third, and final, small-signal BJT amplifier we will consider is the common collector amplifier shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image1.jpeg"></sub>
<br>The small-signal equivalent circuit is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image2.jpeg"></sub>
<br>We've included ro in this model since it can have an appreciable effect on the operation of this amplifier. Notice that ro is connected from the emitter to an AC ground. We can simplify the AC small-signal analysis of this circuit by moving the collector-side lead of ro to the DC ground, as shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image3.jpeg"></sub>
<br>Similar to the previous BJT amplifiers, we'll determine the characteristics of this one by solving for Rin, Gv, Gi, Ais, and Rout. 
<br>&bull; Input resistance, Rin. Looking into the base of the BJT, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image4.jpeg"></sub>
<br>From the circuit above, we see that
<br>V<sub>b</sub>=i<sub>e</sub>(r<sub>e</sub>+r<sub>0</sub>||R<sub>L</sub>
<br>Substituting this and 1<sub>b</sub>=i <sub>e</sub>/( ß +1) into (1) yields
<br>R<sub>ib</sub>=( ß +1)(r <sub>e</sub>+r <sub>0</sub>||R <sub>L</sub>)
<br>This expression for Rib follows the so-called resistance reflection rule: the input resistance is ( ß+1) times the total resistance in the emitter lead of the amplifier. (We saw a similar result in Lecture 19 for the CE amplifier with emitter degeneration.) In the special case when r <sub>e</sub>&lt;&lt; R <sub>L</sub>&lt;&lt; r <sub>0</sub> then
<br>R <sub>ab</sub> &#8776 (ß +1)R<sub>L</sub>
<br>which can potentially be a large value. Referring to circuit above, the input resistance to the amplifier is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image5.jpeg"></sub>
<br>• Small-signal voltage gain, Gv. We'll first calculate the partial voltage gain
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image6.jpeg"></sub>
<br>Beginning at the output, 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image7.jpeg"></sub>
<br>from which we can directly determine that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image8.jpeg"></sub>
<br>The overall (from the input to the output) small-signal voltage gain Gv is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image9.jpeg"></sub>
<br>We can equivalently write this voltage gain as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image10.jpeg"></sub>
<br>with Av given in (8). By simple voltage division at the input to the small-signal equivalent circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image11.jpeg"></sub>
<br>Substituting this result into (10) yields an expression for the overall small-signal voltage gain
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image12.jpeg"></sub>
<br>We can observe directly that each of the two factors in this expression are less than one, so this overall small-signal voltage gain is less than unity. In the special instance that r<sub>0</sub>&lt;&lt; R<sub>L</sub> then (12) simplifies to
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image13.jpeg"></sub>
<br>and if R<sub>B</sub> &gt;&gt;( ß+1)( r<sub>e</sub>+R<sub>L</sub>) then this further simplifies to
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image14.jpeg"></sub>
<br>We see from this expression that under the above two assumptions and a third 
<br>R<sub>L</sub>&gt;&gt;r<sub>e</sub>+ Rsig (ß + 1) , the smallsignal voltage gain is less than but approximately equal to one. This means that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image15.jpeg"></sub>
<br>Because of this result, the common collector amplifier is also called an emitter follower amplifier. 
<br>&bull; Overall small-signal current gain, Gi. By definition
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image16.jpeg"></sub>
<br>Using current division at the output of the small-signal equivalent circuit above
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image17.jpeg"></sub>
<br>while using current division at the input
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image18.jpeg"></sub>
<br>Substituting this into (17) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image19.jpeg"></sub>
<br>from which we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image19.jpeg"></sub>
<br>&bull; Short circuit current gain, Ais. In the case of a short circuit load (RL = 0), Gi in (21) reduces to the short circuit current gain: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image20.jpeg"></sub>
<br>In the case that R<sub>B</sub> &gt;&gt;( ß + 1)(r<sub>e</sub>+R<sub>L</sub>)=( ß + 1)r<sub>e</sub>, as was used earlier, then A<sub>is</sub>&#8776 ß + 1 which can be very large. So even though the amplifier has a voltage gain less than one (and approaching one in certain circumstances), it has a very large small-signal current gain. Overall, the amplifier does provide power gain to the AC signal. 
<br>• Output resistance, Rout. With vsig = 0 in the small-signal equivalent circuit, we're left with
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image21.jpeg"></sub>
<br>It is a bit difficult to determine Rout directly from this circuit because of the dependent current source. The trick here is to apply a signal source vx and then determine ix. The output resistance is computed from the ratio of these quantities as
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image22.jpeg"></sub>
<br>Applying KVL from the output through the input of this circuit gives
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image23.jpeg"></sub>
<br>Using KCL at the output
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image24.jpeg"></sub>
<br>Substituting (26) into (25) 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image25.jpeg"></sub>
<br>Forming the ratio of vx and ix in (27) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image26.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image27.jpeg"></sub>
<br><b>Summary</b>
<br>Summary of the CC (emitter follower) small-signal amplifier: 
<br>1. High input resistance. 
<br>2. Gv less than one, and can be close to one. 
<br>3. Ais can be large. 
<br>4. Low output resistance.These characteristics mean that the emitter follower amplifier is highly suited as a voltage buffer amplifier. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/common_collector_emitter_follower_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/common_collector_emitter_follower_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/common_collector_emitter_follower_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/common_collector_emitter_follower_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_common_collector_emitter_follower_amplifier/image29.wmf"></sub>
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
