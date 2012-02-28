<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="The_180_Hybrid.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.The_180_Hybrid" %>
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
	<b>The 180 Hybrid</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>The 180</b><b></b><b> Hybrid.</b>
<br>The second reciprocal directional coupler we will discuss is the 180 hybrid. As the name implies, the outputs from such a device can be 180 out of phase. There are two primary objectives for this lecture. The first is to show that the S matrix of the 180 hybrid is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image1.gif"></sub>
<br>with reference to the port definitions in
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image2.gif"></sub>
<br>The second primary objective is to illustrate the three common ways to operate this device. These are: 
<br>1. In-phase power splitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image3.gif"></sub>
<br>With input at port 1 and using column 1 of [S], we can deduce that port 1 is matched, the outputs are ports 2 and 3 (which are in phase) and port 4 is the isolation port. 
<br>2. Out-of-phase power splitter: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image4.gif"></sub>
<br>With input at port 4 and using column 4 of [S], we can deduce that port 4 is matched, the outputs are ports 2 and 3 (which are completely out of phase) and port 1 is the isolation port. 
<br>3. Power combiner: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image5.gif"></sub>
<br>With inputs at ports 2 and 3 and using columns 2 and 3 of [S], we can deduce that both ports 2 and 3 are matched, port 1 will provide the sum of the two input signals and port 4 will provide the difference. 
<br>Because of this, ports 1 and 4 are sometimes called the sum and difference ports, respectively. there are different ways to physically implement a 180 hybrid, as shown in We'll focus on the ring hybrid and specifically consider the first two pplications described above. 
<br><b>Ring Hybrid</b>
<br>The ring hybrid (aka the rat race) is shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image6.gif"></sub>
<br>We'll analyze this structure using the same even-odd mode approach we applied to the Wilkinson power divider and the branch line coupler in the previous two lectures. In the present case, the physical symmetry plane bisects ports 1 and 2 from 3 and 4 in the figure above. 
<br>1. In-phase power splitter. Assume a unit amplitude voltage wave incident on port 1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image7.gif"></sub>
<br>As in Lecture 26, proper symmetric and anti-symmetric excitations of this device are required to produce the even and odd mode problems, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image8.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image9.gif"></sub>
<br>As we derived in Lecture 26, 
<br>B<sub>1</sub>=(1/2)&tau;<sub>e</sub>+(1/2)&tau;<sub>0</sub>
<br>B<sub>2</sub> =(1/2)T<sub>e</sub> +(1/2)T<sub>0</sub>
<br>B<sub>3</sub> =(1/2)&tau;<sub>e</sub>-1/2)&tau;<sub>0</sub>
<br>B<sub>4</sub>=(1/2)T<sub>e</sub>-(1/2)T<sub>0</sub>
<br>Each of the even and odd solutions for B<sub>i</sub> (i =1,...,4) can be found by cascading ABCD matrices, then converting to S parameters. Since the ports are terminated by matched loads, we can directly determine &tau;<sub>e0</sub> and T<sub>e0</sub> from these S parameters. As given in the text, 
<br>&tau;<sub>e</sub> =- &tau;<sub>0</sub> =(-j/  2) 
<br>T<sub>e</sub> =T<sub>0</sub> =(-j/  2) 
<br>Using these values in (1)-(4) produces
<br>B<sub>1</sub> =B<sub>4</sub> =0
<br>B<sub>2</sub> =B<sub>3</sub> = -j/2
<br>These results in (8) and (9) form the first column of [S] in (1). They indicate that with an input at port 1 and all output ports terminated by matched TLs and loads, the signal is equally divided in phase at ports 2 and 3, while none is delivered to port 4. 
<br>2. Out-of-phase power splitter. Assume a unit amplitude voltage wave is incident on port 4. 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image10.gif"></sub>
<br>To generate symmetric and anti-symmetric problems, we'll excite the circuit at ports 2 and 4, as shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image11.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image12.gif"></sub>
<br>These two excitations sum to +1 at port 4 and 0 at port 2, as required. From the even mode problem is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image13.gif"></sub>
<br>From this figure (and the even symmetry), we can write B<sup>e</sup><sub>1</sub> =(1/2)T<sub>e</sub> =B<sup>e</sup><sub>3</sub> and 
<br>B<sup>e</sup><sub>2</sub> =(1/2)&tau;<sub>e</sub> =B<sup>e</sup><sub>4</sub>
<br>From the odd mode problem is
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image14.gif"></sub>
<br>From this figure (and the odd symmetry), we can writ
<br>B<sup>0</sup><sub>1</sub> =(-1/2)T<sub>0</sub> =-B<sup>0</sup><sub>3</sub> and 
<br>B<sup>0</sup><sub>2</sub> =(-1/2)&tau;<sub>0</sub> =-B<sup>0</sup><sub>4</sub>
<br>Summing (10)-(13), we find &tau;
<br>B<sub>1</sub> =B<sup>e</sup><sub>1</sub> +B<sup>0</sup><sub>1</sub> =(1/2)T<sub>e</sub> -(1/2)T<sub>0</sub>
<br>B<sub>2</sub> =B<sup>e</sup><sub>2</sub> +B<sup>0</sup><sub>2</sub> =(1/2)&tau;<sub>e</sub> -(1/2)&tau;<sub>0</sub>
<br>B<sub>3</sub> =B<sup>e</sup><sub>3</sub> +B<sup>0</sup><sub>3</sub> =(1/2)T<sub>e</sub> +(1/2)T<sub>0</sub>
<br>B<sub>4</sub> =B<sup>e</sup><sub>4</sub> +B<sup>0</sup><sub>4</sub> =(1/2)&tau;<sub>e</sub> +(1/2)&tau;<sub>0</sub>
<br>Cascading ABCD matrices and converting to S parameters, the text shows that
<br>B<sub>1</sub> =B<sub>4</sub> =0
<br>B<sub>2</sub> =-B<sub>3</sub> =j/2 
<br>These values form the fourth column of [S] in (1). They indicate that with excitation at port 4 and all output ports terminated by matched TLs and loads, port 1 is isolated and the signal is equally split between output ports 2 and 3 with a 180 phase shift between them. 
<br><b>Design of 180</b><b></b><b> Hybrid</b>
<br>The ring hybrid is extremely easy to design. First compute the effective permittivity for the chosen substrate from which the strip widths can be determined for the Z<sub>0</sub> and  2Z<sub>0</sub> sections of the device. Then after choosing a center frequency, the lengths &lambda; /4 and 3&lambda; /4 can be calculated again using the effective permittivity. That's basically it.Typical |S<sub>1j</sub>| results for this device are shown in 
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image15.gif"></sub>
<br>Can you interpret the meaning of these results? How do you expect |S<sub>14</sub>| and |S<sub>32</sub>| to behave? 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/the_180_hybrid.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/the_180_hybrid.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image16.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/the_180_hybrid.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image18.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image18.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_the_180_hybrid/image17.wmf"></sub>
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
