<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Coupled_Line_and_Lange_Directional_Couplers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Coupled_Line_and_Lange_Directional_Couplers" %>
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
	<b>Coupled Line and Lange Directional Couplers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Coupled Line and Lange Directional Couplers.</b>
<br>These are the final two directional couplers we will consider. They are closely related and based on two TLs that interact with each other, but are not physically connected. 
<br><b>Coupled Line Directional Coupler</b>
<br>When two TLs are brought near each other, as shown in the figure below it is possible for power to be coupled from one TL to the other. 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image1.gif"></sub>.
<br>This can be a serious problem on PCBs where lands are close together and carry signals changing rapidly with time. EMC engineers face this situation in high speed digital circuits and in multiconductor TLs. for coupled line directional couplers, this coupling between TLs is a useful phenomenon and is the physical principle upon which the couplers are based. Consider the geometry shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image2.gif"></sub>
<br>When voltages are applied, charge distributions will be induced on all of the conductors. The voltages and total charges are related to each other through capacitance coefficients C<sub>ij</sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image3.gif"></sub>
<br>By definition (Q = CV ): 
<br>Q<sub>1</sub> = C<sub>11</sub> V<sub>1</sub> +C<sub>12</sub> V<sub>2</sub>
<br>Q<sub>2</sub> = C<sub>21</sub> V<sub>1</sub> +C<sub>22</sub> V<sub>2</sub>
<br>Where
<br>&bull; C<sub>11</sub> =capacitance of conductor 1 with conductor 2 present but grounded. 
<br>&bull; C<sub>22</sub> =capacitance of conductor 2 with conductor 1 present but grounded. 
<br>&bull; C<sub>12</sub> = mutual capacitance between conductors 1 and 2. (If the construction materials are reciprocal, then C<sub>21</sub> = C<sub>12</sub> .) 
<br>By computing only these capacitances and the quasi-TEM mode wave speed, we'll be able to analyze these coupled line problems. Why? Assuming TEM modes, then
<br>Z=(L/C)=( LC/C)=1/v<sub>p</sub>C 
<br>Notice that L doesn't appear here. Hence we only need v<sub>p</sub> and C, as conjectured. This is a widely used approach in all TL problems, not just microstrip or coupled lines. 
<br><b>Even-Odd Mode Characteristic Impedances</b>
<br>To simplify the problem analysis, we'll assume the two strips are identical and located on top of a dielectric. Because of the symmetry, we can use an even-odd mode solution approach. 
<br>&bull; Even mode. The voltages and currents are the same on both strips, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image4.gif"></sub>
<br>Hence, the electric field has even symmetry about the plane of symmetry (POS). This plane is called an "H-wall.” Notice that no E field lines from conductor 1 (2) terminate on conductor 2 (1). Consequently, the two halves are decoupled, as we expect. This leads us to the equivalent circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image5.gif"></sub>
<br>We define the effective capacitance to ground for either conductor in this configuration as
<br>C<sub>e</sub> = C<sub>11</sub> = C<sub>22</sub> 
<br>Then using (1) 
<br>Z<sub>0,e</sub> = 1/v<sub>p,e</sub>C<sub>e</sub>
<br>which is the characteristic impedance of either TL when both are operated in the even mode. This is called the even mode characteristic impedance. 
<br>&bull; Odd mode. The voltages and currents are opposite on each line as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image6.gif"></sub>
<br>Notice here that the electric field lines are perpendicular to the POS. Therefore, similar to image theory, we can consider the POS as an equipotential surface (or an "E wall”). That is, as a ground plane where V = 0. This approach leads to the equivalent capacitance circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image7.gif"></sub>
<br>The effective capacitance to ground of either conductor in this configuration is then
<br>C<sub>0</sub> =2C<sub>12</sub>|| C<sub>11</sub> = C<sub>11</sub> +2C<sub>12</sub>
<br>so that, from (1) 
<br>Z<sub>0,o</sub>=1/v<sub>p,o</sub>C<sub>o</sub>
<br>This is the odd mode characteristic impedance. It is the characteristic impedance seen when a voltage wave is launched on the structure with odd symmetry, as shown in The computation of C<sub>e</sub> and C<sub>o</sub> required in (3) and (5) is a bit involved. Alternatively, the text presents two examples of graphical design data for specific geometries. Fig 7.29 contains design data for striplines and for microstrips with &epsilon;<sub>r</sub>=10. 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image8.gif"></sub>
<br>Recall that striplines support pure TEM modes, while microstrips do not. To use the stripline design curves, scale the even and odd mode impedances upward by &epsilon;<sub>r</sub> , while the microstrip design curves apply only for&epsilon;<sub>r</sub>=10. 
<br><b>Even-Odd Mode Solution for Coupled Microstrip</b>
<br>A coupled line directional coupler (in stripline or microstrip) is show in. It is excited at port 1 and terminated with Z<sub>0</sub> at all ports. 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image9.gif"></sub>
<br>As mentioned earlier, we will apply an even-odd mode analysis for this coupler. Recall that in order to add these two solutions, both problems must have the same boundary conditions. That's why we terminate the TLs with Z<sub>0</sub> rather than Z<sub>0,e</sub> or Z<sub>0,o</sub> . The even and odd mode problems are shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image10.gif"></sub>
<br>By symmetry, we can deduce that for this even mode problem
<br>I<sup>e</sup><sub>3</sub> = I<sup>e</sup><sub>1</sub> , I<sup>e</sup><sub>4</sub> = I<sup>e</sup><sub>2</sub>
<br>V<sup>e</sup><sub>3</sub> = V<sup>e</sup><sub>1</sub> , V<sup>e</sup><sub>4</sub> = V<sup>e</sup><sub>2</sub>
<br>while for the odd
<br>I<sup>0</sup><sub>3</sub> = I<sup>0</sup><sub>1</sub> , I<sup>0</sup><sub>4</sub> = I<sup>0</sup><sub>2</sub>
<br>V<sup>0</sup><sub>3</sub> = V<sup>0</sup><sub>1</sub> , V<sup>0</sup><sub>4</sub> = V<sup>0</sup><sub>2</sub>
<br>By definition, 
<br>Z<sub>in</sub> = (V<sub>1</sub>/I<sub>1</sub>) ={(V<sub>1</sub><sup>e</sup> + V<sub>1</sub><sup>0</sup>) / I<sub>1</sub><sup>e</sup> +I<sub>1</sub><sup>0</sup>)}
<br>These TL problems are simple and easy to solve. As shown in the text, by choosing
<br>Z<sub>0</sub> = Z<sub>0,e</sub> Z<sub>0,o</sub>
<br>leads to
<br>Z<sub>in</sub> =Z<sub>0</sub>
<br>That is, with (9) then port 1 is matched and given the symmetry of the structure, all ports will then be matched! As shown in the text, 
<br>V<sub>1</sub> =V
<br>1-C<sup>2</sup>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image11.gif"></sub>
<br>where &theta;=&beta; l is the electrical length and
<br>C=(Z<sub>0,e</sub>-Z<sub>0,o</sub>)/(Z<sub>o,e</sub>+Z<sub>0,o</sub>)
<br>is the voltage coupling coefficient. (Here, "C” stands for "coupling,” not "capacitance.”) 
<br>Typical plots of |V<sub>2</sub>/V|<sup>2</sup> and |V<sub>3</sub>/V|<sup>2</sup> are shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image12.gif"></sub>
<br>Notice from these plots that we can maximize |V<sub>3</sub>/ V|<sup>2</sup> and simultaneously minimize |V<sub>2</sub>/V|<sup>2</sup> when &theta; =&pi;/2,3&pi;/2,... so that l =&lambda;/4, 3/4,.... In these cases, (11)-(14) become
<br>V<sub>1</sub>= V
<br>V<sub>2</sub>= -jV1-C<sup>2</sup> V<sub>3</sub>= CV
<br>V<sub>4</sub>= 0
<br>Lastly, it can be easily shown that power is conserved, which is a valuable check of the analysis. 
<br>Example N28.1 (Similar to text example 7.7). Design a 20-dB, single section, coupled line directional coupler using stripline. 
<br>Assume a 0.158-cm ground plane separation, &epsilon;<sub>r</sub>= 2.56 , Z<sub>0</sub> = 50 ohm and a center frequency of 3 GHz. 
<br>From (17), C =V<sub>3</sub>/V is the coupling coefficient, which must be less than one for a passive device. In this case, -20 =20log<sub>10</sub> C =>  C = 0.1
<br>Next, we need to determine Z<sub>o,e</sub> and Z<sub>0,o</sub> . From (9) and (15), 
<br>Z<sub>0,e</sub>=Z<sub>0</sub>(1+C)/(1-C) =50(1.1/0.9)=55.28 ohm 
<br>And
<br>Z<sub>0,e</sub>=Z<sub>0</sub>(1-C)/(1+C) =50(0.9/1.1)=45.23 ohm 
<br>These values can be used in to determine W and S for the stripline dimensions. With &epsilon;<sub>r</sub> =2.56, then
<br>&epsilon;<sub>r</sub> Z<sub>0,e</sub> = 88.4 ohm and &epsilon;<sub>r</sub> Z<sub>0,o</sub> = 72.4 ohm Using these values in Fig 7.29 we find
<br>W/b &#87760.72 and S/b &#87760.34
<br>Given that b = 0.158 cm, then
<br>W = 0.114 cm and S = 0.054 cm. 
<br>This value for S is rather small and may lead to fabrication difficulties with basic milling machines. The coupling and directivity for this coupled line directional coupler computed by a CAD package are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image13.gif"></sub>
<br><b>Lange Coupler</b>
<br>This device is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image14.gif"></sub>
<br>This is one method for obtaining higher coupling coefficients (up to approximately 2-3 dB or so) than what is possible with regular coupled line directional couplers. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/coupled_line_and_lange_directional_couplers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/coupled_line_and_lange_directional_couplers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/coupled_line_and_lange_directional_couplers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_coupled_line_and_lange_directional_couplers/image16.wmf"></sub>
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
