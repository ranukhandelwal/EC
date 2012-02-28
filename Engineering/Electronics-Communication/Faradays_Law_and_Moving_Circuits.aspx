<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Faradays_Law_and_Moving_Circuits.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Faradays_Law_and_Moving_Circuits" %>
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
	<b>Faradays Law and Moving Circuits</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Faradays Law and Moving Circuits.</b>
<br>In the previous two lectures, we've been investigating Faraday's law, which is written as
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image1.gif"></sub>
<br>As discussed in Section 9.3, however, there is an alternate form of (1) that is sometimes used when the circuit moves in space. This is especially true if B FONT FACE="Symbol"&gt;` is also a function of time. Consider the circuit shown below: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image2.gif"></sub>
<br>This loop is traveling with velocity v (relative to the frame defining B FONT FACE="Symbol"&gt;` ) in a time-varying B FONT FACE="Symbol"&gt;` field, B FONT FACE="Symbol"&gt;` ((t) ). The emf measured by a high-impedance voltmeter connected to this circuit is given in (1). Charges in the wire are induced to move under the influence of a force given by the Lorentz force equation
<br>F FONT FACE="Symbol"&gt;`=q(E FONT FACE="Symbol"&gt;` +V FONT FACE="Symbol"&gt;`B FONT FACE="Symbol"&gt;`)
<br><b>Motional and Transformer EMF</b>
<br>However, for an observer traveling with the loop, there is no apparent velocity. Instead, this observer would observe a force F <sub>'</sub> due only to an electric field E<sub>'</sub> F <sub>'</sub> = q E<sub>'</sub> The two forces F  and F <sub>'</sub> must be equal, so that we find that
<br>E<sub>'</sub>= E ++ v  B
<br>Now, let's substitute (4) back into Faraday's law (1). After considerable simplification we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image3.gif"></sub>
<br>This is an alternate form to Faraday's law (1). Important points to note in (5): 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image4.gif"></sub>. 
<br>is called the motional emf. Circuit defined by contour c is said to "cut” the B field lines, whether or not B is constant or changing with time. (Note that it's assumed here the shape of the circuit does not change with time.) 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image5.gif"></sub>. 
<br>is called the transformer emf. (Notice that the time derivative appears inside the integral.) There is no motion present in this term. 
<br>. The same emf would be measured by a voltmeter whether it is moving with the circuit as in (5) or stationary as in (1) since
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image6.gif"></sub>
<br>Either of these two equations (1) and (5) yield exactly the same emf (this will be illustrated in the two examples to be shown next.) However, one form may be preferred over another depending on the problem. 
<br>Example N4.1: Determine the induced resistor voltage V  in the rotating loop circuit shown below using the form of F araday's law given in (5). The loop is immersed in the field B =aˆ<sub>Y</sub> B<sub>0</sub> [T]. 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image7.gif"></sub>
<br>The direction of c was arbitrarily chosen as shown. From (5) 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image8.gif"></sub>
<br>The first term is zero because B is not a function of time. 
<br>We will consider contributions to( (v   B).dl from each of the four line segments that comprise the contour c: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image9.gif"></sub>
<br>The cross product of unit vectors can be computed by drawing a top-down sketch of the rotating loop: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image10.gif"></sub>
<br>Consequently, 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image11.gif"></sub>
<br>Then
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image12.gif"></sub>
<br>Next, draw the equivalent lumped-element circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image13.gif"></sub>
<br>By KVL: V++ emf= 0 =>  V =- -emf =&omega;LWB sin(&omega;t) [V] 
<br>We can interpret the results of the line integral of ((v   B)) dl for each of the four segments in the context of which segments actually "cut” the B field lines. Segments BC and D A are in motion, but since these segments do not "cut” the B field lines, no emf is generated by their motion through B . Their motion is always parallel to the B field lines. 
<br>Conversely, the vertical section CD  is "cutting” the B field
<br>lines as it rotates. Consequently, an emf is generated in this segment as it rotates through B . Note that for  = 0 and  = 180&#176;, this segment does not cut the B field lines so no emf is generated near these angles
<br>Example N4.2: Repeat the previous example, but use the form of Faraday's law in (1). 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image14.gif"></sub>
<br>As indicated in the figure on page 3, d s Consequently
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image15.gif"></sub>
<br>Similar to the previous example problem, this inner product of unit vectors can be evaluated by making a quick sketch: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image16.gif"></sub>
<br>Therefore, 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image17.gif"></sub>
<br>which is the same answer as in the previous example, as expected. Next, draw the equivalent lumped-element circuit: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image18.gif"></sub>
<br>By KVL: V++ emf= 0 =>  V =- -emf =&omega;LWB sin(&omega;t) [V] 
<br>Again, this is the same answer as in the previous example, as expected. Note that here in Example N4.2 we have solved for V without resorting to motional emf and/or transformer emf, in contrast to the previous Example N4.1 (where we used only motional emf). Instead, we have just applied Faraday's law (1), which is always valid. 
<br>Lastly, notice that when the loop is in the xz plane, &psi;<sub>m</sub> is maximum, but V &psi; 0! Further, when the loop lies in the yz plane, &psi;<sub>m</sub>=0 but V is maximum! Very strange, what is happening? 
<br>Recall that the emf is not equal to &psi;<sub>m</sub> in Faraday's law. Rather, it is equal to the negative time-rate-of-change of &psi;<sub>m</sub> . When the loop is in the xz plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image19.gif"></sub>
<br>while when the loop is in the yz plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image20.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image21.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/faradays_law_and_moving_circuits.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image23.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image23.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_faradays_law_and_moving_circuits/image22.wmf"></sub>
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
