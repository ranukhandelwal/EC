<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="BJT_as_an_Electronic_Switch.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.BJT_as_an_Electronic_Switch1" %>
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
	<b>BJT as an Electronic Switch</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The transistor can be used as an electronic switch, in addition to an amplifier. As a switch, we use the cutoff and saturation regions of BJT operation. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image1.jpeg"></sub>
<br>Cutoff Region. If 0.5 I v or so, the EBJ will conduct negligible current. Also, the CBJ will be reversed biased with a large VCC. Consequently, 
<br>i<sub>B</sub>&#87760,i<sub>c</sub>&#87760,and I <sub>E</sub> &#8776=0
<br>which means
<br>v O = V CC
<br>These are the cutoff conditions and the BJT is in the "off” state. 
<br>Saturation Region. For the "on” state of the switch, we increase vI until the BJT saturates. This occurs when the EBJ and the CBJ are both forward biased. Due to asymmetries in the device fabrication, the voltage drops are different for these two forward-biased junctions. 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image2.jpeg"></sub>
<br>These are only approximate values for saturated BJTs. The actual values of V <sub>CE</sub>|set and V <sub>EC</sub>|sat depend heavily on i <sub>C</sub> Equivalent circuit models for these saturated BJTs are: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image3.jpeg"></sub>.
<br>So, with vI "large,” then
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image4.jpeg"></sub>
<br>With V<sub>0</sub>= <sub>CE</sub>|sat then
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image5.jpeg"></sub>
<br>Remember that because the BJT is no longer operating in the active region, C B i <sub>c</sub> i <sub>B</sub> Instead, if the BJT is operating in the saturation mode
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image6.jpeg"></sub>
<br>Example N24.1. The BJT in the circuit below has 50 &lt;BEA
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image7.jpeg"></sub>
<br>Designing at "electronic switch” has essentially two parts: cutoff and saturation. Cutoff is easy to design. Just make V<sub>1</sub> &lt;0.5V or so. Saturation is a bit more difficult to design. We need vI sufficiently large so that the collector current becomes large enough for the CBJ to become forward biased. For this problem, assume the BJT is saturated so that V <sub>CE</sub>|<sub> sat </sub>=0.2 V . Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image8.jpeg"></sub>
<br>To saturate the BJT with the smallest &beta; we need to provide
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image9.jpeg"></sub>
<br>This is IB just on the edge of saturation (EOS). For an "overdrive factor (ODF)” of 10 means we want to force 10 times this current into the base of the BJT: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image10.jpeg"></sub>
<br>Therefore, since
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image11.jpeg"></sub>
<br>Now, with this design and the transistor saturated, what is the "forced” &beta;
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image12.jpeg"></sub>
<br>This value is much smaller that &beta;<sub>min</sub> =50, as expected. Anotherway to compute &beta;<sub> forced </sub>is to notice: 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image13.jpeg"></sub>
<br>such that
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image14.jpeg"></sub>
<br>Using (7) for this example, 
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image15.jpeg"></sub>
<br>Lastly, what happens if &beta; is increased from 50 to 150 as stated in the problem? Will the transistor stay saturated? Yes, it will. Actually, nothing changes in our saturated circuit as &beta; varies.However, &beta; <sub>forced</sub> becomes smaller indicating that the transistor is becoming more saturated. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/bjt_as_an_electronic_switch.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/bjt_as_an_electronic_switch.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/bjt_as_an_electronic_switch.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/bjt_as_an_electronic_switch.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_bjt_as_an_electronic_switch/image17.wmf"></sub>
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
