<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Time_Domain_Solutions_to_TL_Wave_Equations.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Time_Domain_Solutions_to_TL_Wave_Equations" %>
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
	<b>Time Domain Solutions to TL Wave Equations</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Time Domain Solutions to TL Wave Equations.</b>
<br>The second-order PDEs in (9) and (10) of the last lecture are complicated. These equations are called wave equations since, as we will see in this lecture, their solutions are waves. 
<br><b>Voltage Wave Equation Solutions</b>
<br>Consider again the voltage equation
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image1.gif"></sub>
<br>We will define
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image2.gif"></sub>
<br>So that
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image3.gif"></sub>
<br>There are two general solutions to 
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image4.gif"></sub>1 
<br>V + is any function that contains t, z, and u in it in the form of the argument shown. It can be verified that (3) is a solution to (2) by substituting (3) into (2) and showing that the LHS equals the RHS. Equation (3) represents a wave traveling in the +z direction with speed u =1under root&mu; lc m/s. To see this, consider the example below with &mu; = 1 m/s: 
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image5.gif"></sub>
<br>At t = 1 s, focus on the peak located at z = 1.5 m. Then, 
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image6.gif"></sub>
<br>The argument s+ stays constant for varying t and z. Therefore, at t = 2 s, for example, then
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image7.gif"></sub>
<br>Therefore, 
<br>z = 2.5 m
<br>So the peak has now moved to position z = 2.5 m at t = 2 s. Likewise, every point on this function moves the same distance (1 m) in this time (1 s). This is called wave motion. The speed of this movement is
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image8.gif"></sub>
<br>2
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image9.gif"></sub>
<br>This is the second general solution to (2). This function V - represents a wave moving in the -z direction with speed u. The complete solution to the wave equation (2) is the sum of 
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image10.gif"></sub>
<br>V<sup>+</sup> + and V<sup>- - can be any (suitable differentiable) functions, but with the arguments as shown. </sup><sup>
<br></sup><b><sup>Current Wave Equation Solutions</b></sup><sup>
<br>A similar analysis can be performed for the current on the TL. From equation (10) in the previous lecture</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image11.gif"></sub></sup><sup>
<br>The complete general solution to this current wave equation can be determined in a manner similar to above as</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image12.gif"></sub></sup><sup>
<br>However, the function I+ + can be related to the function V+ + , and I -- can be related to V- - . For example, substituting I+( + (t-- z /</sup><sup>&mu;</sup><sup>)) and V ++( (t-- z / </sup><sup>&mu;</sup><sup>)) into equation (6) from the last lecture: </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image13.gif"></sub></sup><sup>
<br>(which is one of the telegrapher's equations), then differentiating wrt z and t and integrating wrt t- - z </sup><sup>&mu;</sup><sup> gives</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image14.gif"></sub></sup><sup>
<br>But</sup><sup>
<br>I ++ = ucV+</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image15.gif"></sub></sup><sup>+</sup><sup>
<br>We will define</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image16.gif"></sub></sup><sup>
<br>as the characteristic resistance of the transmission line with units of (Note that in many texts and reference books, R</sup><sub>c</sub><sup> is denoted as Z </sup><sub>0</sub><sup>, the characteristic impedance of the TL). With (9), (8) can be written as</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image17.gif"></sub></sup><sup>
<br>Similarly, it can be shown that</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image18.gif"></sub></sup><sup>
<br>The minus sign results since the current is in the -z direction. Finally, substituting (10) and (11) into (7) gives</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image19.gif"></sub></sup><sup>
<br>This equation as well as (5) </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image20.gif"></sub></sup><sup>
<br>are the general wave solutions for V and I on a transmission line. </sup><sup>
<br>Example N12.1: A semi-infinite TL is excited with a unit-step voltage source ( V</sup><sub>s</sub><sup>( t)=V</sup><sub>0</sub><sup> u(t) as shown below. Determine the voltage and current on the TL assuming the TL was initially "uncharged” (i.e., V = I = 0 everywhere). </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image21.gif"></sub></sup><sup>
<br>At t = 0, the source voltage jumps from 0 to V</sup><sub>0</sub><sup> volts. Voltage and current disturbances will then begin propagating down the TL at t = 0. Since there is no termination of the TL (semi-infinitely long), the voltage and current waves travel only in the +z direction. From (10), the ratio of this voltage to current amplitude is</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image22.gif"></sub></sup><sup>
<br>The equivalent circuit at the input for t </sup><sup>&#8805;</sup><sup> 0 is then</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image23.gif"></sub></sup><sup>
<br>Hence</sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image24.gif"></sub></sup><sup>
<br>These voltage and current disturbances propagate with speed u with no attenuation (lossless TLs): </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image25.gif"></sub></sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image26.gif"></sub></sup><sup>
<br></sup><sup>Remember that this transmission line is a model of the wave propagation for any geometry that supports a TEM wave. Consider, for example, an RG-58A/U coaxial cable where 53.5 c R</sup><sub>c</sub><sup>=53.5 beta and u = 69.5% (of c0). That is, u = 0.695. 2.998*108 = 2.084*108 m/s. In 1 ns, the leading edge propagates a distance L = u .10--9 = 20.8 cm. Is 1 ns an incredibly short time in electrical circuits? Not really. Consider a 1 GHz clock in a PC: </sup><sup>
<br></sup><sup><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image27.gif"></sub></sup>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
	<br>7253
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image28.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/time_domain_solutions_to_tl_wave_equations.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image30.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image30.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_time_domain_solutions_to_tl_wave_equations/image29.wmf"></sub>
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
