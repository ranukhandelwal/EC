<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Microstrip_ADS_and_LineCalc.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Microstrip_ADS_and_LineCalc" %>
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
	<b>Microstrip ADS and LineCalc</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Microstrip ADS and LineCalc.</b>
<br>One of the most widely used planar microwave circuit interconnections is microstrip. These are commonly formed by a strip conductor (land) on a dielectric substrate, which is backed by a ground plane 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image1.gif"></sub>
<br>We will often assume the land has zero thickness, t. In practical circuits there will be metallic walls and cover to protect the circuit. We will ignore these effects, as does the text. Unlike the stripline, there is more than one dielectric in which the EM fields are located 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image2.gif"></sub>
<br>This presents a difficulty. Notice that if the field propagates as a TEM wave, then
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image3.gif"></sub>
<br>But which &epsilon;<sub>r</sub> do we use The answer is neither because there is actually no purely TEM wave on the microstrip, but something that closely approximates it called a "quasi-TEM” mode. At low frequency, this mode is almost exactly TEM. Conversely, when the frequency becomes too high, there are appreciable axial components of E and / or H making the mode no longer quasi-TEM. This property leads to dispersive behavior. 
<br>Numerical and other analysis have been performed on microstrip since approximately 1965. Some techniques, such as the method of moments, produce very accurate numerical solutions to equations derived directly from Maxwell's equations and incorporate the exact cross-sectional geometry and materials of the microstrip. 
<br>From these solutions, simple and quite accurate analytical expressions for Z<sub>0</sub> , v<sub>p</sub> , etc. have been developed primarily by curve fitting. The result is that at relatively "low” frequency, the wave propagates as a quasi-TEM mode with an effective relative permittivity, &epsilon;<sub>r e </sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image4.gif"></sub>
<br>The phase velocity and phase constant, respectively, are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image5.gif"></sub>
<br>as for a typical TEM mode. In general, 
<br>I &lt; &epsilon;<sub>r,e</sub> &lt; &epsilon;<sub>r</sub>
<br>The upper bound occurs if the entire space above the microstrip has the same permittivity as the substrate, while the lower bound occurs if in this situation the material is chosen to be free space. The characteristic impedance of the quasi-TEM mode on the microstrip can be approximated as
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image6.gif"></sub>
<br>Alternatively, given a desired Z<sub>0</sub> and &epsilon; <sub>r</sub> , the necessary W/ d can be computed from (3.197). Again, (1) and (5) were obtained by curve fitting to numerically rigorous solutions. Equation (5) can be accurate to better than 1%.
<br>Example N12.1. Design a 50-beta microstrip on Rogers RO4003C laminate with 1/2-oz copper and a standard thickness slightly less than 1 mm. Referring to the attached RO4003C data sheet from Rogers Corporation, we find that &epsilon; <sub>r</sub> = 3.38 + 0.05 and d = 0.032". We will ignore all losses (dielectric and metallic). What does "1/2-oz copper” mean? Referring to the attached technical bulletin from the Rogers Corporation, copper foil thickness is more accurately measured through an areal mass. The term "1/2-oz copper” actually means "1/2 oz of copper distributed over a 1-ft2 area.” For 1-oz copper, t = 34 &mu;m. For 2-oz copper, double this number and for 1/2-oz copper divide by 2. We will use (3.197) to compute the required W d to achieve a 50-beta characteristic impedance: 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image7.gif"></sub>
<br>To apply this equation, we first need to compute the constants A and B: 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image8.gif"></sub>
<br>Next, we will arbitrarily assume that W/ d &lt; 2 and use the simpler equation in (6). We find that
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image9.gif"></sub>
<br>Is this result less than 2? The answer is no. So, we need to recompute W/ d using the bottom equation in (6). We find here that W/ d = 2.316, which is greater than 2 as assumed. So, with this result and d = 0.032", then W = 2.316beta0.032" = 0.0741". A more common unit for width and thickness dimensions in microwave circuits is "mil” where
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image10.gif"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image11.gif"></sub>
<br>This completes the design of the 50-beta microstrip
<br>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/microstrip_ads_and_linecalc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/microstrip_ads_and_linecalc.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image12.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/microstrip_ads_and_linecalc.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image13.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image14.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_microstrip_ads_and_linecalc/image14.wmf"></sub>
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
