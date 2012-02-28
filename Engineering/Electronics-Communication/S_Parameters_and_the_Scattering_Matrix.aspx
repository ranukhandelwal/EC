<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="S_Parameters_and_the_Scattering_Matrix.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.S_Parameters_and_the_Scattering_Matrix" %>
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
	<b>S Parameters and the Scattering Matrix</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>S Parameters and the Scattering Matrix.</b>
<br>While Z and Y parameters can be useful descriptions for networks, S and ABCD parameters are even more widely used in microwave circuit work. We'll begin with the scattering (or S) parameters. Consider again the multi-port network from the last lecture, which is connected to N transmission lines as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image1.gif"></sub>
<br>Rather than focusing on the total voltages and currents (i.e., the sum of "+” and "-” waves) at the terminal planes t <sub>1</sub> ,...., t<sub>n</sub> , the S parameters are formed from ratios of reflected and incident voltage wave amplitudes. When the characteristic impedances of all TLs connected to the network are the same (as is the case for the network shown above), then the S parameters are defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image2.gif"></sub>
<br>Or
<br>[V<sup>-</sup>] = [s] . [V<sup>+</sup>]
<br>Where[s]is called the scattering matrix. As we defined in the last lecture, the terminal planes are the "phase = 0” planes at each port. That is, with
<br>V<sub>n</sub> (Z<sub>n</sub> ) = V<sub>n</sub><sup>+ </sup>e <sup>-j</sup><sup>&beta;</sup><sub>n</sub> (z<sub>n</sub> -t<sub>n</sub> ) + V<sub>n</sub> <sup>-</sup> e <sup>-j</sup><sup>&beta;</sup><sub>n</sub><sup> (z</sup><sub>n</sub><sup> -t</sup><sub>n</sub><sup> )</sup> n = 1,......N then at the terminal plane t<sub>n</sub>
<br>V<sub>n</sub> (Z <sub>n</sub> = t<sub>n</sub>)  V<sub>n</sub><sup>+</sup> + V<sub>n</sub> <sup>-</sup>
<br>Each S parameter in (1) can be computed as
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image3.gif"></sub>
<br>Notice in this expression that the wave amplitude ratio is defined "from” port j "to” port i: 
<br>S<sub>ij</sub>
<br>Let's take a close look at this definition (2). Imagine we have a two-port network: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image4.gif"></sub>
<br>Then, for example, 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image5.gif"></sub>
<br>Simple enough, but how do we make V<sub>2</sub> <sup>+ </sup>= 0? This requires that: 
<br>1. There is no source on the port-2 side of the network, and
<br>2. Port 2 is matched so there are no reflections from this port. 
<br>Consequently, with V<sub>2</sub> <sup>+ </sup>= 0 =>  S<sub>11</sub> = T<sub>11</sub> , which is the reflection coefficient at port 1. Next, consider
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image6.gif"></sub>
<br>Again, with a matched load at port 2 so that V<sub>2</sub> <sup>+ </sup>= 0, then
<br>S<sub>21</sub> = T<sub>21</sub>
<br>which is the transmission coefficient from port 1 to port 2. It is very important to realize it is a mistake to say S<sub>11</sub> is the reflection coefficient at port 1. Actually, S<sub>11</sub> is this reflection coefficient only when V<sub>2</sub> <sup>+ </sup>= 0 . 
<br>As we'll see in the following example, if port 1 is not matched, then the reflection coefficient at port 1 will generally depend not only on S<sub>11</sub> , but also all other S parameters and the load. An advantage of using S parameters compared to others is that matched loads are used for terminating the ports rather than opens and shorts. In some circuits this difference is critical. For example, with transistor amplifiers a nearly matched load may be necessary for the amplifier to operate correctly, whereas an open or short load may render the amplifier nonfunctional. 
<br>Example N15.1. (Similar to text example 4.5.) A two-port network has the following S matrix referred to some system impedance Z<sub>0</sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image7.gif"></sub>
<br>If a short circuit is connected to port 2, what is the resulting return loss at port 1? From the definition (1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image8.gif"></sub>
<br>we find that
<br>V<sub>1</sub> <sup>-</sup> = S<sub>11</sub> V<sub>1</sub> <sup>+</sup> + S<sub>12</sub> V<sub>2</sub> <sup>+</sup>
<br>V<sub>2</sub> <sup>-</sup> = S<sub>21</sub> V<sub>1</sub> <sup>+</sup> + S<sub>22</sub> V<sub>2</sub> <sup>+</sup>
<br>How can we incorporate the short circuit load into these equations? Start with TLs connected to both ports as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image9.gif"></sub>
<br>From this circuit, we see that
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image10.gif"></sub>
<br>It is critical to realize this definition for T<sub>L</sub> is the inverse of what you may have first thought, because of the assumed direction of the "incident” waves for S parameters: which is always into the port. So, for a short circuit load, T<sub>L</sub> = - 1 =>  V<sub>2</sub> <sup>+</sup> = - V<sub>2</sub> <sup>-</sup> Using this result in (4) we find
<br>V<sub>1</sub> <sup>-</sup> = S<sub>11</sub> V<sub>1</sub> <sup>+</sup> + S<sub>12</sub> V<sub>2</sub> <sup>-</sup>
<br>V<sub>2</sub> <sup>-</sup> = S<sub>21</sub> V<sub>1</sub> <sup>+</sup> + S<sub>22</sub> V<sub>2</sub> <sup>-</sup>
<br>Our desired result is the input reflection coefficient T =V V<sub>1</sub> <sup>-</sup> /V<sub>1</sub> <sup>+</sup> .Rearranging (6), we obtain
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image11.gif"></sub>
<br>Substituting this into (5) yields
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image12.gif"></sub>
<br>So that 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image13.gif"></sub>
<br>This is the input reflection coefficient expression for a two-port terminated in a short circuit. Substituting the numerical values for the S parameters in (3) we find T = 0.633, so that RL = -20log<sub>10</sub> T = 3.97 dB. 
<br>Again, it is crucial to realize that the input reflection coefficient of a two-port network is generally not S<sub>11</sub> ! In the above example, S<sub>11</sub> = 0.1 while T = 0.633. Remember that T<sub>11</sub> = S only when all other ports are terminated in matched loads. By similar reasoning, S<sub>ij</sub> = T<sub>ij</sub> , i &#8800; j , is valid only when all ports are matched. As we vary load or source impedances connected to a two-port network, the S parameters do not change. However, the reflection and transmission coefficients will generally change. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_the_scattering_matrix.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_the_scattering_matrix.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image14.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_the_scattering_matrix.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_the_scattering_matrix/image15.wmf"></sub>
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
