<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="T-Junction_and_Resistive_Power_Dividers.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.T_Junction_and_Resistive_Power_Dividers" %>
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
	<b>T-Junction and Resistive Power Dividers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>T-Junction and Resistive Power Dividers.</b>
<br>The first class of three-port network we'll consider is the Tjunction power divider. We will look at lossless, nearly lossless and lossy dividers in this and the next lecture. A simple lossless T-junction network is shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image1.gif"></sub>
<br>There are two basic constraints we need to incorporate into this power splitter: 
<br>1. The feedline should be matched. 
<br>2. The input time average power Pin should be divided between ports 2 and 3 in a desired ratio. In the text, this ratio is defined as X:Y where: 
<br>. X/(X +Y )100% of the incident power is delivered to one output port, and
<br>. Y /(X +Y )100% of the incident power is delivered to the other. 
<br>For example: 
<br>. 1:1 means 50% of the incident time average power is delivered to each output port. 
<br>. 2:1 means 67% of the incident time average power is delivered to one output port and the remaining to the other. 
<br>Referring to the circuit above, in order to enforce the first constraint on the power splitter requires that
<br>Y<sub>in</sub>=(1/Z<sub>1</sub>)+(1/Z<sub>2</sub>)=(1/Z<sub>0</sub>)
<br>Consequently, to divide the incident power between the two output ports, we simply need to adjust the characteristic impedances of the two TLs. 
<br>Because port 1 is matched, the input time average power is simply: 
<br>P<sub>in</sub> =1/2 (|V<sub>0</sub>|<sup>2</sup>/Z<sub>0</sub>)
<br>where V<sub>0</sub> is the phasor voltage at the junction. The output powers can be computed similarly as
<br>P<sub>1</sub> =1/2 (|V<sub>0</sub>|<sup>2</sup>/Z<sub>1</sub>)
<br>And
<br>P<sub>2</sub> =1/2 (|V<sub>0</sub>|<sup>2</sup>/Z<sub>2</sub>)
<br>Dividing (3) and (4) by (2) we find
<br>P<sub>1</sub>/P<sub>in</sub> =(1/Z<sub>1</sub>)/(1/Z<sub>0</sub>)=Z<sub>0</sub>/Z<sub>1</sub> and P<sub>2</sub>/P<sub>in</sub> =(1/Z<sub>2</sub>)/(1/Z<sub>0</sub>)=Z<sub>0</sub>/Z<sub>2</sub> 
<br>Because the network is lossless: 
<br>P<sub>1</sub>/P<sub>in</sub> + P<sub>2</sub>/P<sub>in</sub>=1
<br>Substituting (5) and (6) into this expression gives
<br>Z<sub>0</sub>/Z<sub>1</sub>+ Z<sub>0</sub>/Z<sub>2</sub> = 1
<br>So that 
<br>1/Z<sub>1</sub> +1/Z<sub>2</sub> =1/Z<sub>0</sub>
<br>Consequently, not only have we split the power between the output ports, but in light of (1) we have also ensured that the feedline is matched. so, once we have specified the desired ratios for the output port powers, we can use (5) and (6) to compute the required characteristic impedances of these TLs: 
<br>Z<sub>1</sub>= {Z<sub>0</sub>/(P<sub>1</sub>/P<sub>in</sub>)}
<br>And
<br>Z<sub>2</sub>= {Z<sub>0</sub>/(P<sub>2</sub>/P<sub>in</sub>)}
<br>That's basically it for the design of a simple T-junction power divider. An example of this design process is given in Example 7.1 of the text, which we'll cover later. from a practical standpoint, there are two important points that arise with T-junction power splitters: 
<br>1. Junction effects. At the junction of the TLs, there is likely to be an accumulation of excess charge. Take a microstrip junction for example: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image2.gif"></sub>
<br>These charges attract oppositely-signed charges on the ground plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image3.gif"></sub>
<br>This time-varying electric field is a displacement current, of course. We can model this effect as a lumped capacitor connected to ground, as shown in 
<br>2. Characteristic impedance of the output lines. It is not too practical to have these Z<sub>1</sub> and Z<sub>2</sub> characteristic impedances in the system. We generally like to work with just one system impedance, Z<sub>0</sub>. To compensate for this, we can use QWTs for matching: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image4.gif"></sub>
<br>Using QWTs makes this power splitter narrow-banded, unfortunately. Here, instead of Z<sub>1</sub> and Z<sub>2</sub>, the impedances of interest in the power splitter design are Z<sub>in,1</sub> and Z<sub>in,2</sub>. From (1), the match condition now becomes
<br>1/Z<sub>in,1</sub> +1/Z<sub>in,2</sub> =1/Z<sub>0</sub>
<br>and from (5) and (6), the power division constraints become
<br>P<sub>1</sub>/P<sub>in</sub> = Z<sub>0</sub>/Z<sub>in.1</sub>
<br>And
<br>P<sub>2</sub>/P<sub>in</sub> = Z<sub>0</sub>/Z<sub>in,2</sub>
<br>Example N24.1 (text example 7.1). Design a 1:2, T-junction power divider in a 50-ohm system impedance. We'll choose to use the network in with B = 0: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image5.gif"></sub>
<br>For a 1:2 split, we want line 1 to carry P<sub>in</sub>/ 3 and line 2 to carry 2P<sub>in</sub>/ 3. From (7) and (8): 
<br>Z<sub>1</sub>={50/(1/3)}=150 ohm 
<br>and Z<sub>2</sub>={50/2/3}=75 ohm 
<br>That's it for the design of the splitter. We'll carry this example further and first check to make sure the input port is matched. For a lossless network, P<sub>1</sub>/ P<sub>in</sub> +P<sub>2</sub>/ P<sub>in</sub> =1 which implies that 1/Z<sub>1</sub> +1/ Z<sub>2</sub> =1/Z<sub>0</sub> . In this example, 
<br>1/75+1/150=1/50
<br>Therefore, Z<sub>in</sub> = 50 ohm as needed and as expected. Second, we'll compute the S parameters for this network. We know that S<sub>11</sub> = 0 since we just computed Z<sub>in</sub> = 50 ohm. The network is reciprocal, so [S] must be symmetric. The network is also lossless and because it's a three-port, we know that not all ports will be simultaneously matched. That is, port 2 (port 3) will not be matched when ports 1 and 3 (ports 1 and 2) are terminated with matched loads. 
<br>Based on these facts, we can surmise that the S matrix will have the form: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image6.gif"></sub>
<br>Let's now compute these S parameters: 
<br>. S<sub>22</sub>. Terminating port 1 with 50 ohm and port 3 with 75 ohm, we find
<br>S<sub>22</sub> = &tau;<sub>2</sub>|<sub>V</sub><sup>+</sup><sub>1=V</sub><sup>+</sup><sub>3=0</sub>={(Z<sub>0</sub>||Z<sub>2</sub>-Z<sub>1</sub>)/(Z<sub>0</sub>||Z<sub>2</sub>+Z<sub>1</sub>)}=-2/3 
<br>. S<sub>33</sub>. Terminating port 1 with 50 ohm and port 2 with 150 ohm, we find
<br>S<sub>33</sub> = &tau;<sub>3</sub>|<sub>V</sub><sup>+</sup><sub>1=V</sub><sup>+</sup><sub>2=0</sub>={(Z<sub>0</sub>||Z<sub>1</sub>-Z<sub>2</sub>)/(Z<sub>0</sub>||Z<sub>1</sub>+Z<sub>2</sub>)}=-1/3 
<br>. S<sub>21</sub>=S<sub>12</sub>. Terminating port 2 with 150 ohm and port 3 with 75 ohm, then
<br>V<sup>+</sup><sub>1</sub>(1+T<sub>1</sub>)=V<sup>-</sup><sub>2</sub>
<br>There fore 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image7.gif"></sub>
<br>One subtlety here is the port 1 and port 2 impedances are different. Consequently, we need to use generalized S parameters. 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image8.gif"></sub>
<br>So that here 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image9.gif"></sub>
<br>. S<sub>31</sub>=S<sub>13</sub>. Terminating port 2 with 150 ohm and port 3 with 75 ohm, then
<br>V<sup>+</sup><sub>1</sub>(1+T<sub>1</sub>)=V<sup>-</sup><sub>3</sub>
<br>So that 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image10.gif"></sub>
<br>Hence
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image11.gif"></sub>
<br>. S<sub>32</sub>=S<sub>23</sub>. Terminating port 1 with 50 ohm and port 3 with 75 ohm, then
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image12.gif"></sub>
<br>So that 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image13.gif"></sub>
<br>This relatively large value of S<sub>32</sub> indicates there is little isolation between the two output ports. This is often undesirable. since the network is lossless, implying that [S] is unitary, then from: 
<br>|S<sub>11</sub>|<sup>2</sup>+|S<sub>21</sub>|<sup>2</sup>+S<sub>31</sub>|<sup>2</sup> =1
<br>Or
<br>|S<sub>21</sub>|sup&gt;2 + |S<sub>31</sub>|<sup>2</sup> =1
<br>Substituting for S<sub>21</sub> and S<sub>31</sub>, we find that
<br>|S<sub>21</sub>|<sup>2</sup> + |S<sub>31</sub>|<sup>2</sup> = 0.333+ 0.666 = 0.999
<br>which serves to partially verify the correctness of our S parameter calculations. 
<br><b>Resistive Divider Power Splitter</b>
<br>This type of divider is shown in Figure and is constructed from three resistors: 
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image14.gif"></sub>
<br>Since this network is lossy, the resistive power divider can be simultaneously matched at all three ports. However, the two output ports will most likely not be isolated. 
<br>The S-parameter analysis of this three-port can be performed using only simple circuit theory since all three ports will be matched. With no reflections from the port, the total port voltages are simply the amplitudes of the incoming or outgoing voltage waves, as appropriate for that port. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/t-junction_and_resistive_power_dividers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/t-junction_and_resistive_power_dividers.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image15.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/t-junction_and_resistive_power_dividers.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image17.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_t-junction_and_resistive_power_dividers/image16.wmf"></sub>
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
