<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Quadrature_90_Hybrid.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Quadrature_90_Hybrid" %>
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
	<b>Quadrature 90 Hybrid </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Quadrature (90 </b><b></b><b>) Hybrid.</b>
<br>Back in Lecture 23, we began our discussion of dividers and couplers by considering important general properties of three and four-port networks. This was followed by an analysis of three types of three-port networks in Lectures 24 and 25. we will now move on to (reciprocal) directional couplers, which are four-port networks. As in the text, we will consider these specific types of directional couplers: 
<br>1. Quadrature (90 ) Hybrid, 
<br>2. 180  Hybrid, 
<br>3. Coupled Line, and
<br>4. Lange Coupler. 
<br>We will begin with the quadrature (90 ) hybrid. Shows this coupler implemented with microstrip as a 1:1 power divider: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image1.gif"></sub>
<br>Because of symmetry, we can simplify the analysis of this circuit considerably using even-odd mode analysis. This process is similar to what we did in the last lecture with the Wilkinson power divider. 
<br><b>Even-Odd Mode Analysis of the Quadrature Hybrid</b>
<br>The normalized (wrt Z<sub>0</sub> ) TL circuit is shown in minus the return lines: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image2.gif"></sub>
<br>A symmetric (even mode) excitation of this circuit is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image3.gif"></sub>
<br>and an anti-symmetric (odd mode) excitation is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image4.gif"></sub>
<br>Observe that the circuit and its boundary conditions remain the same in both the even and odd mode configurations. It is only the excitation that changes. Because of this and the circuit being linear, the total solution is simply the sum of the even and odd mode solutions. each solution (even and odd) is simpler to determine than the complete circuit, which is why we employ this technique. 
<br>&bull; Even mode. Because the voltages and currents must be the same above and below the line of symmetry (LOS) in then I = 0 at the LOS =>  open circuit loads at the ends of &lambda;/8 stubs, as shown. 
<br>Referring to the definition of B<sub>i</sub> (i =1,...,4) in we can write from that for the even mode excitation: 
<br>B<sup>e</sup><sub>1</sub> = &tau;<sub>e</sub> A<sup>e</sup><sub>1</sub> , B<sup>e</sup><sub>2</sub> = T<sub>e</sub> A<sup>e</sup><sub>1</sub> 
<br>B<sup>e</sup><sub>3</sub> = B<sup>e</sup><sub>2</sub> = T<sub>e</sub> A<sup>e</sup><sub>1</sub> , B<sup>e</sup><sub>4</sub> = B<sup>e</sup><sub>1</sub> =&tau;<sub>e</sub> A<sup>e</sup><sub>1</sub> 
<br>where A<sup>e</sup><sub>1</sub> =1/2, and &tau;<sub>e</sub> and T<sub>e</sub> are the reflection and transmission coefficients for the even mode configuration. 
<br>&bull; Odd mode. Because the voltages and currents must have opposite values above and below the LOS in then V = 0 along the LOS =>  short circuit loads at the ends of &lambda;/8 stubs, as shown. 
<br>B<sup>0</sup><sub>1</sub> = &tau;<sub>0</sub> A<sup>0</sup><sub>1</sub> , B<sup>0</sup><sub>2</sub> = T<sub>0</sub> A<sup>0</sup><sub>1</sub>
<br>Then, 
<br>B<sup>0</sup><sub>3</sub> =-B<sup>0</sup><sub>2</sub> =-T<sub>0</sub> A<sup>0</sup><sub>1</sub>; B<sup>0</sup><sub>4</sub> =-B<sup>0</sup><sub>1</sub> =-&tau;<sub>0</sub>A<sup>0</sup><sub>1</sub>
<br>where A<sup>o</sup><sub>1</sub> =1/2 and &tau;<sub>0</sub> and T<sub>0</sub> are reflection and transmission coefficients for the odd mode configuration. 
<br>&bull; Total solution. The total solution is the sum of the voltages in both circuits. From this fact, we can deduce that the total B<sub>i</sub> coefficients will be the sum of (1) and (2): 
<br>B<sub>1</sub> =B<sup>e</sup><sub>1</sub> +B<sup>0</sup><sub>1</sub> =(1/2) &tau;<sub>e</sub> +(1/2) &tau;<sub>0</sub>
<br>B&lt;SUB2&lt; sub&gt; =B<sup>e</sup><sub>2</sub> +B<sup>0</sup><sub>2</sub> =(1/2)T<sub>e</sub> +(1/2)T<sub>0</sub>
<br>B&lt;SUB3&lt; sub&gt; =B<sup>e</sup><sub>3</sub> +B<sup>0</sup><sub>3</sub> =(1/2)T<sub>e</sub> +(1/2)T<sub>0</sub>
<br>B<sub>4</sub> =B<sup>e</sup><sub>4</sub> +B<sup>0</sup><sub>4</sub> =(1/2) &tau;<sub>e</sub> +(1/2) &tau;<sub>0</sub>
<br>
<br>Likewise, the incident wave coefficients are
<br>A<sub>1</sub> =A<sup>e</sup><sub>1</sub>+ A<sup>0</sup><sub>1</sub> =1/2+1/2 =1
<br>A<sub>4</sub> =A<sup>e</sup><sub>4</sub>+ A<sup>0</sup><sub>4</sub> =1/2-1/2 =0
<br>These match the assumed excitation in the original circuit on
<br>p. 2. To finish the calculation of the S parameters for the quadrature hybrid, we need to determine the reflection and transmission coefficients for the even- and odd-mode configurations. Your text shows that the solutions for &tau;<sub>e</sub> and T<sub>e</sub> are
<br>&tau;<sub>e</sub> =0 and T<sub>e</sub> -1/(1+j) 
<br>Here we'll derive solutions for &tau;<sub>0</sub> and T<sub>0</sub> .From
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image5.gif"></sub>
<br>We have three cascaded elements, so we'll use ABCD parameters to solve for the overall S parameters of this circuit. 
<br>. Elements 1 and 3. These are short circuit stubs of length &lambda;/8, which appear as the shunt impedance
<br>Z<sub>in</sub>=jZ<sub>0</sub> tan&beta;l where &beta;l =(2&pi;/&lambda;).(/8)= &pi;/4) 
<br>There fore
<br>Z<sub>in</sub>/Z<sub>0</sub> =j,or Y<sub>N</sub> =-j
<br>From the inside flap of your text: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image6.gif"></sub>
<br>. Element 2. This is a &lambda;/4-length of TL where
<br>&beta;l =(2&pi;/&lambda;).(&pi;/4) =(&pi;/2) 
<br>From the inside flap of your text: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image7.gif"></sub>
<br>Cascading these three ABCD matrices we find the overall ABCD matrix for odd mode excitation: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image8.gif"></sub>
<br>Using Table 4.2, we can convert these to S parameters: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image9.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image10.gif"></sub>
<br>=2(2/2+2j)= 2/1+j 
<br>Since the ports are matched, then: 
<br>&tau;<sub>0</sub> =S<sub>11</sub> =0 T<sub>0</sub> =S<sub>21</sub> =(2/1+j).(1-j/1-j)=1/2(1-j) 
<br>Finally, using (7), (8), (13) and (14) in (3)-(6) we find &bull; B<sub>1</sub> = 0
<br>. B<sub>2</sub> =-1/2 2(1+j)+1/2 2(1-j)=-j/ 2
<br>. B<sub>3</sub> =-1/2(1/ 2)(1+j)-(1/2 2)(1-j)=-1/ 2
<br>. B<sub>4</sub> =1/2 . 0 -1/2 .0 = 0
<br>When properly interpreted, these results tell us much about the circuit. In particular, when port 1 is excited and all other ports terminated in matched loads, then: 
<br>&bull; B<sub>1</sub> = 0 =>  port 1 is matched. 
<br>&bull; B<sub>2</sub> =-j2  -90  phase shift from port 1 to 2, and 1/2 of input power is delivered to port 2. 
<br>&bull; B<sub>3</sub> =-1/ 2 =>  -180  phase shift from port 1 to 3 (90  phase shift between ports 3 and 2), and one half of the input power is delivered to port 3. 
<br>&bull; B<sub>4</sub> = 0 =>  no power output to port 4. 
<br>Because of the high degree of symmetry, we can treat any port as the input port. Then, the isolation is the other port on the same "side” as the input and the outputs are the two ports on the other "side” of the circuit. 
<br>Employing this concept and the results above, we can construct the other three columns in the full S matrix for the quadrature (90 ) hybrid by simply transposing rows of the first column: 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image11.gif"></sub>
<br>That is, the first column in (19) is the results from (15)-(18) when the input was assumed at port 1. In the second column, we can directly deduce that the outputs are at ports 1 and 4, the input is at port 2 and the isolation is at port 4. Further transposition of the rows in column 1 produces columns 3 and 4. 
<br>Example N26.1. Design a branch line hybrid coupler using 100- ohm microstrip on 32-mil RO4003C for a center frequency of 2.5 GHz. Include the effects of copper and substrate losses. 
<br>Because there are two different characteristic impedances needed for the 90  hybrid device, two different widths of microstrip must be computed (because W/d depends on Z<sub>0</sub>) and two different &lambda;/4-lengths must be determined (because &epsilon;<sub>r,e</sub> depends on W/d). 
<br>&bull; Z<sub>0</sub> =100 ohm sections. Using LineCalc, W =18.02 mil and &epsilon;<sub>r,e</sub>= 2.424 The guide wavelength at this frequency is then
<br>&lambda;=c/f =(2.99810<sup>8</sup>)/(2.510<sup>9</sup>.2.424) =7.702 cm 
<br>Hence, this branch line coupler should have 100-ohm lines with length = &lambda;/4 =1.93 cm. 
<br>&bull; Z<sub>0</sub> 2 = 70.71 ohm sections. Using LineCalc, W = 39.62 mil and &epsilon;<sub>r,e</sub>=2.545. The guide wavelength is then
<br>&lambda;=c/f =(2.99810<sup>8</sup>)/(2.510<sup>9</sup>.2.545) =7.517 cm 
<br>Hence, this branch line coupler should have 70.71-ohm lines with length = &lambda; 4 =1.88 cm. The following S parameter results were obtained for this design using ADS. 
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image12.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image13.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image14.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image15.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/quadrature_90_hybrid.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/quadrature_90_hybrid.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/quadrature_90_hybrid.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_quadrature_90_hybrid/image18.wmf"></sub>
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
