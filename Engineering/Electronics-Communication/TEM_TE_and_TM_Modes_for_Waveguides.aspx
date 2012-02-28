<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="TEM_TE_and_TM_Modes_for_Waveguides.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.TEM_TE_and_TM_Modes_for_Waveguides" %>
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
	<b>TEM TE and TM Modes for Waveguides Rectangular Waveguide </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>TEM TE and TM Modes for Waveguides Rectangular Waveguide </b>
<br>We will now generalize our discussion of transmission lines by considering EM waveguides. These are "pipes” that guide EM waves. Coaxial cables, hollow metal pipes, and fiber optical cables are all examples of waveguides. We will assume that the waveguide is invariant in the zdirection: 
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image1.gif"></sub>
<br>and that the wave is propagating in z as e<sup>- </sup><sup>j</sup><sup>&beta;</sup><sup>z</sup> . (We could also have assumed propagation in -z.) 
<br><b>Types of EM Waves</b>
<br>We will first develop an extremely interesting property of EM waves that propagate in homogeneous waveguides. This will lead to the concept of "modes” and their classification as
<br>&bull; Transverse Electric and Magnetic (TEM), 
<br>&bull; Transverse Electric (TE), or
<br>&bull; Transverse Magnetic (TM). 
<br>Proceeding from the Maxwell curl equations
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image2.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image3.gif"></sub>
<br>However, the spatial variation in z is known so that
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image4.gif"></sub>
<br>Consequently, these curl equations simplify to
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image5.gif"></sub>
<br>We can perform a similar expansion of Ampère's equation
<br> * H = j&omega; &epsilon; E to obtain
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image6.gif"></sub>
<br>Now, (1)-(6) can be manipulated to produce simple algebraic equations for the transverse (x and y) components of E and H . For example, from (1): 
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image6.gif"></sub>
<br>Substituting for E<sub>y</sub> from (5) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image7.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image8.gif"></sub>
<br>where k<sub>c</sub><sup>2</sup> = k<sup>2</sup> - &beta; <sup>2</sup> and k<sup>2</sup> = &omega;<sup>2</sup>&mu;&epsilon; . Similarly, we can show that
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image9.gif"></sub>
<br>Most important point: From (7)-(10), we can see that all transverse components of E and H can be determined from only the axial components  E<sub>z</sub> and  H<sub>z</sub> . It is this fact that allows the mode designations TEM, TE, and TM. Furthermore, we can use superposition to reduce the complexity of the solution by considering each of these mode types separately, then adding the fields together at the end. 
<br><b>TE Modes and Rectangular Waveguides</b>
<br>A transverse electric (TE) wave has E<sub>z</sub> = 0 and H<sub>z</sub> = 0. Consequently, all E components are transverse to the direction of propagation. Hence, in (7)-(10) with E<sub>z</sub> =0 , then all transverse components of E and H are known once we find a solution for only H<sub>z</sub> . Neat! For a rectangular waveguide, the solutions for E<sub>x</sub> , E<sub>y</sub> , H<sub>x</sub> , H<sub>y</sub> , and H<sub>z</sub> are obtained in Section 3.3 of the text. The solution and the solution process are interesting, but not needed in this course. What is found in that section is that
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image10.gif"></sub>
<br>Therefore. 
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image11.gif"></sub>
<br>These m and n indices indicate that only discrete solutions for the transverse wavenumber (k<sub>c</sub>) are allowed. Physically, this occurs because we've bounded the system in the x and y directions. (A vaguely similar situation occurs in atoms, leading to shell orbitals.) Notice something important. From (11), we find that m = n = 0 means that , k<sub>c</sub><sub> 00</sub> = 0. In (7)-(10), this implies infinite field amplitudes, which is not a physical result. Consequently, the m = n = 0 TE or TM modes are not allowed. One exception might occur if E<sub>z</sub> = H<sub>z</sub> = 0since this leads to indeterminate forms in (7)-(10). However, it can be shown that inside hollow metallic waveguides when both m = n = 0 and E<sub>z</sub> = H<sub>z</sub> = 0, then E = H = 0. This means there is no TEM mode. 
<br>Consequently, EM waves will propagate only when the frequency is "large enough” since there is no TEM mode. Otherwise &beta; will be imaginary (&beta; -> - j&alpha; ), leading to pure attenuation and no propagation of the wave e? j z ->e -&alpha;z . This turns out to be a general result. That is, for a hollow conductor, EM waves will propagate only when the frequency is large enough and exceeds some lower threshold. It can be shown that guided EM waves require at least two conductors in order to support wave propagation all the way to 0+ Hz. This minimum propagation frequency is called the cutoff frequency f . The cutoff frequencies for TE modes in a rectangular waveguide are determined from (12) with &beta; = 0 to be
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image12.gif"></sub>
<br>In other words, these are the frequencies where &beta; <sub>mn</sub> = 0 andwave propagation begins when the frequency slightly exceeds f<sub>cmn</sub> . For an X-band rectangular waveguide, the cross-sectional dimensions are a = 2.286 cm and b = 1.016 cm. Using (13): 
<br>TE<sub>m</sub><sub>,n</sub> Mode Cutoff Frequencies
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image13.gif"></sub>
<br>In the X-band region (? 8.2-12.5 GHz), only the TE<sub>10</sub> mode can propagate in the waveguide regardless of how it is excited. (We'll also see shortly that no TM modes will propagate either.) This is called single mode operation and is most often the preferred application for hollow waveguides. On the other hand, at 15.5 GHz any combination of the first three of these modes could exist and propagate inside a metal, rectangular waveguide. Which combination actually exists will depend on how the waveguide is excited. Note that the TE11 mode (and all higher-ordered TE modes) could not propagate. (We'll also see next that no TM modes will propagate at 15.5 GHz either.) 
<br><b>TM Modes and Rectangular Waveguides</b>
<br>Conversely to TE modes, transverse magnetic (TM) modes have H<sub>z</sub> = 0 and E<sub>z</sub> &#8800; 0 The expression for the cutoff frequencies of TM modes in a rectangular waveguide 
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image14.gif"></sub>
<br>is very similar to that for TE modes given in (13). It can be shown that if either m = 0 or n = 0 for TM modes, then E = H = 0. This means that no TM modes with m = 0 or n = 0 are allowable in a rectangular waveguide. For an X-band waveguide: 
<br>TM<sub>m,n</sub> Mode Cutoff Frequencies
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image15.gif"></sub>
<br>Therefore, no TM modes can propagate in an X-band rectangular waveguide when f &lt; 16.156 GHz. 
<br><b>Dominant Mode</b>
<br>Note that from 6.56 GHz &#8804; f &#8804; 13.12 GHz in the X-band rectangular waveguide, only the TE10 mode can propagate. This mode is called the dominant mode of the waveguide. See Fig 3.9 in the text for plots of the electric and magnetic fields associated with this mode. 
<br><b>TEM Mode</b>
<br>The transverse electric and magnetic (TEM) modes are characterized by E<sub>z</sub> = 0 and H<sub>z</sub> = 0. In order for this to occur, it can be shown from (3.4) and (3.5) that it is necessary for f<sub>c</sub> = 0 . In other words, there is no cutoff frequency for waveguides that support TEM waves. Rectangular, circular, elliptical, and all hollow, metallic waveguides cannot support TEM waves. It can be shown that at least two separate conductors are required for TEM waves. Examples of waveguides that will allow TEM modes include coaxial cable, parallel plate waveguide, stripline, and microstrip. Microstrip is the type of microwave circuit interconnection that we will use in this course. This "waveguide” will support the "quasi-TEM” mode, which like regular TEM modes has no nonzero cutoff frequency. However, if the frequency is large enough, other modes will begin to propagate on a microstrip. This is usually not a desirable situation. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/tem_te_and_tm_modes_for_waveguides.aspx"></asp:HyperLink> 
<br>why TEM mode is not possible for hollow waveguide 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:56:18 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2386
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/tem_te_and_tm_modes_for_waveguides.aspx"></asp:HyperLink> 
<br>why we use hollow metallic rectangular wave guide for dominant mode operation 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>chayanika.josh</b> 
</td>

      
      <td class="txt">
	<br>Sep 11, 9:55:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2308
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/tem_te_and_tm_modes_for_waveguides.aspx"></asp:HyperLink> 
<br>I want to know how to calculate and the design of power divider 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;</b><b>vannak</b> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_tem_te_and_tm_modes_for_waveguides/image17.wmf"></sub>
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
