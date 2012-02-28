<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Simple_Quasi_Static_Moment_Method.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Simple_Quasi_Static_Moment_Method" %>
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
	<b>Simple Quasi Static Moment Method Analysis of a Microstrip</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Simple Quasi Static Moment Method Analysis of a Microstrip</b>
<br>Computational electromagnetics (CEM) can provide accurate solutions for Z<sub>0</sub> and other microstrip properties of interest including plots of E and H everywhere in space and J<sub>s</sub> and &rho;<sub>s</sub> on the land or the ground plane. This can be accomplished regardless of the cross-sectional geometry of the microstrip, the thickness of the land or its conductivity. The method of moments (MM) is a very popular CEM technique. It is particularly useful for planar geometries such as microstrip, stripline, conformal antennas, etc. The MM was popularized by R. F. Harrington in 1965 with his book “Field Computations by Moment Methods.” Today, it is one of the most widely used CEM techniques. We'll illustrate the MM technique with a solution to a quasistatic microstrip immersed in an infinite dielectric as shown: 
<br>
<br>That is, there is no substrate, per se. 
<br><b>Integral Equation</b>
<br>We'll imagine that a time harmonic voltage source has been applied across the two conductors: 
<br>
<br>This causes a charge accumulation as shown. Next, the image method will be employed to create an equivalent problem for the fields in the upper half space ( y &#8805; 0): 
<br>
<br>In a previous EM course, you've likely learned that the electric potential ?<sub>e</sub> at a point r in a homogeneous space produced by aline charge density &rho; <sub>l</sub> (r) is given by
<br>
<br>(For example, see J. Van Bladel, Electromagnetic Fields. New York: Hemisphere Publishing, 1985.) It is very important to realize that this contour C?must include all charge densities in the space, which means we must include both conductors in this integral. To develop an equation from which we can solve for the charge density, we'll apply the boundary condition
<br>
<br>Now, using (2) in (1) and accounting for both the +&rho; <sub>l</sub> and -&rho;<sub>l</sub> strips yields 
<br>
<br>
<br>Recall that the unknown in (3) is the line charge density &rho; <sub>l</sub> . But how do we solve for this function? It varies along the strip so we can't simply “pull” it out of the integral. Actually, (3) is called an integral equation because the unknown function is located in an integrand. You most likely haven't encountered such equations before. Integral equations are very difficult to solve analytically. We'll use a numerical solution method instead. 
<br><b>Basis Function Expansion</b>
<br>In the moment method, we first expand &rho;<sub>l</sub> in a set of basis functions. For a simple MM solution, here we'll use pulse basis functions and divide the strips into N uniform sections: 
<br>
<br>Where
<br>
<br>What is not known in (4) are the amplitudes &alpha;<sub> n</sub> of the line charge density expansion. These are just numbers. So, instead of directly solving for the spatial variation of &rho; <sub>L</sub> in (3), now we'll just be computing these N numbers, &alpha; <sub>n</sub>. Much simpler! However, we need to allow enough "degrees of freedom” in this basis function expansion (4) so that an accurate solution can be found. This is accomplished by choosing the proper type of expansion functions, a large enough N, etc. The next step in the MM solution is to substitute
<br>
<br>Where
<br>
<br>and is called the Green's function. We can interchange the order of integration and summation in (5) since these are linear operators, except perhaps when x = x In this case, the integrand becomes singular. We'll consider this situation later in this lecture. Then, (5) becomes
<br>
<br>Or
<br>
<br><b>Testing the Integral Equation</b>
<br>In (7), we have N unknown coefficients &alpha; <sub>n</sub> to solve for, but only a single equation. We will generate a total of N equations by evaluating (7) at N points along the (top) strip. This process is called “testing” the integral equation. We'll test (7) at the centers of each of the N segments, x<sub>m</sub> , giving
<br>
<br>This is the final system of equations that we will use to solve for all the coefficients &rho; <sub>n</sub> . 
<br><b>Matrix Equation</b> 
<br>It is helpful to cast (8) into the form of a matrix equation
<br>
<br>Where
<br>V<sub>m</sub> = V 
<br>&alpha;<sub>n</sub> = &rho; <sub>n </sub>
<br>
<br>The numerical solution to (9) is accomplished by "filling” or "populating” [V] and [Z], then solving a system of linear, constant coefficient equations. In particular, for
<br>&bull; [V] – choose V = 1 V in (10a), for example. 
<br>&bull; [Z] – compute (10c) analytically, if possible, or by numerical integration. 
<br>The "filling” of [V] is very simple, while filling [Z] is a bit more difficult. In this quasi-static microstrip example, though, it is possible to evaluate all of the terms analytically since a simple anti-derivative is available. In particular, with the center of the strip located at the origin as shown: 
<br>
<br>then the electrostatic potential at point r produced by a strip of width  supporting a constant line charge density &rho; <sub>l </sub>is given by
<br>
<br>This integral can be evaluated analytically since the integrand, as it turns out, has a relatively simple anti-derivative. Performing the integration in (11), we find that when r does not lie anywhere on the strip, the potential is
<br>
<br>while if x = y = 0 (at the center of the strip), then
<br>
<br>Using (12) and (13) in (10c), it can be shown that for m &#8800; n
<br>
<br>where <sub>mn</sub>  x<sub>m</sub> - x<sub>n</sub> while if m = n, then 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/simple_quasi_static_moment_method.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/simple_quasi_static_moment_method.aspx"></asp:HyperLink> 
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
	<br>2309
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/simple_quasi_static_moment_method.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_simple_quasi_static_moment_method/image2.wmf"></sub>
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
