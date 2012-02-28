<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Dispersion_Stripline_and_Other_Planar_Waveguides.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Dispersion_Stripline_and_Other_Planar_Waveguides" %>
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
	<b>Dispersion Stripline and Other Planar Waveguides</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Dispersion Stripline and Other Planar Waveguides.</b>
<br>Perhaps the biggest reason the TEM mode is preferred over TE or TM modes for propagating communication signals is that ideally it is not dispersive. That is, the phase velocity of a TEM wave is not a function of frequency [v<sub>p</sub> &#8800; g(&Omega;) ] if the material properties of the waveguide are not functions of frequency. To see this, recall for a TEM wave that &beta; =&omega;LC . Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image1.gif"></sub>
<br>which is not a function of frequency, as conjectured, provided neither L nor C are functions of frequency. However, for either TE or TM modes, v<sub>p</sub> is a function of frequency regardless of the material properties of the waveguide. Take the rectangular waveguide as an example. In the last lecture, we found that
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image2.gif"></sub>
<br>where m,n = 0,1,2,... (m = n &#8800; 0) for TE modes, while m,n = 1,2,... for TM modes. For a CW signal carried by one of these modes, the phase velocity is
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image3.gif"></sub>
<br>which is clearly a function of frequency. Consequently, we have confirmed that TE and TM modes in a rectangular waveguide are dispersive. One special case is m = n = 0. Since k<sub>c 00</sub> = 0, then v<sub>p</sub> &#8800; (g f) which means this is not a dispersive mode. However, the m = n = 0 mode is the TEM mode, which cannot exist in a hollow conductor waveguide. The problem with (temporally) dispersive modes is that they can severely distort signals that have been modulated onto them as the carrier. As the signal propagates down the waveguide: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image4.gif"></sub>
<br>In communications, such distortion is often unacceptable. Therefore, the TEM mode is the one commonly used in microwave engineering. (For high power applications, hollow waveguides made be required; hence, one would need to somehow work around the distortion.) 
<br>Since we prefer to work with the TEM mode of wave propagation, it is important that we use waveguides in our microwave circuits that will support TEM or "quasi-TEM” modes. Examples of such structures are: 
<br>&bull; Microstrip and covered microstrip, 
<br>&bull; Stripline, 
<br>&bull; Slotline, 
<br>&bull; Coplanar waveguide. 
<br>In this course, we will work primarily with microstrip. Actually, in the lab we will exclusively use microstrip. Before delving into microstrip, however, let's quickly overview some of these other TEM waveguides, beginning with stripline. 
<br><b>Stripline</b>
<br>Stripline is a popular, planar geometry for microwave circuits. As shown in Fig. 3.22: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image5.gif"></sub>
<br>Stripline has one or more interior strip conductors immersed in a dielectric with ground planes above and below. Stripline can support the TEM mode exclusively provided that b &lt;&lambda; 4 where &lambda;<sub>r</sub> = 0 c&epsilon; 
<br>. At higher frequencies, TE and TM modes may also propagate, which leads to signal distortion and other undesirable effects. This is called an “over-moded” waveguide. We'll assume that the (carrier) frequency is “low” enough that b &gt;&lambda; 4 and only the TEM mode propagates. As with any TEM mode, in a stripline with &mu;= &mu;<sub>0</sub> : 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image6.gif"></sub>
<br>Once &epsilon;<sub>r</sub> is known, we can straightaway determine v<sub>p</sub> , &beta; and Z<sub>0</sub> since none of these quantities depend on frequency for a TEM mode. 
<br><b>"Forward” Stripline Design</b>
<br>We will need to design stripline with a specific Z<sub>0</sub> . How do we determine C (the p.u.l. capacitance) required in (3) to accomplish this? Unfortunately, there is no simple, exact analytical solution for stripline (or microstrip, for that matter). Other the other hand, extremely accurate numerical solutions can be found using a number of techniques including the method of moments and the finite element method, among others. By curve fitting to these numerical solutions, it can be shown that for a stripline: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image7.gif"></sub>
<br>where W<sub>e</sub> is called an "effective strip width” given by
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image8.gif"></sub>
<br>Equation (4) is quite accurate, to 1% or so. As an example, if we stack two Rogers RO4003C laminates, then b = 2?0.032" =1.626 mm and &epsilon;<sub>e</sub>=3.38. Using (4): 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image9.gif"></sub>
<br>Notice that as W/ b increases, Z<sub>0</sub> decreases. With b =1.626 mm, then to obtain Z<sub>0</sub> = 50 beta =>  W b = 0.58 from this plot. Therefore, W = 0.58?b = 0.943 mm. 
<br><b>"Reverse” Stripline Design</b>
<br>One can determine the "inverse” of (4), so that W/ b can be determined once &epsilon;<sub>r</sub> and the required Z<sub>0</sub> are specified: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image10.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image11.gif"></sub>
<br>For example, with &epsilon;<sub>r</sub> = 3.38 and Z<sub>0</sub> = 50 beta, 50 3.38 = 91.92. From the upper solution in (5) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image12.gif"></sub>
<br>This is very close to the graphical solution we just obtained. The text describes an approximate electrostatic solution for Z<sub>0</sub>on pp. 140-143. Surprisingly, that numerical solution is presumably less accurate than (4), so we will not 
<br>discuss it. <b>Other Planar Waveguides</b>
<br>Besides stripline and microstrip, there are a few other popular planar waveguides: 
<br>1. Slotline - , 
<br>2. Coplanar waveguide - , 
<br>3. Covered microstrip - , 
<br>4. Suspended stripline: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image13.gif"></sub>
<br>A nice comparison of the electromagnetic and physical characteristics of coaxial cable, hollow waveguides, stripline, and microstrip is given in Table 3.6. 
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
<br><b>Discuss about Microwave Engineering here here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/dispersion_stripline_and_other_planar_waveguides.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/dispersion_stripline_and_other_planar_waveguides.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/dispersion_stripline_and_other_planar_waveguides.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_dispersion_stripline_and_other_planar_waveguides/image15.wmf"></sub>
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
