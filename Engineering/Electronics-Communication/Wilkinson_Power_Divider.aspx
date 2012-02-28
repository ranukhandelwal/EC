<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Wilkinson_Power_Divider.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Wilkinson_Power_Divider" %>
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
	<b>Wilkinson Power Divider</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Wilkinson Power Divider</b>
<br>The next three port network we will consider is the Wilkinson power divider
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image1.gif"></sub>
<br>This is a popular power divider because it is easy to construct and has some extremely useful properties: 
<br>1. Matched at all ports, 
<br>2. Large isolation between output ports, 
<br>3. Reciprocal, 
<br>4. Lossless when output ports are matched. 
<br>There is much symmetry in this circuit which we can exploit to make the S parameter calculations easier. Specifically, we will excite this circuit in two very special configurations (symmetrically and anti-symmetrically), then add these two solutions for the total solution. this mathematical process is called an "even-odd mode analysis.” It is a technique used in many branches of science such as quantum mechanics, antenna analysis, etc. 
<br>We will now show that for a 1:1 Wilkinson power divider, Z<sub>0,Q</sub> = 2Z<sub>0</sub> and R = 2Z<sub>0</sub> . To simplify matters, as in the text, we will: 
<br>1. Normalize all impedances to Z<sub>0</sub> , 
<br>2. Not draw the return line for the TL. 
<br>For example, a TL with characteristic impedance 2Z<sub>0</sub> will be delineated as
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image2.gif"></sub>
<br>Hence, the Wilkinson power divider shown in the first figure above and with matched terminations can be drawn as
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image3.gif"></sub>
<br><b>Even-Odd Mode Analysis of the Wilkinson Power Divider</b>
<br>In the even-odd mode analysis for the S parameters, we will first excite this network symmetrically at the two output ports, followed by an anti-symmetrical excitation. 
<br>&bull; Symmetric excitation (even mode): 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image4.gif"></sub>
<br>Notice that I = 0 because we have symmetric excitation. Hence, V<sub>2</sub> =V<sub>3</sub> and we can bisect this circuit as shown to simplify the analysis : 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image5.gif"></sub>
<br>We can recognize this circuit as a QWT. Consequently, 
<br>Z<sup>e</sup><sub>in</sub> =Z<sup>2</sup><sub>0,Q</sub>/2
<br>Or
<br>Z<sub>0,Q</sub> =2Z<sup>e</sup><sub>in</sub>
<br>We want the output ports to be matched. Therefore, 
<br>Z<sup>e</sup><sub>in</sub> =1 =>  z<sub>0,Q</sub> =2 
<br>Since z<sup>e</sup><sub>in</sub> =1, then by voltage division at the output port
<br>V<sup>e</sup><sub>2</sub> =(Z<sup>e</sup><sub>in</sub> /Z<sup>e</sup><sub>in</sub> +1)V<sub>g2</sub> =(1/2)V<sub>g2</sub> =V 
<br>Next, to find V<sup>e</sup><sub>1</sub> we'll use the TL equation
<br>V(x)=V<sup>+</sup>(e<sup>-j</sup><sup>&beta;</sup><sup>x</sup> +Te<sup> j</sup><sup>&beta;</sup><sup>x</sup>)
<br>so that 
<br>V (0) =V<sup>+</sup>( 1+?)=V<sup> e</sup><sub>1</sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image6.gif"></sub>
<br>&tau; is the reflection coefficient at port 1 seen looking towards the normalized load of 2 ohm/ohm. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image7.gif"></sub>
<br>Substituting V<sup>+</sup> from (6) into (5) and using (7) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image8.gif"></sub>
<br>&bull; Anti-symmetric excitation (odd mode): 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image9.gif"></sub>
<br>Since the circuit is fed anti-symmetrically, V<sub>3</sub> = ?V<sub>2</sub> and the voltage = 0 at points A and B. Hence, to simplify the analysis, we can bisect the circuit with grounds as shown
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image10.gif"></sub>
<br>For z<sup>o</sup><sub>in</sub> , notice that the load is a short circuit and the TL is &lambda;/4 long (1/2 rotation around the Smith chart). This means z<sup>0</sup><sub>in</sub> = &infin;.Therefore, to match port 2 (and 3) for odd mode excitation, Select
<br>r/2 =1=>  r = 2 [ohm/ohm] 
<br>Further, because z<sup>0</sup><sub>in</sub> = &infin;, then with r = 2 and port 2 matched: 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image11.gif"></sub>
<br>Even and odd solutions are eigenvectors. Any solution can be determined by summing appropriately weighted eigenvectors. With this information, we'll be able to deduce most of the S parameters. But first, let's determine Z<sub>in,1</sub> so we can compute S<sub>11</sub> . Terminating ports 2 and 3 gives the circuit in
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image12.gif"></sub>
<br>By symmetry, V<sub>2</sub> =V<sub>3</sub> so we can bisect the circuit like we did in the even mode analysis
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image13.gif"></sub>
<br>This input impedance is that from a parallel combination of two matched QWTs: 
<br>Z<sub>in,1</sub> =Z<sub>0,Q</sub>||Z<sub>0,Q</sub>=(2)<sup>2</sup>||(2)<sup>2</sup> =1
<br>In other words, we have a matched input at port 1. Also, notice that the effects of r no longer appear so this circuit is ideally lossless when matched at both output ports. 
<br><b>S Parameters of the Wilkinson Power Divider</b>
<br>Finally, we will determine the S parameters of the Wilkinson power divider. 
<br>&bull; S<sub>11</sub> . From (11), 
<br>S<sub>11</sub> = 0 
<br>&bull; S<sub>22</sub> and S<sub>33</sub> . We'll compute S<sub>22</sub>here, while by symmetry, 
<br>S<sub>33</sub> = S<sub>22</sub>.
<br>A circuit with a voltage source applied to only port 2 can be obtained by simply adding the even and odd mode excitation problems together: 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image14.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image15.gif"></sub>
<br>To be specific, what we're adding together are the voltages (and currents) everywhere in the two circuits. By definition
<br>S<sub>22</sub> =(V<sup>-</sup><sub>2</sub>/V<sup>+</sup><sub>2</sub> )|<sub>V</sub><sup>+</sup><sub>1 =V</sub><sup>+</sup><sub>3 =0</sub> 
<br>The voltage wave amplitudes V<sup> -</sup><sub>2</sub> and V<sup>+</sup><sub>2</sub> are the sum of the respective voltages from the even and odd mode excitation circuits. That is,
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image16.gif"></sub>
<br>Earlier in (3), we chose z<sub>0,Q</sub> =2 in the even mode solution so that port 2 was matched, meaning , V<sup>e,-</sup><sub>2</sub> =0 Likewise, in the odd mode solution we chose r = 2 to match port 2, meaning , V<sup>e, +</sup><sub>2</sub> = 0. Using these two results means that
<br>S<sub>22</sub> = 0 = S<sub>33</sub>
<br>The last equality is valid due to the symmetry in the Wilkinson power divider circuit with respect to ports 2 and 3. 
<br>&bull; S<sub>12</sub> and S<sub>21</sub> . By definition
<br>S<sub>12</sub> = (V<sub>1</sub><sup>-</sup>/V<sup>+</sup><sub>2</sub>)|<sub>V</sub><sup>+</sup><sub>1=V</sub><sup>+</sup><sub>3 =0</sub> 
<br>We can use the previous figure with excitation at port 2 for this solution to S<sub>12</sub>. We'll add voltages together from the even and odd mode solutions, similar to what we did in the solution for S<sub>22</sub>. because port 1 is matched in both the even and odd mode circuits ( V<sup>e,+</sup><sub>1</sub> =V<sup>o,+</sup><sub>1</sub> = 0), the total voltage at port 1 is just V<sup>-</sup><sub>1</sub>:
<br>V<sup>+</sup><sub>1</sub> =V<sub>1</sub>=V<sup>e</sup><sub>1</sub> +V <sup>0</sup><sub>1</sub>
<br>Similarly, since port 2 is matched in both the even and odd mode circuits (V<sup>e,-</sup><sub>2</sub> =V<sup>o,-</sup><sub>2</sub> = 0) then
<br>V<sup>-</sup><sub>2</sub> =V<sub>2</sub>=V<sup>e</sup><sub>2</sub> +V <sup>0</sup><sub>2</sub>
<br>Consequently, using (14) and (15) along with (4), (8), (10), and (11) we find
<br>S<sub>12</sub> ={(V<sup>e</sup><sub>1</sub>+V<sup>e</sup><sub>1</sub>)/V<sup>e</sup><sub>2</sub>+V<sup>e</sup><sub>2</sub>)}=(-jv2+0)/(V+V) = -j(2/2) 
<br>Or
<br>S<sub>12</sub> =-j/ 2 =S<sub>21</sub>
<br>The last equality arises because the Wilkinson power divider is a reciprocal network. 
<br>&bull; S<sub>13</sub> and S<sub>31</sub> . Using a similar approach as that for S<sub>12</sub> and S<sub>21</sub> , it can be shown that
<br>S<sub>13</sub> =S<sub>31</sub> =-j/ 2
<br>&bull; S<sub>32</sub> and S<sub>23</sub> . By definition
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image17.gif"></sub>
<br>But, from the odd and even nature of the solutions, we know V<sup>e,-</sup><sub>3</sub> =V<sup>e,-</sup><sub>2</sub> and V<sup>0,-</sup><sub>3</sub> =-V<sup>0,-</sup><sub>2</sub>
<br>such that, 
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image18.gif"></sub>
<br>Using (4) and (10) in (18), we find: 
<br>S<sub>32</sub> =(V-V)/(V+V)= 0= S<sub>23</sub>
<br>This last result shows that at the design frequency there is complete isolation between the output ports! Nice. Remember that these S parameters for the Wilkinson divider are only applicable at the design frequency since we used QWTs. <b>Recap</b>
<br>Let's reflect on this Wilkinson power divider design for a moment. We listed on page 1 four properties we wanted to build into this power divider. We began with only two degrees of freedom in the circuit on page 1: Z<sub>0,Q</sub> and R. Both of these were used to obtain three matched ports. 
<br>So how are the other three conditions satisfied since we've used up all the degrees of freedom available to us? First, the circuit is obviously reciprocal since it is constructed from metal and dielectric materials only. 
<br>The remaining two conditions (large isolation and lossless when the output ports are matched) are met because of the symmetric nature of the circuit! Consequently, it is very important to ensure that Wilkinson power divider circuits maintain this symmetry when they are constructed. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/wilkinson_power_divider.aspx"></asp:HyperLink> 
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
	<br>2385
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/wilkinson_power_divider.aspx"></asp:HyperLink> 
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
	<br>2307
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/wilkinson_power_divider.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_wilkinson_power_divider/image20.wmf"></sub>
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
