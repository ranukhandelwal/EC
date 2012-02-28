<%@ Page Language="C#" MasterPageFile="~/Masters/diodelinks.master" AutoEventWireup="True" CodeBehind="zener_diodes.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.zener_diodes" %>
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
	<b>Zener Diode</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The very steep portion in the reverse biased i-v characteristic curve is called the breakdown region. 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image1.jpeg"></sub>
<br>In this region the voltage across the diode remains nearly constant while the current varies (i.e., small internal resistance). There are two physical mechanisms that can produce this behavior in the breakdown region. One is the Zener effect in which the large electric field in the depletion region causes electrons to be removed from the covalent bonds in the silicon. The second mechanism is the avalanche effect in which charges that are accelerated to high speeds due to the large electric field in the depletion region collide with atoms in the silicon lattice causing charges to be dislodged. In turn, these dislodged charges have sufficient energy to liberate additional electrons. In other words, this avalanche effect is a cascading, ionization process. Provided that the power dissipated in the diode is less than the maximum rated, the diode is not damaged when operating in the breakdown region. In fact, Zener diodes are designed to operate in this region. The circuit symbol for the Zener diode is 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image2.jpeg"></sub>
<br>These diodes are usually operated in the reverse bias regime (i.e., breakdown region) so that IZ &gt; 0 and VZ &gt; 0. An enlargement of this bre akdown region is shown in text
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image3.jpeg"></sub>
<br>The manufacturer specifies the -VZ0 and test current IZT. One can design Zeners with a wide range of voltages. The page below is from a Digikey catalog (www.digikey.com) and shows voltages from ranging from 3.6 V to 200 V, for example. 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image4.jpeg"></sub>
<br>The rated VZ at the specified IZT is listed for these Zener diodes. The circled component, for example, has VZ = 8.2 V at IZT = 31 power is 1 W for this device. As the current deviates from the specified value IZT, the voltage VZ also changes, though perhaps only by a small amount. The change in voltage ÄVZ is related to the change in the current ÄIZ as
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image5.jpeg"></sub>
<br>where rz is the incremental or dynamic resistance at the Q point and is usually a few Ohms to tens of Ohms. See the datasheet for the particular devic e you are working with. Because of the nearly linear relationships in the breakdown region, the reverse bias model of the Zener diode is
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image6.jpeg"></sub>
<br>where v<sub>z</sub>=v<sub>z0</sub>+r<sub>z</sub>I<sub>z</sub> Applications of Zener Diodes
<br>What are Zener diodes used for? Applications include: 1. Voltage overload protection. This circuit is from the NorCal 40A radio that is built in EE 322 Electronics II - Wireless Communication Electronics: 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image7.jpeg"></sub>
<br>2. Voltage regulation. See the figure below. An example of such a regulator circuit will be considered next. 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image8.jpeg"></sub>
<br>Example N6.1 (similar to text example 3.8). The Zener diode in the circuit below has the following characteristics: 6.8-V rating at 5 mA, rz = 20 Ù, and IZK = 0.2 mA. With
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image9.jpeg"></sub>
<br>With these ratings
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image10.jpeg"></sub>
<br>Note that the supply voltage can fluctuate by &#177; 1 V. Imagine this fluctuation is a random process rather than a time periodic variation. Determine the following quantities: 
<br>(b) Find VO with no load and V+ at the nominal value. The equivalent circuit for the reverse bias operation of the Zener diode is
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image11.jpeg"></sub>
<br>From this circuit we calculate
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image12.jpeg"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image13.jpeg"></sub>
<br>(c) Find the change in V<sub>O</sub> resulting from a &#177; 1 V change in V+. Using the circuit above the V+ = 11 V: 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image14.jpeg"></sub>
<br>Similarly, with V+=9 V: <sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image15.jpeg"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image16.jpeg"></sub>.
<br>The ratio of the change in output voltage to the change in the source voltage is called the line regulation of the regulator circuit. It's often expressed in units of mV/V. For this example and no load attached, 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image17.jpeg"></sub>
<br>(d) Find the change in V<sub>O</sub> resulting from connecting a load of R<sub>L</sub> = 2 kohm with a nominal V+ = 10 V.Assuming that the diode is operating in the breakdown region: 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image18.jpeg"></sub>
<br>Is this a reasonable value? Calculate IS:
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image19.jpeg"></sub>
<br>So, yes, this is a reasonable value because I<sub>L</sub> &lt; I<sub>S</sub> , as it must. From (1), Ñ V<sub>o</sub> = r<sub>z</sub>Ñ VI<sub>z</sub> and since ÑVI<sub>z</sub> = -3.4 mA then
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image20.jpeg"></sub>
<br>The ratio of the change in output voltage to the change in the load current ( Ñ V<sub>o</sub>/ÑI<sub>L</sub> ) is called the load regulation of the regulator circuit. It's often expressed in units of mV/mA. For this example, 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image21.jpeg"></sub>
<br>(e) What is V<sub>O</sub> when R<sub>L</sub> = 0.5 kohm? Assume the diode is in breakdown. In this case, 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image22.jpeg"></sub>
<br>Is this a reasonable value? No, because this value is greater than IS = 6.4 mA. Therefore, in this case the Zener diode is not operating in the breakdown region. Also, the diode can't be forward biased. Consequently, we conclude the diode must be operating in the reverse bias region. 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image23.jpeg"></sub>
<br>The equivalent circuit in this case is
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image24.jpeg"></sub>
<br>From this circuit we calculate
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image24.jpeg"></sub>
<br>This voltage is less than the breakdown voltage VZK, which is consistent with the reverse biased assumption. (f) Determine the minimum RL for which the diode still remains in breakdown for all V+. (We know from the results in parts (c) and (d) of this example that RL must lie between 500 Ù and 2 kÙ when 10 V + = V.) Referring to Fig. 3.21, at the "knee”I<sub>z</sub>=I<sub>zk</sub>=0.2 mA and V<sub>z</sub>=V<sub>zk</sub>~V<sub>Z0</sub>=6.7 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image25.jpeg"></sub>
<br>&bull; If V+ = 9 V: 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image26.jpeg"></sub>
<br>Therefore, IL = 4.6 mA-0.2 mA = 4.4 mA, so that
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image27.jpeg"></sub>
<br>&bull; If V+ = 11 V: 
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image28.jpeg"></sub>
<br>Therefore, IL = 8.6 mA-0.2 mA = 8.4 mA, so that
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image29.jpeg"></sub>
<br>The smallest load resistance that can be attached to this circuit and have the diode remain in breakdown is RL = 1,522 Ù. The reason is that for any smaller value when V+ = 9 V results in the diode leaving breakdown and entering the reverse bias mode. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Type of diode</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1484
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>signals and system</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1551
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Thank u </b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink>
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
	<br>1054
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>3058
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>More examples of non linear circuit analysis</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1816
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1941
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>hiii plz give me basic information about electromegnetics</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1289
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>hi</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1167
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>electronics and communication</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1591
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>bjt</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>3440
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>h parameters of transister</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>4792
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>very good tutorials</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1901
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>ECE</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>2031
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>e.d.c</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>2286
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image30.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>Thanks for nice tutorials</b>" NavigateUrl="~/engineering/electronics-communication/zener_diodes.aspx"></asp:HyperLink> 
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
	<br>1827
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image32.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image32.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image32.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image32.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image32.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_zener_diodes/image31.wmf"></sub>
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
