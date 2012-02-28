<%@ Page Language="C#" MasterPageFile="~/Masters/diodelinks.master" AutoEventWireup="True" CodeBehind="DC-Analysis-of-Diode-Circuits.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.DC_Analysis_of_Diode_Circuits" %>
<%@ MasterType VirtualPath="~/Masters/diodelinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>DC Analysis of Diode Circuits</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>We'll now move on to the DC analysis of diode circuits. Let's consider this very simple diode circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image1.jpeg"></sub>
<br>We will assume that the diode is forward biased. Using KVL V<sub>DD</sub>=IR+V<sub>D</sub> From the characteristic equation for the diode
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image2.jpeg"></sub>
<br>Assuming n, I<sub>S</sub>, and V<sub>T</sub> are known, we have two equations for the two unknown quantities V<sub>D</sub> and I. Substituting (2) into (1):
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image3.jpeg"></sub>
<br>which is a transcendental equation for VD. There is no simple analytical solution to this equation. So how do we solve such a circuit problem? Over the next couple of pages we'll mention five methods. 
<br>1. Graphical Analysis. Begin with the diode i-v characteristic curve: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image4.jpeg"></sub>
<br>2. 
<br>From (1), we can rearrange the equation in terms of I to also plot above. That is, from (1) 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image5.jpeg"></sub>
<br>which is an equation for a straight line ( y b mx = + ): 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image6.jpeg"></sub>
<br>We call this straight line the load line. 
<br>Now, plot both of these curves on the same graph: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image7.jpeg"></sub>
<br>The point where these two curves intersect is the simultaneous solution to the two equations (1) and (2). This graphical method is an impractical solution method for all but the simplest circuits. However, it is useful for a qualitative understanding of these circuits. For example, what happens when: 
<br>(a) V<sub>DD</sub> increases? 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image8.jpeg"></sub>
<br>(b) R increases? 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image9.jpeg"></sub>(c) 
<br>3. Simulation packages. SPICE, Agilent's Advanced Design System (ADS), etc. Here is a simple example using ADS: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image10.jpeg"></sub>4. 
<br>3. Numerical methods. Use Mathematica, Matlab, Mathcad, etc. 
<br>Here is a simple example from Mathcad: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image11.jpeg"></sub>
<br>4. Iterative analysis. See example 3.4 in the text. 
<br>5. Approximate analysis. This is by far the most widely used approach for hand calculations. 
<br><b>Approximate Diode Circuit Solutions</b>
<br>There is often a need for us to perform design with pencil and paper. Remember: simulation packages don't design for you, they only analyze circuits. There's a big difference between design and analysis! 
<br>There are two very important approximate diode models that allow easier paper designs: 
<br>1. Constant-Voltage-Drop (CVD) Model. 
<br>2. Piecewise Linear (PWL) Model. 
<br>
<br><b>Constant-Voltage-Drop (CVD) Model</b> In this model, the characteristic curve is approximated as: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image12.jpeg"></sub>
<br>
<br>In words, this model says that if the diode is forward biased, then the voltage drop across the diode is VD. If not forward biased, the diode is then reversed biased and the current is zero and V<sub>D</sub> can be any value &lt; V<sub>D</sub>. 
<br>VD is often set to 0.7 V for silicon diodes, as shown above, while set to 0.2 V for Schottky diodes, for example. The CVD circuit model for diodes is 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image13.jpeg"></sub>
<br>This is probably the most commonly used diode model for hand calculations. 
<br>Example N3.1. Determine the current I in the circuit below using the CVD model and assuming a silicon diode. 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image14.jpeg"></sub>
<br>Using the CVD model, the equivalent approximate circuit is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image15.jpeg"></sub>
<br>
<br>Assuming the diode is forward conducting (i.e., "on”) with V<sub>D</sub> = 0.7 V and using KVL in this circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image16.jpeg"></sub>
<br>The positive value of this current indicates our original assumption that the diode is "on” is correct. 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image17.jpeg"></sub>
<br>Since I is negative, then D must be reversed biased. This means our initial forward conducting assumption was incorrect. Rather, in this situation I = 0 and V<sub>D</sub> = 0.5 V. 
<br>
<br><b>Piecewise Linear (PWL) Diode Model</b>
<br>
<br>This is a "battery plus internal diode resistance model.” It is one step better than the CVD model by incorporating a slope to the interpolative line: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image18.jpeg"></sub>
<br>The finite slope to this curve means that the diode has a nonzero internal resistance, which we will label as rD. The equivalent circuit for the PWL diode model is then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image19.jpeg"></sub>
<br>
<br>Example N3.2. Determine the current I in the circuit below using the PWL diode model shown in text Figure. <sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image20.jpeg"></sub>
<br>From Fig., we can determine VD0 and rD for the particular diode whose characteristic equation is shown: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image21.jpeg"></sub>
<br>
<br>The equivalent circuit using the PWL model of the diode is then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image22.jpeg"></sub>
<br>
<br>Assuming the diode is "on,”, then by KVL: <sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image23.jpeg"></sub>
<br>This is close to the 1.3 mA we computed in the last example using the cruder CVD model. Again, the positive value of this current indicates that we made the correct choice that the diode is "on.” 
<br>What's the forward voltage drop across the diode? 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image24.jpeg"></sub>
<br>Is this enough to turn the diode on? Yes, referring to the equivalent circuit above
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image25.jpeg"></sub>
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
<br><b>Discuss about DIODE here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for DIODE</b>
<br>You can discuss all your issues on DIODE here</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Type of diode</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>I need short notes for all type of diode. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;imteyaz86</b> 
</td>

      
      <td class="txt">
	<br>Oct 27, 11:50:24 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1495
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>signals and system</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>hi i am venkatesh which author use in signal and system for gate 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;venkatesh.dace2</b> 
</td>

      
      <td class="txt">
	<br>Oct 13, 4:38:08 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1563
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Thank u </b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink>
<br>i need some links to download free ebooks multiple choice for my gate preparation - V.Vivek Sharma. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vvivekxp@yahoo.com</b> 
</td>

      
      <td class="txt">
	<br>Oct 4, 9:56:42 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1065
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>i want to study materials of digital communication. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;titon</b> 
</td>

      
      <td class="txt">
	<br>Feb 6, 3:43:05 PM
</td>

      
      <td class="txt">
	<br>4
</td>

      
      <td class="txt">
	<br>3068
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>More examples of non linear circuit analysis</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>Notes are very simple to understand the concepts. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;ruby2810</b> 
</td>

      
      <td class="txt">
	<br>Sep 9, 3:17:49 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1835
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>can i get some study materials by online 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shyama.km</b> 
</td>

      
      <td class="txt">
	<br>Sep 4, 9:05:49 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1958
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>hiii plz give me basic information about electromegnetics</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>i have a dout between combination of electrostatics and megnetostatics 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;pandya.saga</b> 
</td>

      
      <td class="txt">
	<br>Jul 29, 2:38:13 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1299
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>hi</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>pls send me a link on answered problems on electronic devices and circuit theory by boylestad and nashelsky.. ty 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;flux089</b> 
</td>

      
      <td class="txt">
	<br>Jul 25, 11:21:28 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1179
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>electronics and communication</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>i am in 4th year 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;gauravjai24.ece.uit@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Jun 10, 6:02:44 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1602
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>bjt</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>about bipolar device 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vikashgupta160489</b> 
</td>

      
      <td class="txt">
	<br>Feb 13, 2:11:36 PM
</td>

      
      <td class="txt">
	<br>2
</td>

      
      <td class="txt">
	<br>3458
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>h parameters of transister</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>i want h parameters of transister 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vijaybaviskar007</b> 
</td>

      
      <td class="txt">
	<br>Feb 11, 7:52:45 AM
</td>

      
      <td class="txt">
	<br>3
</td>

      
      <td class="txt">
	<br>4814
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>very good tutorials</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>the explanations r very easy to understand 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;blues2torn@rediffmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 7, 8:38:09 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1913
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>ECE</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>the explanation was nice...more of these explanations on other topics would be of much help and is expected urgently... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;pallavi.sist@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 2, 10:32:29 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>2040
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>e.d.c</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>i want to simple way abt all the diode n jfet 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;vijayjyani@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Jun 4, 10:25:28 AM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>2295
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image26.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>Thanks for nice tutorials</b>" NavigateUrl="~/engineering/electronics-communication/dc-analysis-of-diode-circuits.aspx"></asp:HyperLink> 
<br>Thanks for nice tutorials 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;my.gateprep</b> 
</td>

      
      <td class="txt">
	<br>Nov 26, 8:29:06 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>1836
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image27.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink17" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image28.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image28.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image27.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_dc-analysis-of-diode-circuits/image27.wmf"></sub>
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
