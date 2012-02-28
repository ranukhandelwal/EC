<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Quarter_Wave_Transformer_Matching.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Quarter_Wave_Transformer_Matching" %>
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
	<b>Quarter Wave Transformer Matching</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Quarter Wave Transformer Matching</b>
<br>For a TL in the sinusoidal steady state with an arbitrary resistive load 
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image1.gif"></sub>
<br>the input impedance of the right-hand TL is given as
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image2.gif"></sub>
<br>Now imagine that we have a special length l =&lambda;<sub>1</sub> / 4 of TL, as indicated in the figure above. At this frequency and physical length, the electrical length of the TL is
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image3.gif"></sub>
<br>Consequently, for a &lambda;/ 4 - length TL, tan&beta;<sub>1</sub>l ->&infin;. Using this result in (1) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image4.gif"></sub>
<br>This result is an interesting characteristic of TLs that are exactly &lambda;/4 long. We can harness this characteristic to design a matching network using a &lambda;/4-length section of TL. Note that we can adjust Z1 in (3) so that Z<sub>in</sub> = Z<sub>0</sub> . In particular, from (3) with Z<sub>in</sub> = Z<sub>0</sub> we find 
<br>Z<sub>L</sub> = Z<sub>0</sub> R<sub>L</sub>
<br>In other words, a &lambda;/4 section of TL with this particular characteristic impedance will present a perfect match (T = 0) to the feedline (the left-hand TL) in the figure above. This type of matching network is called a quarter-wave transformer (QWT). Through the impedance transforming properties of TLs, the QWT presents a matched impedance at its input by appropriately transforming the load impedance. This is accomplished only because we have used a very special characteristic impedance Z<sub>1</sub> , as specified in (4). Three disadvantages of QWTs are that: 
<br>1. A TL must be placed between the load and the feedline. 
<br>2. A special characteristic impedance for the QWT is required, which depends both on the load resistance and the characteristic impedance of the feedline. 
<br>3. QWTs work perfectly only for one load at one frequency. (Actually, it produces some bandwidth of "acceptable” VSWR on the TL, as do all real-life matching networks.) 
<br><b>Real Loads for QWTs</b>
<br>Ideally, a matching network should not consume (much) power. In (4) we can deduce that if instead of L R we had a complex load, then the QWT would need to be a lossy TL in order to provide a match. So, QWTs work better with resistive loads. However, if the load were complex, we could insert a section of TL to transform this impedance to a real quantity (is this possible?), and then attach the QWT. But, again, this would work perfectly for only one load at one frequency. 
<br><b>Adjusting TL Characteristic Impedance</b>
<br>We see in (4) that the QWT requires a very specific characteristic impedance in order to provide a match
<br>Z<sub>1</sub> =  Z<sub>0</sub>R<sub>L</sub>
<br>With coaxial cable, twin lead and other similar TLs this is often not a practical solution for a matching problem. However, for stripline and microstrip adjusting the characteristic impedance is as simple as varying the width of the trace. Consequently, QWTs find wide use in these applications As we'll see in Lecture 12, the characteristic impedance of a Microstrip
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image5.gif"></sub>
<br>as a function of W/d is
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image6.gif"></sub>
<br>To construct this curve, it was assumed that &epsilon;<sub>r</sub> =3.38 , which is the quoted specification for Rogers Corporation RO4003C laminate that we'll be using in the lab. 
<br>Example N9.1: Design a microstrip QWT to match a load of 100 beta to a 50 - beta line on Rogers RO4003C laminate. Estimate the fractional bandwidth under the constraint that no more than 1% of the incident power is reflected. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image7.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/quarter_wave_transformer_matching.aspx"></asp:HyperLink> 
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
	<br>2387
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image7.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/quarter_wave_transformer_matching.aspx"></asp:HyperLink> 
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
	<br>2310
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image7.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/quarter_wave_transformer_matching.aspx"></asp:HyperLink> 
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
	<br>3862
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image8.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image8.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image9.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image10.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image10.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image10.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image9.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image9.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_quarter_wave_transformer_matching/image9.wmf"></sub>
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
