<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Generator_and_Load_Mismatches_on_TLs.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Generator_and_Load_Mismatches_on_TLs" %>
<%@ MasterType VirtualPath="~/Masters/mwlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Generator and Load Mismatches on TLs</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Generator and Load Mismatches on TLs</b>
<br>Up to this point, we have focused primarily on terminated transmission lines that lacked a specific excitation. That is, the TL was semi-infinite and terminated by a load impedance. In this lecture, we'll complete our review of TLs by adding a voltage source together with an arbitrary load (Fig. 2.19): 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image1.gif"></sub>
<br>This TL model is very useful and applicable to a wide range of practical engineering situations. Quantities of interest in such problems include the input impedance (for matching purposes) and signal power delivered to the load. We will first consider the computation of the latter quantity assuming the TL is lossless. Proceeding, the voltage on the TL is expressed by
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image2.gif"></sub>
<br>Where 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image3.gif"></sub>
<br>We'll assume that the physical properties of the TL, the source and the load are known. This leaves the complex constant V<sub>0</sub><sup>+</sup> as the only unknown quantity in (1). Generally speaking, we compute V<sub>0</sub><sup>+</sup>+ by applying the boundary condition at the TL input. (Recall that we have already applied boundary conditions at the load.) This is accomplished by applying voltage division at the input: 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image4.gif"></sub>
<br>Observe that V<sub>in</sub> is an electrical circuit quantity. However, at the input to the TL, voltage must be continuous from the generator to the TL. This implies that V<sub>in</sub> must also equal V (z = ?l) on the TL. Proceeding, then from (1) at the input
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image5.gif"></sub>
<br>Equating (3) and (4) to enforce the boundary condition at the TL input we find
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image6.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image7.gif"></sub>
<br><b>Maximum Power</b>
<br>Because the TL is lossless, the time average power P<sub>AV</sub> delivered to the input of the TL must equal the time average power delivered to the load. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image8.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image9.gif"></sub>
<br>Now, substituting (3) into (6) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image10.gif"></sub>
<br>If we define Z<sub>in</sub> = R<sub>in</sub> + jX<sub>in</sub> and Z<sub>g</sub> = R <sub>g</sub>+ jX <sub>g</sub>, (7) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image11.gif"></sub>
<br>Employing this last result, we'll consider three special cases for P<sub>av</sub> in an effort to maximize this quantity. We will assume that Z<sub>g</sub> is both nonzero and fixed: (1.) Load is matched to the TL: Z<sub>L</sub> = Z<sub>0</sub> . From (2), T<sub>L</sub> =0 in this situation, which also implies that Z<sub>in</sub> = Z<sub>0</sub> . [This should be intuitive. If not, see (2.43).] Consequently, from (8) with R<sub>in</sub> = Z<sub>0</sub> and X<sub>in</sub> = 0: 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image12.gif"></sub>
<br>(2.) Generator is matched to an arbitrarily loaded TL: Z<sub>in</sub> = Z<sub>g</sub> and T<sub>L</sub> = 0. 
<br>Specific values for ? l , Z<sub>0</sub> , and Z<sub>L</sub> would need to be chosen so that Z<sub>in</sub> = Z<sub>g</sub> . Then from (8) and with R<sub>in</sub> = R<sub>g</sub> and X<sub>in</sub> = X<sub>g</sub> : 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image13.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image14.gif"></sub>
<br>(3.) Maximum power transfer theorem applied at the TL input: * Z<sub>in</sub> = Z<sub>g</sub> . In this situation, R <sub>in</sub>= R <sub>g</sub>, X<sub>in</sub> = X<sub>g</sub> (conjugate match), And T<sub>L</sub> ? 0, so that from (8) 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image15.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image16.gif"></sub>
<br>Previous EE 322 students should recognize this as the maximum available source power. Now, which of these three situations (9), (10), or (12) provides the most time average power delivered to the load? 
<br>&bull; Clearly, P<sub>av3</sub> &#8804; P<sub>av2</sub> (equal when X<sub>g</sub> = 0). 
<br>&bull; It can be shown that P<sub>av3</sub> &gt; P<sub>av1</sub> Therefore, P<sub>av3</sub> is the largest. In conclusion, to transfer maximum time average power to a load, we need to conjugate match the generator impedance to the TL input impedance. Note that maintaining a low VSWR ( T<sub>L</sub> &#8776 1 ) doesn't necessarily guarantee maximum P<sub>av</sub> , though it could. (When?) 
<br><b>Efficiency</b>
<br>We haven't said anything about efficiency yet. That is, what percentage of the source power is delivered to the load? With Z<sub>g</sub> = Z<sub>L</sub> = Z <sub>0</sub>, the load and the source are both matched to the TL. However, only one half of the source power is delivered to the load so the efficiency is 50%. For a matched line, that's as good as it gets. 
<br>One way to increase efficiency is to decrease R<sub>g</sub> (from Z<sub>0</sub>) and conjugate match the source to the TL input. The line may no longer be matched. Nevertheless, the power from multiple reflections can add in phase to increase the time average signal power delivered to the load. 
<br>Example N5.1: For the TL shown, determine the VSWR on the TL and the time-averaged power delivered to the load. 
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image17.gif"></sub>
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
<br><b>Discuss about Microwave Engineering here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for Microwave Engineering</b>
<br>Discussion on Microwave Engineering</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/generator_and_load_mismatches_on_tls.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2389
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/generator_and_load_mismatches_on_tls.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2314
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/generator_and_load_mismatches_on_tls.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vannak</b> 
</td>

      
      <td class="txt">
	<br>Jun 1, 4:16:47 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>3865
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_generator_and_load_mismatches_on_tls/image19.wmf"></sub>
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
