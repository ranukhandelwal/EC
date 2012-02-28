<%@ Page Language="C#" MasterPageFile="~/Masters/diodelinks.master" AutoEventWireup="True" CodeBehind="Applications-of-Diodes.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Applications_of_Diodes" %>
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
	<b>Applications of Diodes - Electronics &amp; Communication tutorials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Applications of Diodes</b>
<br>Now we will briefly consider a couple of applications for diodes. We'll cover these in much more detail later. 
<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image1.jpeg"></sub><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image2.jpeg"></sub>
<br>Conversely, when v<sub>I</sub> &lt; 0 , the ideal diode is "off" and there is no current through R. 
<br>Therefore, v<sub>0</sub> = 0. We have "rectified" the input voltage with this circuit. This process of rectification will work for any type of input signal, whether it is periodic (as shown above) or not. 
<br>
<br>
<br>
<br>Digital logic gate. Diodes and resistors together can be used to make rudimentary logic gates. For example: 
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image3.jpeg"></sub>
<br>Assuming the voltages are 0 V for "low" signals and 5 V for the "high" signals, then the circuit shown above is a two-input OR gate: 
<br>o If vA = 5 V and vB = 0 or 5 V, then vY = 5 V. 
<br>o If vB = 5 V and vA = 0 or 5 V, then vY = 5 V. 
<br>for ideal diodes. This is an OR function Y=A+B. 
<br>Why do we have the resistor in this circuit? It's a "clamp down" resistor and forces the voltage vY = 0 when vA = vB = 0. (What if there was no R? Wouldn't the voltage be zero in this case as well?) 
<br>One huge complication of diodes (or any nonlinear circuit element) in an electrical circuit is the use of superposition in the analysis is disallowed! (The exception to this is if the analysis has been linearized for only small amplitude signals. We'll see this linearization throughout the course.) 
<br>
<br>Consequently, nonlinear circuit analysis is usually much more complicated than linear circuit analysis. One often needs numerical analysis for solution, such as that provided by circuit simulation software. 
<br>Example N1.1 Determine the voltage V and current I in the circuit below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image4.jpeg"></sub>
<br>This is a nonlinear circuit, so a completely different analysis procedure is required than what you've used in the past for linear circuits. 
<br>One process you can use to solve this problem is to try (i.e. guess) different on/off combinations for the diodes D1 and D2 until you achieve a physically plausible and self consistent solution. 
<br>For example, if D1 is "on" and D2 is "on," then V = 1 V and 3 V. 
<br>It is simply impossible to have two different voltages simultaneously at a node. Voltages must be single valued at all nodes. We conclude that D1 and D2 cannot both be "on" simultaneously. 
<br>Next, we try D1 "off" and D2 "on." This leads to V = 3 V and I = 8 mA. 
<br>This result is physically realistic and self consistent since with V = 3 V then the voltage drop across D1 requires that it be "off," which is what we have assumed. 
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Previous - Ideal Diodes</b>" NavigateUrl="~/engineering/electronics-communication/ideal-diode.aspx"></asp:HyperLink> 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Type of diode</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>signals and system</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
	<br>1564
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Thank u </b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>More examples of non linear circuit analysis</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>study materials</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>hiii plz give me basic information about electromegnetics</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>hi</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>electronics and communication</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>bjt</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
	<br>3459
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>h parameters of transister</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>very good tutorials</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink15" runat="server" Text="<b>ECE</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink16" runat="server" Text="<b>e.d.c</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image5.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink17" runat="server" Text="<b>Thanks for nice tutorials</b>" NavigateUrl="~/engineering/electronics-communication/applications-of-diodes.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image7.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink18" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image8.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image8.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image8.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image8.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image8.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image7.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image7.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_applications-of-diodes/image7.wmf"></sub>
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
