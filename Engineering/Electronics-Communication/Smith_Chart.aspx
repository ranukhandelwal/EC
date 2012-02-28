<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Smith_Chart.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Smith_Chart" %>
<%@ MasterType VirtualPath="~/Masters/emlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Smith Chart</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Smith Chart.</b>
<br>The Smith chart is a very useful graphical tool for the analysis of TLs. It was developed by Phillip H. Smith in the 1930s. The Smith chart remains a very useful tool today primarily to visualize the results of TL analysis, oftentimes combined with computer analysis and visualization. The development of the Smith chart is based on the normalized TL impedance z  Z ( z) Z<sub>0 </sub>. To avoid confusion between the lower case z's (one being normalized impedance and the other the position on the TL), we will define a new positional variable d  - -z : 
<br>
<br>(There is nothing fundamentally important about this change of positional variable. It was done only for convenience.) The voltage and current anywhere on the TL in terms of d are then
<br>
<br>where the and the generalized reflection coefficient now reads T(d)=T<sub>L</sub>e<sup>-j</sup><sup>&beta;</sup><sup>d </sup>So, with this new coordinate variable d the normalized TL impedance anywhere on the TL can be expressed in terms of the generalized reflection coefficient T(d ) as
<br>
<br>where Z (d ) =V (d ) / I (d ) is the TL impedance at position d. The real and imaginary parts of T(d ) will be defined as
<br>T(d ) = p + jq
<br>Substituting this definition into (4) gives
<br>
<br>Now, we will define z (d ) = r + jx and separate (6) into its real and imaginary parts
<br>
<br>Equating the real and imaginary parts of this equation gives
<br>
<br>Rearranging both of these leads us to the final two equations
<br>
<br><b>Construction of the Smith Chart</b>
<br>We will use (7) and (8) to construct the Smith chart. Definition: The Smith chart is a graphical plot of normalized TL resistance and reactance functions drawn in the complex, generalized reflection coefficient [T(d )] plane. To see this, first notice that in the p-q plane: 
<br>1. Equation (7) has only r as a parameter and (8) has only x as a parameter. 
<br>2. Both (7) and (8) are families of circles. Consequently, we can plot (7) and (8) in the p-q plane while keeping either r or x constant, as appropriate. 
<br>Plot (7) in the p-q plane: 
<br>
<br>Plots of these curves in the p-q plane are: 
<br>
<br>Plot (8) in the p-q plane: 
<br>
<br>
<br>Plots of these curves in the p-q plane are: 
<br>
<br>Combining both of these curves (or "mappings”) gives what is called the Smith chart: 
<br>
<br>
<br>The Smith chart is available in printed form from commercial suppliers. An example is shown on the next page. Note the scales at the bottom of the page. 
<br>
<br>Important Features of the Smith Chart
<br>
<br>From this result, we can show that if r &#8805; 0 then T(d ) &#8804;1. This condition is met for passive networks (i.e., no amplifiers) and lossless TLs (real Z<sub>0</sub> ). Consequently, the standard Smith chart only shows the inside of the unit circle in the p-q plane. That is, T(d ) &#8804;1 which is bounded by the r = 0 circle located described by p<sup>2</sup> + q<sup>2</sup>=1. 
<br>2. If z (d ) is purely real (i.e., x = 0) then because
<br>
<br>we deduce that q = 0 (except possibly at p = 1). Consequently, purely real z (d ) values are mapped to T(d ) values on the p = Re [T((d )] axis. 
<br>3. If z (d ) is purely imaginary (i.e., r = 0) then from (7) P<sup>2</sup> + q<sup>2</sup> = 1<sup>2</sup>
<br>which is the unit circle in the p-q plane. we deduce that q - 0 (except possibly at p = 1). Consequently, purely real z (d ) values are mapped to T(d ) values on the p = Re [T((d )] axis. 
<br>3. If z (d ) is purely imaginary (i.e., r = 0) then from (7) p2 + q2 =12 which is the unit circle in the p-q plane. Consequently, purely imaginary z (d ) values are mapped to T(d ) values on the unit circle in the p-q plane. 
<br>Example N21.1: Using the Smith chart, determine the voltage reflection coefficient at the load and the input impedance of the TL below. 
<br>
<br>
<br>Smith chart. 
<br>What is T<sub>L</sub> ? Read this directly from the Smith chart:  For L + 0.625&lambda; , what is Z<sub>in</sub> ? Rotate the vector towards generator. From Smith chart, read
<br>
<br><b>VSWR and the Smith Chart</b>
<br>It was shown a couple of lectures ago that the voltage magnitude anywhere on the TL can be written as Using the crank diagram, we found that (To help visualize this, the crank diagram has been redrawn on the Smith chart shown below.) However, when positioned along the TL at a voltage magnitude maximum then
<br>
<br>Using the definition of VSWR from the last lecture
<br>
<br>then comparing these last two equations we see that at a position along the TL where there is a voltage magnitude maximum, then
<br>( Z d = Z<sub>0</sub> VSWR
<br>Or
<br>z (d ) = VSWR
<br>Because of this result, we can read the VSWR of a TL directly from the Smith chart. Similarly, we can show that at a voltage magnitude minima
<br>
<br>In the previous example (Example N21.1), we can read VSWR = 2 directly from the Smith chart by drawing the constant VSWR circle. This is the circle traced by T(d ) as d varies. However, notice that depending on where we "stop” this rotation of T(d ) versus d, we obtain different z (d ) values. This happens because T(d ) is not traversing circles of constant r and/or x as d varies. 
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
<br><b>Discuss about MOSFET here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for MOSFET</b>
<br>You can discuss all your issues on MOSFET here</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>sir,
<br>plz send me the notes for fourier transforms its very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>Aug 31, 12:14:03 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>6815
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>Sir I want tutorial on Fourier Transform......... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;jainpooja.1989@yahoo.com</b> 
</td>

      
      <td class="txt">
	<br>Jul 15, 3:24:49 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7599
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>sir i want tutorial on fourier transform 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;apseng2005</b> 
</td>

      
      <td class="txt">
	<br>Jul 11, 10:08:19 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7459
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>heloo sir ,i want a tutorial for match filter.plz send it as soon as possible it is very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;richa</b> 
</td>

      
      <td class="txt">
	<br>Jun 4, 2:25:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>8706
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>I want lecture notes for single phase ac &amp; 3phase ac circuits 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;kalaivanisudhagar</b> 
</td>

      
      <td class="txt">
	<br>May 21, 11:32:46 AM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>13419
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>what is the work done to move a charge? derive an expression for assembling a configuration of point charges
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:28:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7500
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>i want lcr circiut teorems derivations 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:23:58 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7254
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>i want oscillator frequency derivations for all. plz let me know from where i can get that 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>May 4, 5:21:01 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7280
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>I've got a question in one of my revision papers,
<br>
<br>Explain the advantages of representing a transistor by means of an equivalent circuit circuit model
<br>
<br>The only thing i can remember is that you can take complex circuits and break them down into simpler circuits which are easier to understand, 
<br>
<br>Is this the only advantage or do you have any more?
<br>
<br>Please help! 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;ally79</b> 
</td>

      
      <td class="txt">
	<br>Apr 12, 6:33:57 PM
</td>

      
      <td class="txt">
	<br>2
</td>

      
      <td class="txt">
	<br>19090
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>I want to know the variation of reverse saturation current with the increase in temperature for both germanium and silicon diodes 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;bhrahma@yahoo.co.in</b> 
</td>

      
      <td class="txt">
	<br>Jan 28, 7:17:23 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>9453
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>analog and digital communication system, fiber optic communication, telecommunication technique and application, mobile communication 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;hirakec@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 17, 10:38:27 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>14002
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>I WANT A TUTORIAL FOR CMOS TRANSISTORS. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;maroofalamkhan</b> 
</td>

      
      <td class="txt">
	<br>Dec 14, 3:29:22 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>12726
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image1.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/smith_chart.aspx"></asp:HyperLink> 
<br>what about coaching 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;satish21</b> 
</td>

      
      <td class="txt">
	<br>Dec 7, 5:27:52 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>15258
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink15" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_smith_chart/image2.wmf"></sub>
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
