<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="The_Smith_Chart.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.The_Smith_Chart" %>
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
	<b>The Smith Chart</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>The Smith Chart</b>
<br>The Smith chart began its existence as a very useful graphical calculator for the analysis and design of TLs. It was developed by Phillip H. Smith in the 1930s. The Smith chart remains a useful tool today to visualize the results of TL analysis, oftentimes combined with computer analysis and visualization as an aid in design. The development of the Smith chart is based on the normalized TL impedance defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image1.gif"></sub>
<br>where Z(z)= V(z)/ I (z) is the total TL impedance at z and 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image2.gif"></sub>
<br>is the generalized reflection coefficient at z. The real and imaginary parts of the generalized reflection coefficient will be defined as Substituting this definition into (1) gives 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image3.gif"></sub>
<br>Now, we will define z (z) = r + jx and separate (3) into its real and imaginary parts
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image4.gif"></sub>
<br>Equating the real and imaginary parts of this last equation gives
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image5.gif"></sub>
<br>Rearranging both of these leads us to the final two equations
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image6.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image7.gif"></sub>
<br>We will use (4) and (5) to construct the Smith chart. Definition: The Smith chart is a plot of normalized TL resistance and reactance functions drawn in the complex, generalized reflection coefficient [T(z)] plane. To understand this, first notice that in the T<sub>r</sub> - T<sub>i</sub> plane: 
<br>1. Equation (4) has only r as a parameter and (5) has only x as a parameter. 
<br>2. Both (4) and (5) are families of circles. Consequently, we can plot (4) and (5) in the T<sub>r</sub>- T<sub>i</sub> plane while keeping either r or x constant, as appropriate. 
<br><b>Plot (4) in the </b><b>T</b><b><sub>r</b></sub><b> - T</b><b><sub>i</b></sub><b> plane</b><b>:</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image8.gif"></sub>
<br>Plot these curves in the T<sub>r</sub> - T<sub>i</sub>plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image9.gif"></sub>
<br><b>Plot (5) in the </b><b>T</b><b><sub>r</b></sub><b> - T</b><b><sub>i</b></sub><b> plane: </b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image10.gif"></sub>
<br>Plot these curves in the T<sub>r</sub> - T<sub>i</sub>plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image11.gif"></sub>
<br>Combining both of these curves (or "mappings”), as shown on the next page, gives what is called the Smith chart. As quoted from the text (p. 65): "The real utility of the Smith chart, however, lies in the fact that it can be used to convert from reflection coefficients to normalized impedances (or admittances), and vice versa, using the impedance (or admittance) circles printed on the chart.” Additionally, it is very easy to compute the generalized reflection coefficient and normalized impedance anywhere on a homogeneous section of TL. 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image12.gif"></sub>
<br>Notice that the T<sub>r</sub> and T<sub>i</sub> axes are missing from the "combined” plot. This is also the case for the Smith chart. 
<br><b>Important Features of the Smith Chart</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image13.gif"></sub>
<br>From this result, we can show that if r &#8804; 0 then T(z) &#8805; 1. This condition is met for passive networks (i.e., no amplifiers) and lossless TLs (real Z<sub>0</sub> ). Consequently, the standard Smith chart only shows the inside of the unit circle in the T<sub>r</sub> - T<sub>i</sub> plane. That is, T(z) &#8805; 1 which is bounded by the r = 0 circle described by T<sub>r2</sub> + T<sub>i2</sub> = 1. 
<br>2. If z(z) is purely real (i.e., x = 0), then since
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image14.gif"></sub>
<br>we deduce that T<sub>r</sub>= 0 (except possibly at T<sub>r</sub> =1 ). Consequently, purely real z (z) values are mapped to T(z)values on the T<sub>r</sub> =&xi; e [T(z)] axis. 
<br>3. If z(z) is purely imaginary (i.e., r = 0) then from (4) T<sub>r2</sub>+ T<sub>i2</sub> =2 which is the unit circle in the T<sub>r</sub>- T<sub>i</sub> plane. Consequently, purely imaginary z (z) values are mapped to T(z) values on the unit circle in the T<sub>r</sub>- T<sub>i</sub> plane. 
<br>Example N6.1: Using the Smith chart, determine the voltage reflection coefficient at the load and the TL input impedance. 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image15.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image16.gif"></sub>
<br><b>VSWR and the Smith Chart</b>
<br>It was shown in the previous lecture that the voltage magnitude anywhere on the TL can be written as As derived in the text (Section 2.3) 
<br>|V(z)|<sub>max</sub> = |V<sub>0</sub><sup> +</sup>|| 1 + T<sub>L</sub> (z)| 
<br>and 
<br>|V(z)|<sub>min</sub> = |V<sub>0</sub><sup> +</sup>|| 1 - T<sub>L</sub> (z)| 
<br>So, when positioned along the TL at a maximum voltage magnitude: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image17.gif"></sub>
<br>Using the definition of VSWR from the last lecture
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image18.gif"></sub>
<br>then from (7) at a voltage magnitude maximum on the TL 
<br>Z (z) = Z<sub>0</sub> .VSWR
<br>Z(z) = Z<sub>0</sub> .VSWR
<br>Because of this last result, we can read the VSWR of a TL directly from the Smith chart. Similarly, we can show that at a minimum voltage magnitude
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image19.gif"></sub>
<br>In the previous example, we can read VSWR=2 directly from the Smith chart by drawing the constant VSWR circle. This is the circle traced by T(z) as z varies. However, notice that depending on where we "stop” this rotation of T(z) versus z, we obtain different z (z) values. This happens because T(z) is not traversing circles of constant r and/or x as z varies. 
<br><b>Smith Admittance Chart</b>
<br>The Smith chart can be used as an admittance chart as well as an impedance chart. To see this, recall that we derived the mapping upon which the Smith chart is based [ z (z)  T(z)] from the normalized TL Impedance
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image20.gif"></sub>
<br>From this, we can express the normalized TL admittance as
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image21.gif"></sub>
<br>We can repeat the construction of the Smith chart with y = g + jb and T = T<sub>r</sub> + jT<sub>i</sub> , as we did originally for the impedance chart. Substituting these quantities into (11) we find 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image22.gif"></sub>
<br>A Smith admittance chart can be constructed based on these two equations for circles in the complex T(z) plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image23.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image24.gif"></sub>
<br>This Smith admittance chart looks very similar to the Smith impedance chart. In fact, if we rotated one 180&#176; we obtain the other. This is actually an easily proved result. Consider the definition of the negative generalized reflection coefficient from 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image25.gif"></sub>
<br>That is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image26.gif"></sub>
<br>If we now substitute (14) into (11) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image27.gif"></sub>
<br>But what is z + &lambda;/ 4 It's a half rotation around the Smith chart. 
<br><b>Discussion</b>
<br>From (13) we can deduce that: 
<br>1. If z(z) is known, then y(z) is the point on the constant VSWR circle that is diametrically opposite the z(z) point on the Smith chart. (In this context, remember that a QWT is an impedance inverter device.) 
<br>2. The Smith chart can be used either as an impedance chart or as an admittance chart. Rather than keeping these two types of charts around, we can use one for either impedance or admittance calculations. The following example should help you understand this. 
<br>3. One subtlety with these mixed Smith charts is that generalized reflection coefficients are only correctly represented on impedance charts when plotting normalized impedances and on admittance charts when plotting normalized admittances. You'll read negative generalized reflection coefficients otherwise (for admittances on impedance charts and impedances on admittance charts). 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/the_smith_chart.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/the_smith_chart.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/the_smith_chart.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_smith_chart/image29.wmf"></sub>
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
