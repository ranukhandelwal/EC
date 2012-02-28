<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Phasor_Wave_Solutions_to_the_Telegrapher_Equations_Termination_of_TLs.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Phasor_Wave_Solutions_to_the_Telegrapher_Equations_Termination_of_TLs" %>
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
	<b>Phasor Wave Solutions to the Telegrapher Equations Termination of TLs</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Phasor Wave Solutions to the Telegrapher Equations. Termination of TLs</b>
<br>We will continue our TL review by considering the steady state response of TLs to sinusoidal excitation. Consider the following TL in the sinusoidal steady state: 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image1.gif"></sub>
<br>We previously derived the wave equations for the voltage and current as
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image2.gif"></sub>
<br>For sinusoidal steady state, we will employ the phasor representation of the voltage and current as
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image3.gif"></sub>
<br>where V (z) and I (z) are spatial phasor functions. Substituting (3) into (1) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image4.gif"></sub>
<br>We define as the phase constant for reasons that will be apparent shortly. (L and C are the usual TL per-unit-length parameters.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image5.gif"></sub>
<br>Substituting this into (5) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image6.gif"></sub>
<br>Similarly, from (4) and (2) we can derive
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image7.gif"></sub>
<br>Equations (7) and (8) are the wave equations for V and I in the frequency domain (i.e., the phasor domain). The solutions to these two second-order ordinary differential equations are
<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image8.gif"></sub>
<br>We can confirm the correctness of these two solutions by direct substitution into For example, substituting from (9) into (7) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image9.gif"></sub>
<br>which is indeed true. Therefore, V<sub>0</sub><sup> +</sup>e<sup>-j</sup><sup>b</sup><sup>z</sup> in (9) is a valid solution to (7). The constants I<sub>0</sub><sup>+</sup> and I<sub>0</sub><sup> =</sup> in (10) can be expressed in terms of V<sub>0</sub><sup>+</sup> and V<sub>0</sub><sup>-</sup> . In particular, it can be shown that
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image10.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image11.gif"></sub>
<br>If we substitute (11) and (12) into (10) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image12.gif"></sub>
<br>And
<br>V(z) = V<sub>0</sub><sup>+</sup> e <sup>-j</sup><sup>b</sup><sup>z </sup>+ V<sub>0</sub><sup>-</sup> e <sup>-j</sup><sup>b</sup><sup>z </sup>
<br>Both of these equations should be committed to memory. They are the general form of phasor voltages and currents on transmission lines. The first terms in (13) and (14) are the phasor representation of waves propagating in the +z direction along the TL. The second terms in both equations represent waves propagating in the -z direction. 
<br><b>Discussion</b>
<br>&bull; As stated above, the first terms in (13) and (14) are the phasor representation of waves traveling in the +z direction. To see this, convert the first term in (14) to the time domain: 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image13.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image14.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image15.gif"></sub>
<br>We can clearly see in this last result that we have a function of time with argument t - z/ v<sub>p</sub> . From our previous discussions with TLs we recognize that this is a wave that is propagating in the +z direction with speed v<sub>p</sub>.
<br>&bull; Similarly, we can show that V<sub>0</sub><sup> +</sup> e<sup> +j</sup><sup>b</sup><sup>z</sup> (and I<sub>0</sub> <sup>+</sup> e<sup>+j</sup><sup>b</sup><sup>z</sup> ) are waves propagating in the -z direction. 
<br><b>Generality of TL Theory</b>
<br>It was mentioned in the last lecture that transmission lines could be used to model the voltage and current waves on any structure supporting only TEM waves. What changes from structure to structure are the values for L, C,R, and G, as shown below in Table 2.1 for three common TEM structures: 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image16.gif"></sub>
<br>Consequently, the values of Z<sub>0</sub>, v<sub>p</sub>, b generally all change from one TL to another. The numerical values can also be changed within a type of TL by varying the dimensions and construction materials. 
<br><b>Termination of Transmission Lines</b>
<br>We will now consider the termination of TLs that are excited by sinusoidal steady state sources. 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image17.gif"></sub>
<br>Adding terminations produces reflections so that the total voltage and current anywhere on the TL are sums of forward and reverse propagating waves. From (13) and (14), the voltage and current on the TL will have the form
<br>V(z) = V<sub>0</sub><sup>+</sup> e <sup>-j</sup><sup>b</sup><sup>z</sup> + V<sub>0</sub><sup>-</sup>e<sup>+j</sup><sup>b</sup><sup>z</sup>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image18.gif"></sub>
<br>The "lumped load” Z<sub>L </sub>that terminates the TL is considered a boundary condition for the voltage and current in 
<br>V (z = 0) = I (z =0) Z<sub>L</sub>
<br>Therefore, we can solve for V<sub>0</sub> in terms of V<sub>+</sub> by applying this boundary condition as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image19.gif"></sub>
<br>Forming the ratio of these quantities gives
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image20.gif"></sub>
<br>Solving for V<sub>0</sub><sup> +</sup> / V<sub>0</sub><sup> +</sup> , and defining this ratio as the voltage reflection coefficient at the load (z = 0), we find
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image21.gif"></sub>
<br>Note that, in general, T<sub>L</sub> is a complex number since Z<sub>L</sub> is complex. 
<br>Example N3.1: For an open-circuit load on the TL shown above, compute the load reflection coefficient and sketch the voltage and current magnitude on the TL. For an open circuit load Z<sub>L</sub> = ¥ (i.e., an extremely large impedance), so that from (18) T<sub>L</sub> = +1 . With this value of then from (15) and (16) the solutions for V (z) and I (z) are
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image22.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image23.gif"></sub>
<br>These two equations (19) and (20) are not traveling waves. So, where has the traveling wave behavior in V (z) and I (z) gone The interference between the incident and reflected wavesproduces standing waves, such as these. V (z) and I (z) are shown here for the open-circuit load: 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image24.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image25.gif"></sub>
<br>Phasor voltage and current magnitudes vary noticeably along TLs provided the TL length is greater than about 0.05 &lambda; or so. Remember, though, that we are plotting the magnitude of phasor voltages and currents. The voltage and current oscillate as functions of time with amplitudes equal to V (z) and I (z) respectively, at each point along the TL. 
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image26.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image27.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image29.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_phasor_wave_solutions_to_the_telegrapher_equations_termination_of_tls/image28.wmf"></sub>
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
