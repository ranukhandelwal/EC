<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Example_of_a_Normally_Incident_UPW_on_a_Lossless_Half_Space.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Example_of_a_Normally_Incident_UPW_on_a_Lossless_Half_Space" %>
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
	<b>Example of a Normally Incident UPW on a Lossless Half Space</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Example of a Normally Incident UPW on a Lossless Half Space.</b>
<br>Example N29.1. A UPW is incident from free space onto a glass half space with e<sub>r</sub> = 4 and m<sub>r</sub> = 1, as shown in the figurebelow. It is specified that 
<br>E = a<sub>x</sub>1. e<sup>-j</sup><sup>&beta;</sup><sup>z</sup> V/m
<br>and f = 200 MHz. 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image1.gif"></sub>
<br>(a) Determine the time domain E and H for the incident, reflected, and transmitted fields. 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image2.gif"></sub>
<br>There fore
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image3.gif"></sub>
<br>and
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image4.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image5.gif"></sub>
<br>Therefore, for the incident fields: 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image6.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image7.gif"></sub>
<br>where &eta;<sub>0</sub> = 376.73037 beta. We now have the complete time domain expressions for the incident E and H . 
<br>For the reflected fields: 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image8.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image9.gif"></sub>
<br>Note that in turns out E<sub>r</sub> points in the a<sub>x</sub><sup>-</sup> direction, which is opposite our initial assumption in the figure above. But with H<sup>r</sup> pointing in the a<sub>y</sub> direction, the cross product E xH points in the proper direction of propagation, which is the ?a<sub>z</sub> direction for the reflected wave. For the transmitted fields in region 2 we have: 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image10.gif"></sub>
<br>then
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image11.gif"></sub>
<br>For the transmitted magnetic field: 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image12.gif"></sub>
<br>(b) Compute the time average power transmitted through a 5- M<sup>2</sup> surface of the glass. The time average Poynting vector in region 2 is given as.
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image13.gif"></sub>
<br>which has only a z component. Since E<sub>2</sub> and H<sub>2</sub> are not functions of x or y, the total power transmitted though this surface area is simply
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image14.gif"></sub>
<br>(c) Compute the standing wave ratio (SWR). 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image15.gif"></sub>
<br><b>From the VisualEM "Example 6.8” Worksheet</b>
<br>&bull; In the first plot of the worksheet (“Total Ex in regions 1 and 2”) it is apparent that there is more oscillation in <sub>x</sub> per unit z in region 2 (z &gt; 0) than in region 1 (z &lt; 0). Why ? Because the wavelength is smaller in region 2 than region 1: 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image16.gif"></sub>
<br>A smaller wavelength indicates a more electromagnetically "dense” material. 
<br>&bull; The next plot in the worksheet shows that E<sub>1</sub> is the sum of incident and reflected waves. 
<br>&bull; The final plot is an animation of the total electric field in both regions 1 and 2. Study this animation carefully and notice: 
<br>. The wave "pulsates” in region 1. This is what partial wave interference looks like in the time domain. There is no pulsation in region 2 since there is no interference there. 
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image17.gif"></sub>. In region 1: 
<br>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image18.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/example_of_a_normally_incident_upw_on_a_lossless_half_space.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image20.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_example_of_a_normally_incident_upw_on_a_lossless_half_space/image19.wmf"></sub>
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
