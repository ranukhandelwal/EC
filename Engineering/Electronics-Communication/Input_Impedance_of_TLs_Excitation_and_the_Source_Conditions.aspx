<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Input_Impedance_of_TLs_Excitation_and_the_Source_Conditions.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Input_Impedance_of_TLs_Excitation_and_the_Source_Conditions" %>
<%@ MasterType VirtualPath="~/Masters/emlinks.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Input Impedance of TLs Excitation and the Source Conditions</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Input Impedance of TLs Excitation and the Source Conditions.</b>
<br>Keeping with standard circuits concepts, we can define the TL impedance at any position z as simply the ratio
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image1.gif"></sub>
<br>The total voltage and current are themselves the sum of "+” and "-” propagating waves. 
<br>It is helpful to have an analytical expression for the input impedance of an arbitrarily terminated TL. 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image2.gif"></sub>
<br>Towards this objective, we saw in the previous two lectures that the voltage and current everywhere on a homogeneous TL are
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image3.gif"></sub>
<br>We can readily construct according to (1) an input impedance expression for a TL of length L by dividing (2) and (3) for some arbitrary load reflection coefficient T<sub>L</sub> at z = 0: 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image4.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image5.gif"></sub>
<br>Such that
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image6.gif"></sub>
<br>Substituting for T<sub>L</sub> and simplifying gives
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image7.gif"></sub>
<br>This is the input impedance for a lossless TL of length L and characteristic impedance Z0 with an arbitrary load ZL. It is easy to see from (6) that one function of a TL can be as an impedance transformer. 
<br><b>Input Impedance for Special Loads</b>
<br>Three special cases for the input impedance in (6) are: 
<br>1. With an open circuit load ( Z<sub>L</sub>=&infin;), (6) yields
<br>Z<sub>in</sub> = - jZ<sub>0 </sub>cot ((&beta;L))
<br>In other words, the input impedance is purely reactive
<br>Z<sub>in</sub>= jX<sub>in</sub> where ( ) X<sub>in</sub>= -Z<sub>0</sub> cot ((&beta;L) 
<br>A plot of this input reactance is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image8.gif"></sub>
<br>Notice that any value of inductive or capacitive reactance can be achieved at the input of the TL. All we need to do is adjust the electrical length ((&beta;L) of the TL to change this value of input reactance. The electrical length can be changed either by varying the signal frequency or the physical length of the TL. This is an example of the impedance transformation capability of TLs. 
<br>2. With a short circuit load ( Z<sub>0</sub>=0 ), (6) yields
<br>Z<sub>in</sub>=jZ<sub>0</sub>tan (&beta; L) [beta] 
<br>This input impedance is also purely reactive
<br>Z<sub>in</sub>= jX<sub>in</sub> where ( ) in 0 X<sub>in</sub>= Z<sub>0</sub> tan (&beta; L) 
<br>A plot of this input reactance is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image9.gif"></sub>
<br>Again, we see here (as we did earlier with the open circuit load) that any value of reactive impedance can be realized at the input to the TL simply by adjusting the electrical length of the TL. 
<br>3. With the resistive load Z<sub>L</sub>= Z <sub>0</sub>, (6) yields Z<sub>in</sub>= Z<sub>0</sub> [beta] 
<br>The input impedance is Z<sub>0</sub> regardless of the length of the TL. 
<br>Again, note that both input impedances (7) and (9) are purely reactive, which is expected since neither type can dissipate energy, assuming lossless TLs. 
<br><b>Excitation of Transmission Lines</b>
<br>For the sinusoidal excitation of TLs, 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image10.gif"></sub>
<br>the total voltage at z = -L can be found using the input impedance of the TL and this equivalent circuit at the input: 
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image11.gif"></sub>
<br>By voltage division, we can compute Vin from this equivalent circuit at the TL input as
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image12.gif"></sub>
<br>This process is illustrated in the following example. 
<br>Example N18.1: Determine an expression for the voltage at the input to the following TL (open circuit load) assuming R<sub>s</sub> = Z<sub>0</sub>:
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image13.gif"></sub>
<br>To calculate the input voltage V<sub>in</sub> , we'll first determine the input impedance Z<sub>in</sub> . To repeat, this is the effective impedance seen at the TL input terminals z = -L seen looking towards the load. For an open circuit load, we have from (7) that
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image14.gif"></sub>
<br>An equivalent circuit can now be constructed at the input to the
<br>TL by using R<sub>s</sub> (= Z<sub>0</sub>) and Z<sub>in</sub> as
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image15.gif"></sub>
<br>From voltage division
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image16.gif"></sub>
<br>which is the desired quantity. 
<br>This circuit voltage V<sub>in</sub> is also the voltage on the TL at z = -L. 
<br>That is, from (4) above with T <sub>L</sub> = - 1+ V( z= -L)2V<sub>0</sub><sup>+</sup>cos(-&beta;L) 
<br>Since ( ) V <sub>in</sub>=V( z= -L ), we can equate these two voltages giving
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image17.gif"></sub>
<br>More often than not, expressions of this type are used to Determine V<sub>0</sub><sup>+</sup> + in terms of V<sub>s</sub> and R<sub>s</sub> . 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>6859
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>7641
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>7501
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>8747
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>13468
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>7541
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>7300
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>7320
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>19140
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>9504
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>14074
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>12774
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/input_impedance_of_tls_excitation_and_the_source_conditions.aspx"></asp:HyperLink> 
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
	<br>15315
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_input_impedance_of_tls_excitation_and_the_source_conditions/image19.wmf"></sub>
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
