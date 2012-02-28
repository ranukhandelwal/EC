<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Basic_Properties_of_Magnetic_Materials.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Basic_Properties_of_Magnetic_Materials" %>
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
	<b>Basic Properties of Magnetic Materials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Basic Properties of Magnetic Materials</b>
<br>Magnetic materials become "magnetized” when they are placed in a magnetic field. Examples of magnetic materials include steel and iron. (These are not necessarily magnets.) This magnetization is analogous to the "polarization” of dielectric materials when they are placed in an electric field. 
<br><b>Torque on a Current Loop in a Magnetic Field</b>
<br>To develop an appreciation for the effects of magnetized materials, we will first consider a small loop of current in a uniform B: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image1.gif"></sub>
<br>The net force F<sub>net</sub> on the loop can be computed as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image2.gif"></sub>
<br>We see that the net force on the loop is zero. It turns out that this is true for any shape of current loop provided the loop is immersed in a uniform B. While F<sub>net</sub> =0 , this loop does experience a torque, T . (Recall that for a point object T = r x F .) To see this effect, consider the two current segments 1 and 2 shown in the figure. Using the Lorentz force equation
<br>F<sub>m</sub> = qv x B
<br>Then
<br>&bull; at position 1, F<sub>m</sub> is in the z &mu;a direction
<br>&bull; at position 2, F<sub>m</sub> is in the z +a direction
<br>Consequently, this loop will rotate if it's free to do so. We can compute the torque on this loop beginning with the elemental torque dT on current element dl as
<br>dT = r x dF
<br>where dF = Idl x B. 
<br>The total net torque on the entire loop is then which evaluates to
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image3.gif"></sub>
<br><b>Magnetic Dipole Moment</b>
<br>This result in (1) can be expressed in the more succinct form T = mx B [N&pi;m] 
<br>where m is called the magnetic dipole moment of the current loop given by
<br>m<sub>n</sub> = a I&mu; a<sup>2</sup>[A&mu;m<sup>2</sup> ] for this circular loop. The direction of an is determined by the current direction and the RHR as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image4.gif"></sub>
<br>In general, for any small, arbitrarily-shaped and planar current loop
<br>m = a<sub>a</sub> m = a<sub>a</sub> IA 
<br>where A is the planar area of the loop. Finally, observe two points concerning this magnetic dipole moment: 
<br>1. This current loop will rotate if it is free to do so. With the thumb in the direction of T , the fingers give the sense ofrotation. This loop rotation will continue until m and B are parallel. Then T = mx B = 0. (This is a general result.) 
<br>2. The magnetic dipole moment m is analogous to p in electrostatics: Electrostatics: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image5.gif"></sub>
<br>Magnetostatics: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image6.gif"></sub>
<br><b>Magnetic Material Model</b>
<br>The magnetic dipole moment is used to model the microscopic effects of magnetized materials. For example: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image7.gif"></sub>
<br>Note that "magnetized” does not mean permanent magnetization. Rather, a "magnetized” material in magnetostatics is analogous to a "polarized” dielectric in electrostatics. 
<br>There are many sources for the magnetization effect other than the "current loops” shown above. Some of these sources require a quantum mechanical description. 
<br><b>Magnetization Vector</b>
<br>Consider a magnetized volume of material containing many magnetic dipole moments m<sub>i</sub> : 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image8.gif"></sub>
<br>A magnetization vector field M is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image9.gif"></sub>
<br>where N is the number of magnetized molecules in &mu;v . The macroscopic effects of a magnetized material are modeled with M in a process similar to P and a polarized dielectric. In particular, the magnetic field intensity H is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image10.gif"></sub>
<br>or equivalently, 
<br>B =&mu;<sub>0</sub>H +&mu;<sub>0</sub>M
<br>From experimentation, it has been found for many materials that 
<br>M<sub>m</sub> = &mu; H 
<br>&mu;<sub>m</sub> is called the magnetic susceptibility, a dimensionless quantity. Substituting (6) into (5) gives
<br>B =&mu;<sub>0</sub> H +&mu;<sub>0</sub> &pi;<sub>m</sub> H =&mu;<sub>0</sub> (1+&pi;<sub>m</sub>) H
<br>which can be written as
<br>B = &mu;H 
<br>This is the second constitutive equation we will use. In 
<br>&mu;=&mu;<sub>r</sub>&mu;<sub>0</sub> =(1+ &pi;<sub>m</sub>)&mu;<sub>0</sub> 
<br>and &pi;<sub>r</sub> is called the relative permeability (dimensionless). 
<br><b>Types of Magnetic Materials</b>
<br>There are five main types of magnetic materials: 
<br>1. Diamagnetic - 1 &mu;<sub>r</sub>&#8776. Examples are water and copper. 
<br>2. Paramagnetic - 1 &mu;<sub>r</sub> &#8776. Examples are air and aluminum. 
<br>3. Ferromagnetic - 1&mu;<sub>r</sub> &lt;&lt;. Examples are cobalt, steel and nickel. 
<br>4. Ferrimagnetic - 1&mu;<sub>r</sub> &gt;&gt; (but less than ferromagnetic materials). Examples are MnZn and NiZn. 
<br>5. Antiferromagnetic - 1 &mu;<sub>r</sub> &pi; . Examples are chromium and manganese. 
<br>Ferromagnetic materials are a very interesting class of materials. They have extremely large&mu;<sub>r</sub> reaching as high as 1,000,000! 
<br>However, these materials can be highly nonlinear. They are used in electric motors and generators among other applications. Ferromagnetic materials are also used to make so called permanent magnets. The reason ferromagnetic materials have such large &pi;<sub>r</sub> is the existence of magnetized domains. These are regions of high M with dimensions on the order of 0.1 to 1 mm3 inside the material: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image11.gif"></sub>
<br>Because of these magnetized domains and their interactions (which can be highly quantum mechanical), there are three distinct regimes in which the ferromagnetic material may operate: 
<br>1. Without an external B, the domains are randomly orientated and the net M = 0. This is point "O” in the magnetization curve: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image12.gif"></sub>
<br>2. With a small external B, the domains align and produce a large M , and consequently a large &mu;<sub>r</sub>. This linear region is called the "initial” magnetization curve
<br>3. If the external B becomes large enough, the material can "saturate” and enter the hysteresis region. This is very nonlinear. For example, when H is reduced to zero, B = B<sub>r</sub> in the material. It is not zero! This material is now a permanent magnet. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>6861
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>13469
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>7548
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>7301
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>19143
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_magnetic_materials.aspx"></asp:HyperLink> 
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
	<br>15316
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image15.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image15.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_magnetic_materials/image14.wmf"></sub>
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
