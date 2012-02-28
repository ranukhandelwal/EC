<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Basic_Properties_of_Dielectric_Materials.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Basic_Properties_of_Dielectric_Materials" %>
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
	<b>Basic Properties of Dielectric Materials</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Basic Properties of Dielectric Materials</b>
<br>In electromagnetics we classify materials generally into four broad categories: 
<br>1. Conductor - free charge moves easily
<br>2. Semi-conductor - free charge moves somewhat
<br>3. Dielectric (insulators) - no free charge, but produces change to electric field
<br>4. Magnetic - produces change to magnetic field
<br>The electric dipole is used to model the effects that a dielectric material produces on an external electric field. Before discussing dielectric materials, we will first quickly review the electric dipole moment model. 
<br><b>Electric Dipole</b>
<br>An electric dipole is formed from two charges of opposite sign and equal magnitude located close together (wrt to observation distance). 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image1.gif"></sub>
<br>The absolute electric potential is the sum
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image2.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image3.gif"></sub>
<br>Now, if the observation distance is much greater than d, then (1) can be approximated as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image4.gif"></sub>
<br>Defining the electric dipole moment as
<br>p = qd 
<br>then (2) can be expressed as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image5.gif"></sub>
<br>This is the absolute potential at point r of an electric dipole of moment p located at coordinates r, where R =|r&epsilon;r|&epsilon; . Equation (4) is an accurate representation of the potential and electric field produced by the dipole provided the observation distance is approximately 2.5 times d. (See VisualEM, Section 3.6.2 worksheet.) 
<br><b>Bound Charge</b>
<br>When a dielectric material is placed in an external electric field, the dielectric alters this electric field due to bound or polarization charges that are formed in the dielectric. A capacitor is an example of this. 
<br>A simplistic model of the atomic conditions that produce this bound charge is the displacement of the electron cloud around a nucleus. In an electric field, the negatively charged electron cloud becomes displaced very slightly from the positively charge nucleus: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image6.gif"></sub>
<br>The electrostatic effects of this displacement (potential and electric field) are model by an electric dipole moment p: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image7.gif"></sub>
<br>This is only an approximation, but for charge neutral molecules and relatively "small” electric fields, it is a very, good model. Using this model, a polarized material can be visualized as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image8.gif"></sub>
<br>These bound charges cannot move. Unlike free charge, bound charge is induced by an external E field and vanishes when the external E field is removed. 
<br><b>Multipole Expansion</b>
<br>A localized distribution of electric charge density p<sub>e</sub>(r') is centered at the origin of a coordinate system. The electric potential outside of an imaginary sphere of radius R that fully contains the charge can be written as an expansion in so-called spherical harmonics as (Jackson, 3<sup>rd</sup> ed., p. 145) 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image9.gif"></sub>
<br>where q<sub>lm</sub> is the multipole moment and Y<sub>im</sub> is the spherical harmonic function. After a bit of manipulation, this equation reduces to
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image10.gif"></sub>
<br>The higher order terms in this expression decay as 1/r<sup>4</sup> or quicker. Hence, the potential produced by these terms is much smaller than the 1/r<sup>2</sup> term. Further, if the entire distribution of charge is neutral so that Q<sub>e</sub>=0, then the potential is dominated by the 1/r<sup>2</sup> term, which is the electric dipole term. That is why we model the bound charge in a material by the dipole term only. 
<br><b>Polarization Vector</b>
<br>Consider a polarized volume with a density of p's: 
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image11.gif"></sub>
<br>A polarization vector P is defined as
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image12.gif"></sub>
<br>where N is the number of molecules in &epsilon;v . The macroscopic effects of a polarized dielectric material are modeled with P, which really is an average dipole moment per unit volume of the material. 
<br>In summary, when a dielectric material is placed in an external electric field, as we saw in the previous lecture, the dielectric alters this electric field due to bound or polarization charges that are formed in the dielectric. 
<br><b>Electric Susceptibility and Permittivity</b>
<br>It is customary in electromagnetics to "bury” the effects of bound polarization effects in materials through the electric flux density vector, D. The polarization effects of a dielectric can be accounted for by defining D as What we desire now is to know P in terms of E. Basically, without knowing P this theory is not very useful. 
<br>It has been found through experimentation that for many materials with "small” E that
<br>P =&epsilon;<sub>0</sub>&epsilon;<sub>e</sub>E
<br>where &epsilon;<sub>e </sub>is the electric susceptibility of a material (dimensionless). Substituting (7) into (6) gives
<br>D =&epsilon;<sub>0</sub>E +&epsilon;<sub>0</sub>&epsilon;<sub>e</sub>E =&epsilon;<sub>0</sub> (1+ &epsilon;e ) E
<br>We can rewrite this as
<br>D =&epsilon;E [C/m<sup>2</sup>] 
<br>This is called a constitutive equation. The constant &epsilon; is called the permittivity of the material where
<br>&epsilon;=&epsilon;<sub>r</sub>&epsilon;<sub>0</sub> = (1+ &epsilon;<sub>e</sub> )&epsilon;<sub>0</sub> [F/m] 
<br>and 
<br>&epsilon;<sub>r</sub> =1+ &epsilon;<sub>e</sub>
<br>is called the relative permittivity of the material (dimensionless). The relative permittivity &epsilon;<sub>r</sub> is usually measured for different materials and then tabulated. (A good reference book is A. von Hippel, Dielectric Materials and Applications, Artech House, 1995.) Here are some examples for DC fields: 
<br><b>Definitions</b>
<br>&bull; Linear material means &epsilon;<sub>e</sub> &epsilon; f (E) 
<br>&bull; Homogeneous material means &epsilon;<sub>e</sub> &epsilon; f (r ) 
<br>&bull; Isotropic material means &epsilon;<sub>e</sub> &epsilon; f (a<sub>E</sub> ) where a<sub>E</sub> is the direction of E
<br>&bull; Simple material means that it is linear, homogeneous and isotropic. 
<br><b>Gauss' Law</b>
<br>In the presence of dielectric materials, there is a slight change that must be made to Gauss' law: 
<br>&epsilon;<sub>s</sub>D&epsilon;ds = Q<sub> free</sub>
<br>where Q<sub>free</sub> is the net free charge enclosed by s. Applying the divergence theorem to (11) and simplifying gives the point form of Gauss' law: 
<br>&epsilon;&epsilon;D = &epsilon;<sub>v</sub>
<br>where it is understood that &epsilon;v is the free charge density only. These two equations (11) and (12) are ALWAYS true. From these two equations, we can deduce that sources of D are free charge only. Conversely, the sources of E are both free and bound charge. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image13.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/basic_properties_of_dielectric_materials.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image14.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image15.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image16.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image16.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image15.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_basic_properties_of_dielectric_materials/image15.wmf"></sub>
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
