<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Transmission_ABCD_Matrix.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Transmission_ABCD_Matrix" %>
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
	<b>Transmission (ABCD) Matrix</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Transmission (ABCD) Matrix.</b>
<br>Concerning the equivalent port representations of networks we've seen in this course:
<br>1. Z parameters are useful for series connected networks, 
<br>2. Y parameters are useful for parallel connected networks, 
<br>3. S parameters are useful for describing interactions of voltage and current waves with a network. 
<br>There is another set of network parameters particularly suited for cascading two-port networks. This set is called the ABCD matrix or, equivalently, the transmission matrix. Consider this two-port network 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image1.gif"></sub>
<br>Unlike in the definition used for Z and Y parameters, notice that I<sub>2</sub> is directed away from the port. This is an important point and we'll discover the reason for it shortly. The ABCD matrix is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image2.gif"></sub>
<br>It is easy to show that
<br>A=(V<sub>1</sub>/V<sub>2</sub>)|<sub>I2=0</sub>
<br>B=(V<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub>
<br>C=(I<sub>1</sub>/V<sub>2</sub>)|<sub>I2=0</sub>
<br>D=(I<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub>
<br>Note that not all of these parameters have the same units. The usefulness of the ABCD matrix is that cascaded two-port networks can be characterized by simply multiplying their ABCD matrices. Nice! 
<br>To see this, consider the following two-port networks:
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image3.gif"></sub>
<br>In matrix form
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image4.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image5.gif"></sub>
<br>When these two-ports are cascaded, 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image6.gif"></sub>
<br>it is apparent that V<sub>2</sub><sup>'</sup>=V<sub>2</sub><sup>'</sup> and I<sub>2</sub><sup>'</sup> = I<sub>2</sub><sup>'</sup> . (The latter is the reason for assuming I<sub>2</sub> out of the port.) Consequently, substituting 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image7.gif"></sub>
<br>We can consider the matrix-matrix product in this equation as describing the cascade of the two networks. That is, let
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image8.gif"></sub>
<br>So that 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image9.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image10.gif"></sub>
<br>In other words, a cascade connection of two-port networks is equivalent to a single two-port network containing a product of the ABCD matrices. 
<br>It is important to note that the order of matrix multiplication must be the same as the order in which the two ports are arranged in the circuit. Matrix multiplication is not commutative, in general. That is,[A].[B] &#8800; [B].[A].Text example 4.6 shows the derivation of the ABCD parameters for a series (i.e., “floating”) impedance, which is the first entry in Table 4.1 on p. 185 of the text. In your homework, you'll derive the ABCD parameters for the next three entries in the table. 
<br>Example N20.1 Derive the ABCD parameters for the T network: 
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image11.gif"></sub>
<br>Recall from (1) that by definition
<br>V<sub>1</sub> = AV<sub>2</sub> + BI<sub>2</sub> and I<sub>1</sub> = CV<sub>2</sub> + DI<sub>2</sub>
<br>. To determine A: 
<br>A=(V<sub>1</sub>/V<sub>2</sub>)|<sub>I2=0</sub> 
<br>we need to open-circuit port 2 so that I<sub>2</sub> = 0. Hence, 
<br>V<sub>A</sub>=(Z<sub>3</sub>/Z<sub>1</sub>+Z<sub>3</sub>)V<sub>1</sub>=V<sub>2</sub>
<br>which yields, 
<br>A=(V<sub>1</sub>/V<sub>2</sub>)|<sub>I2=0</sub> = 1+(Z<sub>1</sub>/Z<sub>3</sub>
<br>. To determine B: 
<br>B=(V<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub>
<br>we need to short-circuit port 2 so that V<sub>2</sub> = 0. Then, using current division: 
<br>I<sub>2</sub>=(Z<sub>3</sub>/Z<sub>2</sub>+Z<sub>3</sub>)I<sub>1</sub>
<br>Substituting this into the expression for B above we find
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image12.gif"></sub>
<br>=Z<sub>1</sub>+(Z<sub>1</sub>Z<sub>2</sub>/Z<sub>3</sub>)+Z<sub>2</sub>||Z<sub>3</sub>{1+(Z<sub>2</sub>/Z<sub>3</sub>)}
<br>= Z<sub>1</sub> +(Z<sub>1</sub>Z<sub>2</sub>/Z<sub>3</sub>)+{(Z<sub>2</sub>Z<sub>3</sub>)/(Z<sub>2</sub>+Z<sub>3)</sub>)}(Z<sub>3</sub>+Z<sub>2</sub>/Z<sub>3</sub>)
<br>There for 
<br>B=Z<sub>1</sub>+Z<sub>2</sub>+(Z<sub>1</sub>Z<sub>2</sub>/Z<sub>3</sub>)
<br>. To determine C: 
<br>C=(I<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub>
<br>we need to open-circuit port 2, from which we find
<br>V<sub>A</sub> = I<sub>1</sub> Z<sub>3</sub> =V<sub>2</sub>
<br>There for 
<br>C=(I<sub>1</sub>/T<sub>2</sub>)|<sub>V2=0</sub> = 1/Z<sub>3</sub>
<br>. To determine D: 
<br>D=(I<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub>
<br>we need to short-circuit port 2. Using current division, as above, 
<br>I<sub>2</sub>=(Z<sub>3</sub>/Z<sub>2</sub>+Z<sub>3</sub>)I<sub>1</sub>
<br>There fore 
<br>D=(I<sub>1</sub>/I<sub>2</sub>)|<sub>V2=0</sub> = 1+(Z<sub>2</sub>/Z<sub>3</sub>)
<br>These ABCD parameters agree with those listed in the last entry of Table 
<br><b>Properties of ABCD parameters</b>
<br>As shown on pp. 185-186 of the text, the ABCD parameters can be expressed in terms of the Z parameters. (Actually, there are interrelationships between all the network parameters, which are conveniently listed in Table on p. 187.) 
<br>From this relationship, we can show that for a reciprocal Network
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image13.gif"></sub>
<br>If the network is lossless, there are no really outstanding features of the ABCD matrix. Rather, using the relationship to the Z parameters we can see that if the network is lossless, then
<br>. From (a): A= Z<sub>11</sub>/Z<sub>21</sub> => A real
<br>. From (b): B=( Z<sub>11</sub> Z<sub>22</sub> -Z<sub>12</sub> Z<sub>21</sub> )/Z<sub>21</sub>=>  B imaginary
<br>. From (c): C=1/Z<sub>21</sub>=>  C imaginary
<br>. From (d): D =Z<sub>22</sub>/Z<sub>21</sub>=> D real
<br>In other words, the diagonal elements are real while the off diagonal elements are imaginary for an ABCD matrix representation of a lossless network. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/transmission_abcd_matrix.aspx"></asp:HyperLink> 
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
	<br>2385
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/transmission_abcd_matrix.aspx"></asp:HyperLink> 
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
	<br>2307
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/transmission_abcd_matrix.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_transmission_abcd_matrix/image15.wmf"></sub>
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
