<%@ Page Language="C#" MasterPageFile="~/Masters/bjtlinks.master" AutoEventWireup="True" CodeBehind="DC_Analysis_of_BJT_Circuits.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.DC_Analysis_of_BJT_Circuits" %>
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
	<b>DC Analysis of BJT Circuits</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>In this section we will consider a number of BJT circuits and perform the DC circuit analysis. For those circuits with an active mode BJT, we'll assume that V<sub>BE</sub> = 0.7V (npn) or V <sub>EB</sub> = 0.7V (pnp). Example N12.1 (text example 5.4). Compute the node voltages and currents in the circuit below assuming ß = 100.
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image1.jpeg"></sub>
<br>If the BJT is in the active mode, V<sub>be</sub> = 0.7V then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image2.jpeg"></sub>
<br>With I<sub>c</sub> Ia<sub>e</sub> = then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image3.jpeg"></sub>
<br>Consequently, using KVL
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image4.jpeg"></sub>
<br>V<sub>c</sub>=10-I<sub>e</sub>R<sub>c</sub>= 10-0.99*10<sup>-3&gt;</sup>-4.7*10<sup>3</sup>=5.3V Finally, using KCL I<sub>B</sub>+I<sub>C</sub>=I<sub>E</sub>,or I<sub>B</sub>=I<sub>E</sub>-I<sub>C</sub>=1-0.99=0.01mA
<br>Now we'll check to see if these values mean the BJT is in the active mode (as assumed). 
<br>&bull; V<sub>CB</sub> = 5.3-4 =1.3 V. This is greater than zero, which means the CBJ is reversed biased. 
<br>&bull; V<sub>BE</sub> =0.7 V. This is greater than zero, which means the EBJ is forward biased. Because the CBJ is reversed biased and the EBJ is forward biased, the BJT is operating in the active mode. Note that in the text, they show a technique for analyzing such circuits right on the circuit diagram in . 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image5.jpeg"></sub>
<br>Example N12.2 (text example 5.5). Repeat the previous example but with V<sub>B</sub> =6 V. Assuming the BJT is operating in the active mode: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image6.jpeg"></sub>
<br>From the last calculation 2.57 C V<sub>c = 2.57VÞ VCB </sub>= 3.43 V. Consequently, the BJT is not in the active mode because the CBJ is forward biased. A better assumption is the transistor is operating in the saturation mode. We'll talk more about this later. For now, suffice it to say that in the saturation mode V<sub>CE|sat</sub> »0.2 V (see Section 5.3.4). Assuming this and reanalyzing the circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image7.jpeg"></sub>
<br>Notice that
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image8.jpeg"></sub>
<br>This ratio is often called forced ß . Observe that it's not equal to 100, as this ratio would be if the transistor were operating in the active mode (see Section 5.3.4). Example N12.3 (text example 5.7). Compute the node voltages and currents in the circuit below assuming ß = 100. To begin, we'll assume the pnp transistor is operating in the active mode. 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image9.jpeg"></sub>
<br>Now check if the BJT is in the active mode: 
<br>&bull; EBJ? Forward biased. 
<br>&bull; CBJ? Reversed biased. 
<br>So the BJT is in the active mode, as originally assumed. Example N12.4 (text exercise D5.25). Determine the largest RC that can be used in the circuit below so that the BJT remains in the active mode. (This circuit is very similar to the one in the previous example.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image10.jpeg"></sub>
<br>We'll begin by assuming the BJT is operating in the active mode. In the active mode, the CBJ needs to be reversed biased. The lowest voltage across this junction for operation in the active mode is V<sub>CB</sub>=0 => V<sub>C</sub>=V<sub>B</sub>=0V
<br>Therefore, by KVL 
<br>-10+R <sub>C</sub>I<sub>c</sub>=0
<br>or
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image11.jpeg"></sub>
<br>This value of RC and smaller is required for the BJT to operate in the active mode. Example N12.5 (text example 5.10). Determine the node voltages and currents in the circuit shown below. Assume the BJT is operating in the active mode with ß=100 . 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image12.jpeg"></sub>
<br>First, we'll use Thévenin's theorem to simplify the base circuit
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image13.jpeg"></sub>
<br>The Thévenin equivalent resistance and voltage are then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image14.jpeg"></sub>
<br>Using this Thévenin equivalent for the base circuit, the overall circuit is then 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image15.jpeg"></sub>
<br>To find the emitter current, we'll apply KVL over the loop shown giving 5=33.3*10<sup>3</sup>.I<sub>B</sub>+0.7+3,000.I<sub>E</sub>The quantity of interest is I<sub>B</sub>. With CB I<sub>C</sub>= Iß <sub>B</sub>=and I<sub>C</sub> =Ia<sub>E</sub> for a BJT in the active mode, we find
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image16.jpeg"></sub>
<br>Using this in the KVL equation 
<br>5-0.7=[33.3*10<sup>3</sup>+3,000(ß+1)]I<sub>b</sub> 
<br>With ß=100 then solving this equation we find 
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image17.jpeg"></sub>
<br>Next, by KCL
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image18.jpeg"></sub>
<br>The node voltages are then
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image19.jpeg"></sub>
<br>Lastly, let's check if the BJT is operating in the active mode. 
<br>&bull; BE B E V<sub>BE</sub>= V<sub>B</sub>- V<sub>E</sub> = 4.57 -3.87 =0.7 V This is 0.7 V originally assumed for a forward biased EBJ. 
<br>&bull; V<sub>BC</sub>= V<sub>B</sub> -V <sub>C</sub>=4.57 -8.6=-4.03 V. This is less than zero, which means the CBJ is reversed biased. Therefore the BJT is operating in the active mode, as originally assumed. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>example of BJT small signal</b>" NavigateUrl="~/engineering/electronics-communication/dc_analysis_of_bjt_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>drdo previous papar</b>" NavigateUrl="~/engineering/electronics-communication/dc_analysis_of_bjt_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>FET</b>" NavigateUrl="~/engineering/electronics-communication/dc_analysis_of_bjt_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>diode</b>" NavigateUrl="~/engineering/electronics-communication/dc_analysis_of_bjt_circuits.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_dc_analysis_of_bjt_circuits/image21.wmf"></sub>
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
