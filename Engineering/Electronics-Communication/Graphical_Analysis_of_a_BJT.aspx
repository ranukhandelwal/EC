<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="Graphical_Analysis_of_a_BJT.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Graphical_Analysis_of_a_BJT" %>
<%@ MasterType VirtualPath="~/Masters/bjtlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Graphical Analysis of a BJT</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We can use graphical analysis to approximately analyze the response of simple transistor amplifier circuits. This technique is primarily useful to develop physical insight. Consider once again the "conceptual BJT amplifier” circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image1.jpeg"></sub>
<br>Similar to the analytical solution, there are two primary steps to the graphical solution of such small-signal amplifiers: 
<br>1. DC basis analysis
<br>2. AC small-signal analysis. 
<br><b>DC Bias</b>
<br>The first step in the bias calculations is to determine IB. This is done with the iB-vBE characteristic curve and the load line: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image2.jpeg"></sub>
<br>Once IB has been determined we can compute IC knowing that I<sub>c</sub>=b I<sub>B</sub> for a BJT in the active mode. With this IC value and the iC-vCE characteristic curve of the transistor, we can determine V We haven't yet seen the iC-vCE characteristic curve of the BJT. This can be measured using the circuit in Fig. 5.19(a) below. v<sub>BE</sub>is fixed at some value, then vCE is swept while measuring iC. The results are shown below for different values of v<sub>BE</sub>.
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image3.jpeg"></sub>
<br>When vCE is very small, iC is nearly zero. This is the cutoff mode of the BJT. As vCE increases, the CBJ is forward biased and the BJT is in the saturation mode. When vCE becomes large enough, the CBJ becomes reversed biased and the BJT enters the active mode. The slopes of the lines in Fig. 5.19 in the active mode are quite exaggerated in this figure. So, back to the graphical solution. With the I<sub>C</sub>=bI<sub>B</sub> value from Fig. 5.28 and the iC-vCE characteristic curve of the transistor from Fig. 5.19, we can determine VCE: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image4.jpeg"></sub>
<br>Curve tracers are pieces of equipment that will measure and display families of iC-vCE characteristic curves for transistors. 
<br><b>AC Small-Signal Analysis</b>
<br>The first step in the AC small-signal analysis is to determine ib. This is performed using a slightly complicated interaction of the input waveform vi, the subsequent time variation of the load line, and the iB-vBE characteristic curve of the BJT: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image5.jpeg"></sub>
<br>From this comes the small-signal quantities vbe and ib. With i<sub>b</sub> known and i<sub>c</sub>=bi<sub>B</sub> , then we use these values on the v<sub>ic</sub> characteristic curve to determine vce: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image6.jpeg"></sub>
<br><b>Cutoff and Saturation</b>
<br>Notice that there are limits on vCE in which the BJT remains in the active mode: 
<br>&bull; Too large ( CC V = ) and the BJT cuts off
<br>&bull; Too small (few tenths of a volt) and the transistor 
<br>saturates. These limits are readily apparent if we reexamine the previous figure of the small-signal variation: 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image7.jpeg"></sub>
<br>Because of these limits on vCE, it is important to choose the Q point properly to all for the desired swing in the signal voltage (vce). 
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image8.jpeg"></sub>
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
<br><b>Discuss about BJT here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for BJT</b>
<br>Discuss all your issues or difficulties on BJT</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/graphical_analysis_of_a_bjt.aspx"></asp:HyperLink> 
<br>I want do to this 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;socheat</b> 
</td>

      
      <td class="txt">
	<br>Jul 1, 7:35:08 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2399
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/graphical_analysis_of_a_bjt.aspx"></asp:HyperLink> 
<br>preparation for drdo 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;rinkumathur.1988</b> 
</td>

      
      <td class="txt">
	<br>Oct 16, 2:00:04 PM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>2745
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/graphical_analysis_of_a_bjt.aspx"></asp:HyperLink> 
<br>Its operation and manufacturing. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;dharmendra608@yahoo.in</b> 
</td>

      
      <td class="txt">
	<br>Apr 16, 6:54:20 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2607
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/graphical_analysis_of_a_bjt.aspx"></asp:HyperLink> 
<br>sssssssssssssssss 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;sunilkumarmishra88</b> 
</td>

      
      <td class="txt">
	<br>Dec 2, 4:03:32 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2866
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_graphical_analysis_of_a_bjt/image10.wmf"></sub>
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
