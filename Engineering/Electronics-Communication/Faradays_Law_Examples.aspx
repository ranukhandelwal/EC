<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Faradays_Law_Examples.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Faradays_Law_Examples" %>
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
	<b>Faradays Law Examples </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Faradays Law Examples</b>
<br>We will now solve a number of examples that involve Faraday's law. 
<br>Example N3.1: Determine the emf around the contour c that includes the moving slider in the figure below. 
<br>. <sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image1.gif"></sub>
<br>Apply Faraday's law to the contour c in the direction shown: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image2.gif"></sub>
<br>&psi;<sub>m</sub> changes with time because the surface s increases with t as the slider moves to the right. The magnetic flux density  , however, is not changing with time. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image3.gif"></sub>
<br>Note that we have ignored <sub>ind</sub> created by current induced in the wire. This would be a reasonable assumption for a high resistance wire, for example. Another way to approach this problem is with the Lorentz force equation In this problem, <sub>e</sub>=0 while
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image4.gif"></sub>
<br>Then
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image5.gif"></sub>
<br>Both approaches give the same result. Physically, this emf will cause charges to move in the wire since  / q = v   (like an electric field!): 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image6.gif"></sub>
<br>The equivalent circuit model for this is: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image7.gif"></sub>
<br>Note in the construction of this equivalent circuit that: 
<br>1. positive current is in the direction of positive emf, 
<br>2. current enters the negative terminal of the source. 
<br>Example N3.2: Determine the voltage measured by the highimpedance
<br>voltmeter in the circuit below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image8.gif"></sub>
<br>For the direction of c shown, 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image9.gif"></sub>
<br>This emf serves as a voltage source in the equivalent lumpedelement circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image10.gif"></sub>
<br>It is very important to note the polarity of the equivalent emf voltage source in this circuit. The contour c was initially chosen clockwise. Consequently, the current I must enter the ‘-' terminal of this voltage source, as shown. Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image11.gif"></sub>
<br>Summary of steps for the solution: 
<br>1. Begin with the actual physical circuit with dimensions. 
<br>2. Pick a direction for the contour c (used in the emf equation). 
<br>3. Compute emf (- d&psi;/ dt ). 
<br>4. Construct the lumped element circuit (no dimensions) inserting the appropriate equivalent emf source(s). 
<br>5. Solve the lumped element circuit for the desired voltage(s) and current(s). 
<br>Example N3.3: Determine the voltage measured in the circuit of the previous example, but with the high-impedance voltmeter and leads oriented as shown below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image12.gif"></sub>
<br>Equivalent lumped element circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image13.gif"></sub>
<br>Using KVL around loop L gives: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image14.gif"></sub>
<br>Something very strange has just happened. The measured voltages in these last two example problems have very different values 8 /5 V and 12/ 5 V)! 
<br><b>Voltage May Not Be Unique</b>
<br>This is an example illustrating that "voltage” is not a unique quantity for time-varying electromagnetic fields. Measured voltages may depend on how the leads of the voltmeter (or oscilloscope) are laid out and the time rate of change of the magnetic flux through this measuring loop. 
<br>To be more specific, why was the measured voltage different in the previous two examples? Because electric scalar potential is not unique for time-varying fields. Consider Faraday's law
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image15.gif"></sub>
<br>and the contours shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image16.gif"></sub>
<br>Along c, (1) is
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image17.gif"></sub>
<br>This is generally not zero unless: 
<br>. no time variation, or
<br>.no magnetic flux linkage through s. 
<br>Therefore, we conclude that is not conservative. Since it is not conservative, we cannot (uniquely!) define a scalar potential as E<sub> e</sub> as was done in Ch. 3. But, if we did define
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image18.gif"></sub>
<br>we can see from (2) that &phi;<sub>e</sub> depends on the contour taken, and consequently &phi;<sub>e</sub> is not unique! You will generally compute (or measure) a different voltage depending on the path used for the integration (or how the measurement leads are laid out)! At "high” frequencies, this non-uniqueness of scalar electric potential can adversely affect oscilloscope measurements. A typical oscilloscope is single-ended input meaning that the black alligator clip on the scope probe is earth ground. 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image19.gif"></sub>
<br>Measurements taken without connecting the scope probe alligator clip to ground will be correct at "low” frequencies (remember the scope is single-ended input). 
<br>Without connecting the alligator clip, the "emf loop” can be quite large since the ground loop passes through the o'scope power cord, through the lab bench electrical power wiring, back through the function generator power cord, through the function generator test leads then back to the circuit. 
<br>At high frequencies (say roughly &gt; 100 MHz), this emf loop can cause the measured voltage to change as the leads are moved around! Not desirable. With the alligator clip attached, the "emf loop” is greatly reduced in size. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image20.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_examples.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image22.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_examples/image21.wmf"></sub>
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
