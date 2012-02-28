<%@ Page Language="C#" MasterPageFile="~/Masters/ec2links.master" AutoEventWireup="True" CodeBehind="RL_Circuits_Inductive_Kick_Diode.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.RL_Circuits_Inductive_Kick_Diode1" %>
<%@ MasterType VirtualPath="~/Masters/ec2links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>RL Circuits Inductive Kick Diode Snubbers</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>RL Circuits. Inductive Kick. Diode Snubbers.</b>
<br>Inductors are the third basic discrete component listed in . Uses for inductors in the NorCal 40A include filters and RF "chokes.” The latter provides essentially a short circuit at DC and nearly an open circuit at RF frequencies. (Essentially the opposite function of a DC blocking capacitor!) You will wind some of your own inductors for the NorCal 40A. (The others are axial-lead inductors. They look like resistors, but are green with colored bands.) 
<br>The inductors you wind will be wound on a toroidal-shaped ferrite core. Toroid inductors are essentially "self shielding” at RF frequencies since most magnetic flux ?m is contained in the core. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image1.gif"></sub>
<br>Consequently, these inductors can be placed close to each other on a PCB without too much mutual (and undesirable) interaction. However, be careful in your own designs. (For example, keep air-core inductors perpendicular to each other.) Inductors store energy in a magnetic field. They also oppose a change in the current through them. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image2.gif"></sub>
<br>This opposition can cause the inductor voltage to become enormous if there is a big change in the current. Called "inductive kick.” To see this explicitly, consider this simple circuit (an inductor connected directly to an AWG, for example) 
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image3.gif"></sub>
<br>The open circuit source voltage is
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image4.gif"></sub>
<br>We will carefully analyze this circuit to predict the input voltage Vin. In the following analysis we'll assume that ? = L / R ??T / 2. 
<br>1. At "A” Vs has reached steady state so that I(t) is nearly constant and approximately equal to V R + R , where RL is the resistance of the inductor. The work done by the source against the magnetic force produces energy stored in the magnetic field
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image5.gif"></sub>
<br>2. From "B” to "C” the source Vs is switching from Vm to –Vm volts. Since L V = LdI dt , I cannot change instantly, but it can change rapidly. 
<br>3. From Faraday's Law of Induction
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image6.gif"></sub>
<br>where m ? = magnetic flux = B( t) ? N ? A, where N = number of identical turns of wire and A is the cross-sectional area. 
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image7.gif"></sub>
<br>Recall that as Vs goes from Vm to –Vm, there will be a rapid decrease in I(t). It's not an instantaneous change from V<sub>m</sub>|( R<sub>s</sub> + R<sub>L</sub> )to ?V<sub>m (R s+ RL) because of L, but a rapid change. </sub><sub>
<br>However, B (t )? I (t ) which implies there will be a rapid decrease in B(t ) and, hence, m ?( t) . </sub><sub>
<br>4. Therefore, the emf = ?d?m dt will be large and positive. This emf (a net "push” on the charges) keeps current moving in the same direction (from top to bottom in the figure) and thus opposing change. </sub><sub>
<br>5. Using the equivalent lumped circuit above, we see that</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image8.gif"></sub></sub><sub>
<br>Notice the negative sign! With m ? = LI , then</sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image9.gif"></sub></sub><sub>
<br>which is what we originally stated on page 2. Now, we'll use (1) to predict the voltage Vin =VL shown in the circuit on page 2. </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image10.gif"></sub></sub><sub>
<br>In graphical form: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image11.gif"></sub></sub><sub>
<br>This rapidly changing current in an inductor can produce enormous Vin (= VL). Sometimes this is useful, as in an automobile spark ignition (see Fig. 2.19). Similarly, this "inductive kick” can produce arcing in switches when they turn off electric motors. (I had a switch in a vacuum cleaner burn a hole through beryllium-copper sliding contacts due to this source of arcing.) In sensitive electronic circuits, such inductive kick can be catastrophic and burn out transistors, for example. You will study this phenomenon in Probs. 5 and 6. From Fig. 2.32(b) in Prob. 5: </sub><sub>
<br></sub><sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image12.gif"></sub></sub><sub>
<br>When Q turns off, there would be a very large and negative voltage VL if D were not present. This large voltage appears across c and e of Q. If this voltage is too large, then Q could be damaged. (Think of L as an equivalent inductance of an electric motor, for example.) </sub><sub>
<br>With the snubber diode D, this reverse voltage on L is limited to the forward voltage drop of D! (Note that D must be able to withstand all of the current that initially exists in L just before D begins to conduct.) We'll see the snubber diode again in Prob. 20 inside the Magnecraft </sub><sub>W171DIP-7 reed relay. </sub>
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
<br><b>Discuss about MOSFET here</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Discussion Board for MOSFET</b>
<br>You can discuss all your issues on MOSFET here</td>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>sir,
<br>plz send me the notes for fourier transforms its very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>Aug 31, 12:14:03 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>6815
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>Sir I want tutorial on Fourier Transform......... 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;jainpooja.1989@yahoo.com</b> 
</td>

      
      <td class="txt">
	<br>Jul 15, 3:24:49 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7599
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>sir i want tutorial on fourier transform 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;apseng2005</b> 
</td>

      
      <td class="txt">
	<br>Jul 11, 10:08:19 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7459
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>heloo sir ,i want a tutorial for match filter.plz send it as soon as possible it is very urgent. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;richa</b> 
</td>

      
      <td class="txt">
	<br>Jun 4, 2:25:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>8707
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>I want lecture notes for single phase ac &amp; 3phase ac circuits 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;kalaivanisudhagar</b> 
</td>

      
      <td class="txt">
	<br>May 21, 11:32:46 AM
</td>

      
      <td class="txt">
	<br>1
</td>

      
      <td class="txt">
	<br>13422
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>what is the work done to move a charge? derive an expression for assembling a configuration of point charges
<br>
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:28:18 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7501
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>i want lcr circiut teorems derivations 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;harismhkt</b> 
</td>

      
      <td class="txt">
	<br>May 12, 8:23:58 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7255
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>i want oscillator frequency derivations for all. plz let me know from where i can get that 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;shruthi.s</b> 
</td>

      
      <td class="txt">
	<br>May 4, 5:21:01 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>7281
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>I've got a question in one of my revision papers,
<br>
<br>Explain the advantages of representing a transistor by means of an equivalent circuit circuit model
<br>
<br>The only thing i can remember is that you can take complex circuits and break them down into simpler circuits which are easier to understand, 
<br>
<br>Is this the only advantage or do you have any more?
<br>
<br>Please help! 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;ally79</b> 
</td>

      
      <td class="txt">
	<br>Apr 12, 6:33:57 PM
</td>

      
      <td class="txt">
	<br>2
</td>

      
      <td class="txt">
	<br>19092
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>I want to know the variation of reverse saturation current with the increase in temperature for both germanium and silicon diodes 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;bhrahma@yahoo.co.in</b> 
</td>

      
      <td class="txt">
	<br>Jan 28, 7:17:23 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>9455
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>analog and digital communication system, fiber optic communication, telecommunication technique and application, mobile communication 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;hirakec@gmail.com</b> 
</td>

      
      <td class="txt">
	<br>Dec 17, 10:38:27 AM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>14003
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>I WANT A TUTORIAL FOR CMOS TRANSISTORS. 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;maroofalamkhan</b> 
</td>

      
      <td class="txt">
	<br>Dec 14, 3:29:22 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>12727
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/rl_circuits_inductive_kick_diode.aspx"></asp:HyperLink> 
<br>what about coaching 
<br>
<br><b>Posted By :-</b><b> </b><b>&nbsp;satish21</b> 
</td>

      
      <td class="txt">
	<br>Dec 7, 5:27:52 PM
</td>

      
      <td class="txt">
	<br>0
</td>

      
      <td class="txt">
	<br>15258
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink15" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_rl_circuits_inductive_kick_diode/image14.wmf"></sub>
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
