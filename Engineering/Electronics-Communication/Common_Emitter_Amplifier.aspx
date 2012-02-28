<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="Common_Emitter_Amplifier.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Common_Emitter_Amplifier" %>
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
	<b>Common Emitter Amplifier</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We will now begin the analysis of the three basic types of linear BJT small-signal amplifiers: 
<br>1. Common emitter (CE) 
<br>2. Common base (CB) 
<br>3. Common collector (CC), 
<br>which is oftentimes called the emitter follower amplifier. We'll study the CE amplifier in this lecture and the next, followed by the CB and CC amplifiers. The CE amplifier is excited at the base of the BJT with the output taken at the emitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image1.jpeg"></sub>
<br>The capacitor CE is called a bypass capacitor. At the operating frequency, its purpose is to shunt out the effects of the DC current source from the time varying signal. In other words, CE sets an AC ground at this node at the frequency of operation. There are a number of ways to bias this amplifier, other than that shown above. What we're primarily interested in here is the small-signal characteristics. 
<br><b>Common Emitter Small-Signal Amplifier Analysis</b>
<br>The small-signal equivalent circuit for the CE amplifier above is shown below. Because the emitter is located at an AC ground is the reason this type of amplifier is called a "common emitter” amplifier. 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image2.jpeg"></sub>
<br>Notice that we've included ro in this small-signal model. This is the finite output resistance of the BJT. This accounts for thefinite slope of the characteristic curves of iC versus vCE mentioned briefly in 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image3.jpeg"></sub>
<br>where VA is called the Early voltage. Usually ro is fairly large, on the order of many tens of kb Our quest in the small-signal analysis of this amplifier is to determine these quantities: input resistance Rin, the "overall” small-signal voltage gain G<sub>V</sub> = v<sub>o</sub>/ v<sub>sig</sub> , the "partial” small-signal voltage gain v o i A<sub>v</sub>= v<sub>o</sub> v <sub>i</sub> , the overall small-signal current gain G<sub>i</sub>= i<sub>0</sub>/ I <sub>i</sub> , the short circuit small-signal current gain is os i A<sub>is</sub>= i<sub>as</sub> i<sub>i</sub> ,and the output resistance Rout. 
<br>&bull; Input resistance, Rin. Directly from the small-signal equivalent circuit, we see that Rin= R<sub>B</sub> || r p Oftentimes we select R<sub>B</sub> rp so that i R<sub>in</sub> rp Oftentimes we select R<sub>B</sub> rp so that r p will often be a few kb, which means this CE amplifier presents a moderately large value of input impedance. 
<br>&bull; Overall small-signal voltage gain, Gv. By “overall” voltage gain we mean
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image4.jpeg"></sub>
<br>which is the actual small-signal voltage gain that would be realized in the circuit above. At the output of this circuit
<br>V<sub>o</sub>=-g<sub>m</sub>V<sub>p</sub>(r<sub>o</sub>||R<sub>c </sub>||R<sub>l</sub>)
<br>while at the input
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image5.jpeg"></sub>
<br>Substituting (4) into (3) gives an expression for the overall (i.e., realized) gain of this CE amplifier
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image6.jpeg"></sub>
<br>In the usual case that B R<sub>B</sub>&gt;&gt; rp , then
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image7.jpeg"></sub>
<br>Recall that r<sub>p</sub> = ß/g<sub>m</sub> If it also turned out R<sub>sig</sub>&gt;&gt; r<sub>p</sub> , then we see from (6) that Gv would be directly dependent on b. This is not a favorable condition since, as we learned when discussing biasing of such BJT circuits, bita can vary considerably between transistors. &bull; Partial small-signal voltage gain, Av. This is only a partial voltage gain since we are calculating
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image8.jpeg"></sub>
<br>At the input, v<sub>i</sub> = V<sub>p</sub> while at the output, 
<br>V<sub>0</sub>=-g<sub>m</sub>V<sub>p</sub>(r<sub>o</sub>||R<sub>c </sub>||R<sub>L</sub>)
<br>Therefore, the partial small-signal voltage gain is
<br>A<sub>v</sub>=-g<sub>m</sub>(r<sub>o</sub>||R<sub>c</sub>||R<sub>L</sub> <sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image9.jpeg"></sub>
<br>&bull; Overall small-signal current gain, Gi. By definition Referring to the small-signal equivalent circuit shown above, we see that
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image10.jpeg"></sub>
<br>Forming the ratio of these two currents, we find that the current gain is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image11.jpeg"></sub>
<br>or, using (9) 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image12.jpeg"></sub>
<br>&bull; Short circuit small-signal current gain, Ais. This is the smallsignal current gain of the amplifier but with a short circuitedload ( R L = 0): 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image13.jpeg"></sub>
<br>Equivalently, 
<br>A <sub>is</sub>=G <sub>i</sub>| <sub>R</sub> <sub>l</sub>=0 Using (11) in (13) with R <sub>l</sub>=0 . gives
<br>A <sub>is</sub>=-g <sub>m</sub>(r <sub>p</sub>||R <sub>B)</sub>
<br>In the usual case that R <sub>B</sub> r <sub>p</sub> then A <sub>is</sub> »-bita This result is not unexpected because bita is by definition the short circuit current gain for the BJT when operating in the active mode. 
<br>&bull; Output resistance Rout. Using the small-signal equivalent circuit above, we short out the source v<sub>sig</sub> =0 which means that v<sub>p</sub> =0 as well. Therefore, g<sub>m</sub> v<sub>p</sub> = 0, which is an open circuit for a current source. Consequently, 
<br>R<sub>out</sub>= R<sub>c</sub>|| r <sub>o</sub> which is generally fairly large. 
<br><b>Summary of CE Amplifier Characteristics</b>
<br>Summary for theCommon_Emitter_Amplifier: Big voltage and current gains are possible. Input resistance is moderately large. Output resistance is fairly large. This last characteristic is often not desirable. Why? Consider this simple Thévenin equivalent for the output of a small-signal amplifier: 
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image14.jpeg"></sub>
<br>The output signal voltage provided to this resistive load is
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image15.jpeg"></sub>
<br>Now, if R<sub>out</sub>&lt;&lt; R<sub>L</sub> then
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image16.jpeg"></sub>
<br>This is not a favorable result if this Thévenin equivalent circuit is for an amplifier because the output voltage is beingattenuated. Con versely, if there were a small output resistance such that R<sub>out</sub>&lt;&lt; R<sub>L</sub> then then (17) becomes
<br>v<sub>out</sub> v<sub>o</sub> 
<br>which is much more favorable for an amplifier. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image17.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/common_emitter_amplifier.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_common_emitter_amplifier/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
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
