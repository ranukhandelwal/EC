<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Overview_of_Pertinent_Electromagnetics.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Overview_of_Pertinent_Electromagnetics" %>
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
	<b>Introduction Overview of Pertinent Electromagnetics</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Introduction Overview of Pertinent Electromagnetics.</b>
<br>In this microwave engineering course, we will focus primarily on electrical circuits operating at frequencies of 1 GHz and higher. In terms of band designations, we will be working with circuits above UHF: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image1.gif"></sub>
<br>RF, microwave and millimeter wave circuit design and construction is far more complicated than low frequency work. So why do it? 
<br>Advantages of microwave circuits: 
<br>1. The gain of certain antennas increases (with reference to an isotropic radiator) with its electrical size. Therefore, one can construct high gain antennas at microwave frequencies that are physically small. (DBS, for example.) 
<br>2. More bandwidth. A 1% bandwidth, for example, provides more frequency range at microwave frequencies that at HF. 
<br>3. Microwave signals travel predominately by line of sight. Plus, they don't reflect off the ionosphere like HF signals do. Consequently, communication links between (and among) satellites and terrestrial stations are possible. 
<br>4. At microwave frequencies, the electromagnetic properties of many materials are changing with frequency. This is due to molecular, atomic and nuclear resonances. This behavior is useful for remote sensing and other applications. 
<br>5. There is much less background noise at microwave frequencies than at RF. 
<br>Examples of commercial products involving microwave circuits include wireless data networks [Bluetooth, WiFi (IEEE Standard 802.11), WiMax (IEEE Standard 802.16), ZigBee], GPS, cellular telephones, etc. Can you think of some others? 
<br><b>Difficulties</b>
<br>As was mentioned, microwave circuits are much more difficult to analyze than low frequency ones. Why? 
<br>1. Voltage is not well defined if the distance between the two points is not electrically small. At microwave frequencies, "electrically large” distances may be just a few millimeters! Moving the probe leads around will also likely affect voltage measurements. 
<br>2. One must carefully choose lumped elements (L, C, R, diodes, transistors, etc.) for use in the microwave region. Typical low frequency components do not behave as expected. 
<br>3. To "transport” electrical signals from one position to another, one must use special "wires.” It is more common to speak of "guiding” signals at these frequencies. 
<br><b>Electromagnetism</b>
<br>Electricity is an electromagnetic (EM) phenomenon involving forces produced by stationary and moving charge. Low frequency circuits are generally very, very small wrt the smallest EM wavelength present in the circuit. Because of this, 
<br>simple lumped element circuit models can be used to describe the EM effects of resistors, inductors, capacitors, voltage and current sources, etc. 
<br>Conversely, at microwave frequencies the circuits may not be electrically small. This requires a shift in our approach to the EM analysis. Nevertheless, the electrical signals remain the outcome of EM phenomenon. Perhaps the two most important of the Maxwell equations are
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image2.gif"></sub>
<br>Much of our work in this course will be in the sinusoidal steady state. With an assumed (and suppressed) e<sub> j?t</sub> time convention, these curl equations become: 
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image3.gif"></sub>
<br>where E , B , D, H and J are all vector phasors. Of course, both the differential and integral forms are equally valid. Which of these to use depends on the problem: 
<br>&bull; To derive equations to solve for E and H , the differential forms are often better. 
<br>• For circuit approximations of devices (or other physical interpretations), the integral forms are often more useful. Rather than using the full-blown Maxwell's equations in microwave circuit design, approximations are often made to simplify the solutions. Transmission line theory, to be discussed next, is one of these. We will not explicitly be seeing Maxwell's equations much in this course. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image4.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/overview_of_pertinent_electromagnetics.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image4.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/overview_of_pertinent_electromagnetics.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image4.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/overview_of_pertinent_electromagnetics.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_overview_of_pertinent_electromagnetics/image5.wmf"></sub>
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
