<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="S_Parameters_and_Time_Average.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.S_Parameters_and_Time_Average" %>
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
	<b>S Parameters and Time Average Power Generalized S Parameters</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>S Parameters and Time Average Power. Generalized S Parameters.</b>
<br>There are two remaining topics concerning S parameters we will cover in this lecture. The first is an important relationship between S parameters and relative time average power flow. The second topic is generalized scattering parameters, which are required if the port characteristic impedances are unequal. 
<br><b>S Parameters and Time Average Power</b>
<br>There is a simple and very important relationship between S parameters and relative time average power flow. To see this, consider a generic two-port connected to a TL circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image1.gif"></sub>
<br>By definition, 
<br>V<sub>1</sub><sup>-</sup> = S<sub>11</sub> V <sub>1</sub><sup>+</sup> + S <sub>12</sub> V<sub>1</sub><sup>+</sup>
<br>V<sub>2</sub><sup>-</sup> = S<sub>21</sub> V<sub>1</sub><sup>+</sup> + S <sub>22</sub>V<sub>2</sub><sup>+</sup>
<br>At port 1, the total voltage is
<br>V<sub>1</sub> =V<sub>1</sub><sup>+</sup> + V <sub>1</sub><sup>-</sup>
<br>and the total time average power at that port is comprised of the two terms (see 2.37): 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image2.gif"></sub>
<br>Further, since port 2 is matched the total voltage there is
<br>V<sub>2</sub>|<sub>v2</sub><sup>+</sup><sub>=0</sub> = V<sub>2</sub><sup>-</sup>
<br>Consequently, for this circuit the transmitted power is
<br>P<sub>trans</sub>|<sub>v2</sub><sup>+</sup><sub>=0</sub> = |V<sub>2</sub><sup>-</sup>|<sup>2</sup> / 2z<sub>0</sub>
<br>Using the results from (4), (5), and (7), we will consider ratios of these time average power quantities at each port and relate these ratios to the S parameters of the network. 
<br>. At Port 1. Using (4) and (5), the ratio of reflected and incident time average power is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image3.gif"></sub>
<br>From (1) and noticing port 2 is matched so that
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image4.gif"></sub>
<br>This result teaches us that the relative reflected time average power at port 1 equals | S<sub>11</sub>|<sup>2</sup> when port 2 is matched. 
<br>. At Port 2. Using (7) and (4), the ratio of transmitted and incident time average power is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image5.gif"></sub>
<br>However, from (2) and with V<sub>2</sub><sup>+</sup> = 0, then
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image6.gif"></sub>
<br>This result states that the relative transmitted power to port 2 equals |S<sub>21</sub>|<sup>2</sup> when port 2 is matched. Equations (9) and (11) provide an extremely useful physical interpretation of the S parameters as ratios of time average power. Note that this interpretation is valid regardless of the loss (or even gain) of the network. However, if the network is lossless we can use (9) and (11) to develop other very useful relationships. Recall that for a lossless network, 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image7.gif"></sub>
<br>must be unitary. As a direct result of this
<br>S<sub>11</sub> S<sub>11</sub><sup>*</sup> + S<sub>21</sub> S<sub>21</sub><sup>*</sup> = 1 or |S<sub>11</sub>|<sup>2</sup> + | S<sub>21</sub>|<sup>2</sup> = 1 
<br>And 
<br>S<sub>12</sub> S<sub>12</sub><sup>*</sup> + S<sub>22</sub> S<sub>22</sub><sup>*</sup> = 1 or |S<sub>22</sub>|<sup>2</sup> + | S<sub>12</sub>|<sup>2</sup> = 1
<br>These equations are valid for all lossless two-ports. Furthermore, in the circuit above with port 2 matched, we can additionally interpret (12a) as a conservation of power statement for the network, based on (9) and (11). If port 2 is not matched, (12a) is still valid, of course, but it is no longer a conservation of power statement for the network. Tricky! 
<br>Lastly, since [S] is unitary, then
<br>S<sub>11</sub> S<sub>12</sub><sup>*</sup> + S<sub>21</sub> S<sub>22</sub><sup>*</sup> = 0 
<br>which doesn't appear to have a time average power interpretation. Can you devise a physical interpretation of ? 
<br><b>Generalized Scattering Parameters</b>
<br>If the characteristic impedances are different for some ports the network is connected, it becomes necessary to redefine the scattering parameters so that |S<sub>ij</sub>|<sup>2</sup> still relates to relative time average power flow. 
<br>For example, if Z<sub>0,1</sub> &#8800;Z<sub>0,2</sub> in this circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image8.gif"></sub>
<br>then with port 2 matched the incident, reflected and transmitted time average power are, respectively, 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image9.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image10.gif"></sub>
<br>Consequently, 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image11.gif"></sub>
<br>which is a familiar result. However, 
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image12.gif"></sub>
<br>is not familiar. To preserve the very useful interpretation of |S<sub>ij</sub>|<sup>2</sup> as a relativetime average power flow, we need to redefine the S parameters when the port impedances are not equal. For example, from
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image13.gif"></sub>
<br>would preserve this interpretation. This redefinition leads to the so-called generalized S parameters. The "wave amplitude” towards port n is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image14.gif"></sub>
<br>while the "wave amplitude” away from this port is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image15.gif"></sub>
<br>As shown in text (pp. 181-182) 
<br>[b] = [s] . [a] 
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image16.gif"></sub>
<br>These S<sub>ij</sub> are the generalized scattering parameters. They reduce to the "regular” S parameters when all port impedances are equal. If we substitute and note that we recover if i &#8800; j and we recover if i = j . Consequently, we can interpret the generalized scattering parameters of terms of relative reflected time average power flows. Lastly, at the terminal plane for port n with characteristic impedance Z<sub>0,n</sub> , we know that the total voltage is
<br>V<sub>n</sub> =V<sub>n</sub><sup>+</sup> +V<sub>n</sub><sup>-</sup>
<br>while the current is
<br>I<sub>n</sub> = 1/ z<sub>0,n</sub> [V<sub>n</sub><sup>+</sup> =V<sub>n</sub><sup>-</sup>]
<br>Using it can be shown that
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image17.gif"></sub>
<br>We will not be using a<sub>n</sub>, b<sub>n</sub> or generalized scattering parameters very much in this course. This topic is mentioned primarily to reinforce the relationship of S parameters to relative time average power and to present the "wave amplitudes” a<sub>n</sub> and b<sub>n</sub>, which appear widely in the literature. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_time_average.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_time_average.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/s_parameters_and_time_average.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_s_parameters_and_time_average/image19.wmf"></sub>
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
