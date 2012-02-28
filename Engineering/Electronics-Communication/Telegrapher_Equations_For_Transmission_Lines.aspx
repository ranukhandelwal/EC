<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Telegrapher_Equations_For_Transmission_Lines.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Telegrapher_Equations_For_Transmission_Lines" %>
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
	<b>Telegrapher Equations For Transmission Lines Power Flow </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Telegrapher Equations For Transmission Lines. Power Flow </b>
<br>Microstrip is one method for making electrical connections in a microwave circuit. It is constructed with a ground plane on one side of a PCB and lands on the other: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image1.gif"></sub>
<br>Microstrip is an example of a transmission line, though technically it is only an approximate model for microstrip, as we will see later in this course. Why TLs Imagine two ICs are connected together as shown: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image2.gif"></sub>
<br>When the voltage at A changes state, does that new voltage appear at B instantaneously No, of course not. If these two points are separated by a large electrical distance, there will be a propagation delay as the change in state (electrical signal) travels to B. Not an instantaneous effect. In microwave circuits, even distances as small as a few inches may be "far” and the propagation delay for a voltage signal to appear at another IC may be significant. This propagation of voltage signals is modeled as a "transmission line” (TL). We will see that voltage and current can propagate along a TL as waves! Fantastic. The transmission line model can be used to solve many, many types of high frequency problems, either exactly or approximately: 
<br>&bull; Coaxial cable. 
<br>&bull; Two-wire. 
<br>&bull; Microstrip, stripline, coplanar waveguide, etc. 
<br>All true TLs share one common characteristic: the E and H fields are all perpendicular to the direction of propagation, which is the long axis of the geometry. These are called TEM fields for transverse electric and magnetic fields. An excellent example of a TL is a coaxial cable. On a TL, the voltage and current vary along the structure in time t and spatially in the z direction, as indicated in the figure below. There are no instantaneous effects. 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image3.gif"></sub>
<br>A common circuit symbol for a TL is the two-wire (parallel) symbol to indicate any transmission line. For example, the equivalent circuit for the coaxial structure shown above is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image4.gif"></sub>
<br><b>Analysis of Transmission Lines</b>
<br>On a TL, the voltage and current vary along the structure in time (t) and in distance (z), as indicated in the figure above. There are no instantaneous effects. 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image5.gif"></sub>
<br>How do we solve for v(z,t) and i(z,t) We first need to develop the governing equations for the voltage and current, and then solve these equations. Notice in Fig. 1 above that there is conduction current in the center conductor and outer shield of the coaxial cable, and a displacement current between these two conductors where the electric field E is varying with time. Each of these currents has an associated impedance: 
<br>&bull; Conduction current impedance effects: 
<br>o Resistance, R, due to losses in the conductors, 
<br>o Inductance, L, due to the current in the conductors and the magnetic flux linking the current path. 
<br>&bull; Displacement current impedance effects: 
<br>o Conductance, G, due to losses in the dielectric between the conductors, 
<br>o Capacitance, C, due to the time varying electric field between the two conductors. 
<br>To develop the governing equations for V (z,t ) and I (z,t ), we will consider only a small section z of the TL. This z is so small that the electrical effects are occurring instantaneously and we can simply use circuit theory to draw the relationships between the conduction and displacement currents. This equivalent circuit is shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image6.gif"></sub>
<br>The variables R, L, C, and G are distributed (or per-unit length, PUL) parameters with units of beta/m, H/m, F/m, and S/m, respectively. We will generally ignore losses in this course. In the case of a lossless TL where R = G = 0, a finite length of TL can be constructed by cascading many, many of these subsections along the total length of the TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image7.gif"></sub>
<br>This is a general model: it applies to any TL regardless of its cross sectional shape provided the actual electromagnetic field is TEM. However, the PUL-parameter values change depending on the specific geometry (whether it is a microstrip, stripline, two-wire, coax, or other geometry) and the construction materials. 
<br><b>Transmission Line Equations</b>
<br>To develop the governing equation for v(z,t ), apply KVL in Fig. 2 above (ignoring losses) 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image8.gif"></sub>
<br>Similarly, for the current i(z,t ) apply KCL at the node
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image9.gif"></sub>
<br>1. Divide (1) by z : 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image10.gif"></sub>
<br>In the limit as z0, the term on the LHS in (3) is the forward difference definition of derivative. Hence, 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image11.gif"></sub>
<br>2. Divide (2) by z : 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image12.gif"></sub>
<br>Again, in the limit as z0 the term on the LHS is the forward difference definition of derivative. Hence, 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image13.gif"></sub>
<br>Equations (4) and (6) are a pair of coupled first order partial differential equations (PDEs) for v(z,t ) and i(z,t ). These two equations are called the telegrapher equations or the transmission line equations. 
<br>Recap: We expect that v and i are not constant along microwave circuit interconnects. Rather, (4) and (6) dictate how v and i vary along the TL at all times. 
<br><b>TL Wave Equations</b>
<br>We will now combine (4) and (6) in a special way to form two equations, each a function of v or i only. 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image14.gif"></sub>
<br>Substituting 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image15.gif"></sub>
<br>Similarly, 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image16.gif"></sub>
<br>Equations (9) and (10) are the governing equations for the z and t dependence of v and i. These are very special equations. In fact, they are wave equations for v and i! We will define the (phase) velocity of these waveforms as
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image17.gif"></sub>
<br>so that (9) becomes
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image18.gif"></sub>
<br><b>Voltage Wave Equation Solutions</b>
<br>There are two general solutions to (11): 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image19.gif"></sub>
<br>v+ is any twice-differentiable function that contains t, z, and vp in the form of the argument shown. It can be verified that (12) is a solution to (11) by substituting (12) into (11) and showing that the LHS equals the RHS. 
<br>Equation (12) represents a wave traveling in the +z direction with speed v<sub>p</sub> =1/ LC m/s. To see this, consider the example below with v<sub>p</sub> = 1 m/s: 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image20.gif"></sub>
<br>At t = 1 s, focus on the peak located at z = 1.5 m. Then, 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image21.gif"></sub>
<br>The argument s<sub>+</sub> stays constant for varying t and z. Therefore, at t = 2 s, for example, then
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image22.gif"></sub>
<br>Therefore, 
<br>z = 2.5 m
<br>So the peak has now moved to position z = 2.5 m at t = 2 s. Likewise, every point on this function moves the same distance (1 m) in this time (1 s). This is called wave motion. The speed of this movement is
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image23.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image24.gif"></sub>
<br>This is the second general solution to (11). This function v represents a wave moving in the -z direction with speed v<sub>p</sub> . The complete solution to the wave equation (11) is the sum of (12) and (13) 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image25.gif"></sub>
<br>v+ and v can be any suitably differentiable functions, but with arguments as shown. 
<br><b>Current Wave Equation Solutions</b>
<br>A similar analysis can be performed for current waves on the TL. The governing equation for i(z,t ) is
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image26.gif"></sub>
<br>The complete general solution to this current wave equation can be determined in a manner similar to the voltage as
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image27.gif"></sub>
<br>Furthermore, the function i<sub>+</sub> can be related to the function v<sub> + </sub>and i<sub></sub><sub> </sub>can be related to v<sub></sub>. For example, substituting differentiating then integrating gives
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image28.gif"></sub>
<br>Or
<br>I<sub>+</sub> = v<sub>p</sub> Cv<sub>+</sub>
<br>But
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image29.gif"></sub>
<br>We will define
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image30.gif"></sub>
<br>as the characteristic impedance of the transmission line. (Note that in some texts, Z<sub>0</sub> is denoted as R<sub>c</sub> , the characteristic resistance of the TL). With (18), (17) can be written as
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image31.gif"></sub>
<br>Similarly, it can be shown that
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image32.gif"></sub>
<br>The minus sign results since the current is in the -z direction. Finally, substituting (19) and (20) into (16) gives
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image33.gif"></sub>
<br>This equation as well as (14) 
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image34.gif"></sub>
<br>are the general wave solutions for v and i on a transmission line. 
<br><b>Power Flow</b>
<br>These voltage and current waves transport power along the TL. The power flow carried by the forward wave p<sub>+</sub> (z,t ) is
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image35.gif"></sub>
<br>which is positive indicating power flows in the +z direction. Similarly, the power flow of the reverse wave is
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image36.gif"></sub>
<br>which is negative indicating power flows in the -z direction. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/telegrapher_equations_for_transmission_lines.aspx"></asp:HyperLink> 
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
	<br>2386
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/telegrapher_equations_for_transmission_lines.aspx"></asp:HyperLink> 
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
	<br>2308
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image37.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/telegrapher_equations_for_transmission_lines.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image39.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image39.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image39.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_telegrapher_equations_for_transmission_lines/image38.wmf"></sub>
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
