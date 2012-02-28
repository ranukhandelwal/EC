<%@ Page Language="C#" MasterPageFile="~/Masters/diodelinks.master" AutoEventWireup="True" CodeBehind="Physical-Operation-of-Diode.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Physical_Operation_of_Diode" %>
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
	<b>Physical Operation of Diodes</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Real diodes have a more complicated i-v characteristic curve than ideal diodes. As shown in the text for a silicon diode:
<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image1.jpeg"></sub>
<br>The diode has three distinct regions of operation:
<br>1. Forward bias – note that when the diode is "on,” the voltage drop is approximately 0.6 V to 0.7 V for a silicon diode.
<br>2. Reverse bias - in this region i = -I<sub>S</sub> , where I<sub>S</sub> is called the saturation current. For "small signal” diodes, I<sub>S</sub> is often on the order of fA (10<sup>-15 A</sup>). 
<br>3. Breakdown - in this region v » V<sub>ZK</sub> ˜ - for all I, where V<sub>ZK</sub> is called the breakdown knee voltage. This region of operation is useful in certain applications. 
<br>In the forward bias region of operation, it can be shown from first principals that
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image2.jpeg"></sub>
<br>where
<br>&bull; n = “emission constant.” Typically between 1 and 2. 
<br>&bull; V<sub>T</sub> = kT/q 䤥 mV at room temperature (20°C). Called the "thermal voltage.” 
<br>Notice the highly non-linear relationship between i and v in this equation. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image3.jpeg"></sub>
<br>
<br>which is true for operation in the reverse bias region. 
<br>We'll now take a quick look at the basic semiconductor physics behind the pn junction, and then follow this up with examples and applications. 
<br><b>PN Junction</b>
<br>
<br>Semiconductor junction diodes are made by joining two semiconductors together. A pn junction diode is formed by joining a "p-type” semiconductor to an "n-type” semiconductor: 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image4.jpeg"></sub>
<br>For a silicon diode, both the p and n regions are silicon, but in each of these regions, small amounts of impurities have been added through a process called "doping.” To make p and n regions, we begin with a silicon crystal as shown figure below. These atoms are held together by covalent bonds (sharing pairs of electrons). 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image5.jpeg"></sub>
<br>At T = 0, the outermost electron (e-) of each atom is held in covalent bonds. No current is possible since no electrons are available to contribute to conduction. 
<br>For T &gt; 0, random thermal vibration provides enough energy for some of the e- to break their covalent bonds. 
<br>These e- can contribute to conduction current. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image6.jpeg"></sub>
<br>
<br><b>Holes</b>
<br>
<br>When electrons are thermally excited out of covalent bonds, they leave a "vacancy” at the bond site, as illustrated above in Fig. This is called a hole. Interestingly, holes can also contribute to conduction current in a semiconductor material (see the figure below). This movement is usually much slower than e- so the mobility of holes is smaller. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image7.jpeg"></sub>
<br>
<br><b>Donors and Acceptors</b>
<br>
<br>The concentration of holes and free electrons can be changed in a silicon crystal by adding small amounts of impurities called dopants. This is what makes electronic devices possible! 
<br>(1) To create holes, add acceptor dopants to the silicon. For such "p-type” semiconductors, the silicon is doped with trivalent impurity elements such as boron. These impurity atoms displace silicon atoms (having four electrons) with boron atoms (having three electrons). 
<br>Consequently, the regular silicon lattice has "holes,” or locations in the lattice that can accept a free electron. This "hole” can also move through the lattice. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image8.jpeg"></sub>
<br>(2) To create free electrons, add donor dopants For such "n-type” semiconductors, the silicon is doped with pentavalent impurity elements such as phosphorus. These impurities displace silicon atoms with phosphorous atoms (having five electrons). Consequently, one extra electron is available to move through the silicon lattice. <sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image9.jpeg"></sub>
<br>
<br>Be aware that the entire p-type and n-type regions remain charge neutral at all times! The dopant atoms are also charge neutral. 
<br>At room temperature, thermal ionization breaks some covalent bonds. In n-type materials we then have free electrons while in p-type materials we have free holes. "p type” means positive charge carriers predominate while "n type” means negative charge carriers predominate. 
<br>
<br><b>Depletion Region</b>
<br>
<br>Something very special occurs when we place p-type material in contact with n-type material. There now appears to be an "excess” of holes in the p-type material and an "excess” of free electrons in the n type. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image10.jpeg"></sub>
<br>Through the mechanism of diffusion (random motion due to thermal agitation), excess holes will migrate to the n-type region while excess free electrons will migrate to the p-type region. 
<br>More specifically, when the p- and n-type materials are placed in contact (forming a junction), two things happen near the contact region: 
<br>(1) Holes diffuse across the junction (diffuse because the hole concentration is higher in p type) into the n-type region and recombine with majority electrons. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image11.jpeg"></sub>With this electron now "gone,” we have "uncovered” a positive charge from the dopant atom in the n-type region. 
<br>This forms a positively charged region. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image12.jpeg"></sub>
<br>(2) Similarly, the majority carriers in the n-type region (electrons) diffuse across the junction and recombine with majority holes in the p-type region. This uncovers negative bound charge. 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image13.jpeg"></sub>
<br>This contact region between the p and n regions now has a bound volume electric charge density. It is called the depletion region. This may seem an unexpected name since only in this region is there a net volume charge density (aka space charge)! 
<br>Reverse and Forward Biased Junction There are two important states for a pn junction, the reversed biased and forward biased states: 
<br>(1) Reversed biased state: 
<br>An electric field E is created in the depletion region because of the "uncovered” charges near the junction: 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image14.jpeg"></sub>
<br>For the reversed biased state of the pn junction, the electric field produced by the battery Ebattery adds to this electric field of the space charge E in the depletion region. This increases the width of the depletion region. 
<br>Consequently, the "majority carriers” cannot flow through the region: holes in the p material are opposed by E in the depletion region, as are electrons in the n material. Hence, little current flows (only the drift current IS) unless the junction breaks down. This occurs when Ebattery is strong enough to strip electrons from the covalent bonds of the atoms, which are then swept across the junction. 
<br>(2) Forward biased state: 
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image15.jpeg"></sub>
<br>When V is large enough so that Ebattery &gt; E, then (i) holes are swept from the p to n regions, and (ii) electrons are swept from the n to p regions. We now have current! 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Type of diode</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>signals and system</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Thank u </b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>More examples of non linear circuit analysis</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>hiii plz give me basic information about electromegnetics</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>hi</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>electronics and communication</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>bjt</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>h parameters of transister</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>very good tutorials</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>ECE</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>e.d.c</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>Thanks for nice tutorials</b>" NavigateUrl="~/engineering/electronics-communication/physical-operation-of-diode.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image18.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image19.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image18.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_physical-operation-of-diode/image18.wmf"></sub>
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
