<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Impedance_and_Admittance_Matrices.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Impedance_and_Admittance_Matrices" %>
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
	<b>Impedance and Admittance Matrices </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Impedance and Admittance Matrices </b>
<br>As in low frequency electrical circuits, a matrix description for portions of microwave circuits can prove useful in simulations and for understanding the behavior of the subcircuit, among other reasons. Matrix descriptions are a very convenient way to integrate the effects of the subcircuit into a circuit without having to concern yourself with the specific details of the subcircuit. We will primarily be interested in ABCD and S matrices in this course, though Z and Y matrices will also prove useful. The ABCD and S parameters are probably new to you. As we'll see, using these matrix descriptions is very similar to other two-port models for circuits you've seen before, such as Z and Y matrices. 
<br><b>Z Matrices</b>
<br>As an example of Z matrices, consider this two-port network: 
<br>
<br>The Z-matrix description of this two-port is defined as
<br>.
<br>Where
<br>
<br>As an example, let's determine the Z matrix for this T-network
<br>
<br>Applying (1) repeatedly to all four Z parameters, we find: 
<br>
<br>
<br>Collecting these calculations, then for this T-network: 
<br>
<br>Notice that this matrix is symmetric. That is, Z<sub>ij</sub> = Z<sub>ji</sub> for i &#8800; j . It can be shown that [Z] will be symmetric for all “reciprocal” networks. What's the usefulness of an impedance matrix description? For one thing, if a complicated circuit exists between the ports, one can conveniently amalgamate the electrical characteristics into this one matrix. Second, if one has networks connected in series, it's very easy to combine the Z matrices. For example: 
<br>
<br>By definition
<br>
<br>From the figure we see that I<sub>1</sub><sup>'</sup> = I<sub>1</sub><sup>'</sup>, I<sub>2</sub><sup>'</sup> = I<sub>2</sub><sup>'</sup>, and that V<sub>1</sub> =V<sub>1</sub><sup>'</sup> +V <sub>1</sub> <sup>'</sup>, V<sub>2</sub> = V<sub>2</sub> <sup>'</sup> + V<sub>2</sub><sup>'</sup>. So, summing the above two matrix equations gives
<br>
<br>Also from the figure, note that I<sub>1</sub> = I<sub>1</sub><sup> '</sup> and I<sub>2</sub> = I<sub>2</sub><sup> '</sup> . Therefore, 
<br>
<br>From this result, we see that for a series connection of two-port networks, we can simply add the Z matrices to form a single "super” Z matrix
<br>[Z] = [Z<sup>'</sup>]+[Z<sup>''</sup>] 
<br>that incorporates the electrical characteristics of both networks and their mutual interaction. 
<br><b>Y Matrices</b>
<br>A closely related characterization is the Y-matrix description of a network: 
<br>
<br>By definition: 
<br>
<br>Where
<br>
<br>Comparing (4) and (1) we see that
<br>[y]=[z]<sup>-1</sup> 
<br>The Y-parameter description is useful when connecting networks in parallel: 
<br>
<br>From this diagram, we see that
<br>
<br>Where
<br>[Y] = [ Y<sup>'</sup>] + [y<sup> ‘' </sup>]
<br><b>Z and Y Matrices for Microwave Networks</b>
<br>We can easily generalize these Z and Y parameter descriptions for microwave networks and multiport networks. Consider an N-port network connected to transmission lines
<br>
<br>The locations t<sub>n</sub> , n =1,...,N , are the terminal planes for each port. These are the positions on that TL where the phase is arbitrarily chosen equal to zero. At these terminal planes (which are also called the phase planes), z<sub>0</sub> =0 so that the voltage on the nth TL 
<br>V<sub>n</sub>(z<sub>n</sub>) = V <sub>n</sub> <sup>+ </sup>e <sup>-j</sup><sup>&beta;</sup><sup> </sup><sub>n</sub><sup> z</sup><sub>n</sub><sup> + V</sup><sub>n</sub><sup> - e + j</sup><sup>&beta;</sup><sup> </sup><sub>n</sub><sup>z</sup><sub>n</sub><sup>
<br>Becomes </sup><sup>
<br>V</sup><sub>n</sub><sup> ( z</sup><sub>n</sub><sup> = 0 ) = V</sup><sub>n</sub><sup> + + V </sup><sub>n</sub><sup> - </sup><sup>
<br>Likewise</sup><sup>
<br>I</sup><sub>n</sub><sup> ( z </sup><sub>n</sub><sup> - 0 ) = I </sup><sub>n</sub><sup> + + I </sup><sub>n</sub><sup> - </sup><sup>
<br>Since the telegrapher's equations are linear, any N linearly independent combinations of the 2N quantities V</sup><sub>n</sub><sup> and I</sup><sub>n</sub><sup> may be chosen as the independent variables. For an impedance description, we choose I</sup><sub>n</sub><sup> as the independent variables. Then, </sup><sup>
<br></sup><sup></sup><sup>
<br>Or</sup><sup>
<br>[V] = [Z] .[I ] </sup><sup>
<br>For an admittance description, we choose V</sup><sub>n</sub><sup> as the independent variables: </sup><sup>
<br></sup><sup></sup><sup>
<br>Or</sup><sup>
<br>[I] = [Y ] . [V] </sup><sup>
<br></sup><b><sup>Global Characteristics of Z and Y Matrices</b></sup><sup>
<br>Finally, these are two extremely important properties of Z and Y matrices: </sup><sup>
<br>1. For a reciprocal network</sup><sup>
<br>Z</sup><sub>ij</sub><sup> = Z</sup><sub> ji</sub><sup> and Y</sup><sub>ij</sub><sup> = Y</sup><sub>ji</sub><sup> </sup><sup>
<br>That is, the matrices are symmetrical about the main diagonal. (We observed this characteristic in the Z matrix of an impedance T-network earlier in this lecture.) A reciprocal network is one where a source instrument and a measurement instrument can be exchanged between two ports and the measured quantity remains unchanged. All passive (and some active) circuits you've encountered in circuits and electronics courses are reciprocal networks. </sup><sup>
<br>2. For a lossless network</sup><sup>
<br>R</sup><sub>e</sub><sup> {Z</sup><sub>ij</sub><sup>} = 0 </sup><sup></sup><sup> I,j</sup><sup>
<br>From (5), this implies that</sup><sup>
<br>R</sup><sub>e</sub><sup> {Y</sup><sub>ij</sub><sup>} = 0 </sup><sup></sup><sup> I,j</sup><sup>
<br>In other words, for a lossless network the Z and Y matrices are purely imaginary. </sup>
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
	<br><b>Last </b><b>Post</b>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/impedance_and_admittance_matrices.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/impedance_and_admittance_matrices.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/impedance_and_admittance_matrices.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_impedance_and_admittance_matrices/image2.wmf"></sub>
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
