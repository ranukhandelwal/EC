<%@ Page Language="C#" MasterPageFile="~/Masters/emlinks.master" AutoEventWireup="True" CodeBehind="Single_Stub_Tuner_II_Smith_Chart_Solution.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Single_Stub_Tuner_II_Smith_Chart_Solution" %>
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
	<b>Single Stub Tuner II Smith Chart Solution</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Single Stub Tuner II Smith Chart Solution.</b>
<br>We will next consider single-stub tuner analysis using the Smith chart. Before looking at this, however, we must first understand that the Smith chart can be used as an admittance chart as well as an impedance chart. To see this, in Lecture 21 we derived the mapping upon which the Smith chart is based [ z (d )T(d )] from the normalized TL impedance
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image1.gif"></sub>
<br>From this, we can express the normalized TL admittance as
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image2.gif"></sub>
<br>We can repeat the construction of the Smith chart with y = g + jb and T = p + jq, as we did originally for the impedance chart. Substituting these quantities into (1) we find
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image3.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image4.gif"></sub>
<br>A Smith admittance chart can be constructed based on these two equations for circles in the p-q plane: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image5.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image6.gif"></sub>
<br>This Smith admittance chart looks very similar to the Smith impedance chart. In fact, if we rotated one 180&#176; we obtain the other. This is actually an easily proved result. Consider the definition of the negative generalized reflection coefficient
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image7.gif"></sub>
<br>That is 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image8.gif"></sub>
<br>If we now substitute (4) into (1) we find that
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image9.gif"></sub>
<br>But what is d +&lambda; / 4? It's a half rotation around the Smith chart. 
<br><b>Discussion</b>
<br>From (3) we can deduce that: 
<br>1. If z (d ) is known, then y (d ) is the point on the constant VSWR circle that is diametrically opposite the z (d ) point on the Smith chart. (In this context, remember that a QWT is an impedance inverter device.) 
<br>2. The Smith chart can be used either as an impedance chart or as an admittance chart. Rather than keeping these two types of charts around, we can use one for either impedance or admittance calculations. The following example should help you understand this. 
<br>3. One subtlety with these mixed Smith charts is that generalized reflection coefficients are only correctly represented on impedance charts when plotting normalized impedances and on admittance charts when plotting normalized admittances. You'll read negative generalized reflection coefficients otherwise (for admittances on impedance charts and impedances on admittance charts). 
<br>Example N24.1: Use the Smith chart to compute the normalized input admittance of the TL shown below. 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image10.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image11.gif"></sub>
<br>Rotating 0.362 +&lambda; "towards generator,” we can read from the Smith chart: z (L) =1.7 + j1.1 and y (L) = 0.42 - j0.28 [Exact: z (L) =1.682 + j1.103 and y (L) = 0.4157 - j0.2727 .] 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image12.gif"></sub>
<br><b>Single-Stub Matching with the Smith Chart</b>
<br>As we saw in the previous lecture, the single-stub tuner geometry attached to a TL is
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image13.gif"></sub>
<br>Recall that the operation of the single-stub tuner requires that
<br>1. A length d<sub>s</sub> is chosen such that y <sub>1</sub><sup>'</sup> has a real part = 1. 
<br>2. The imaginary part of y <sub>1</sub><sup>'</sup> is negated by the stub susceptance after choosing the proper length l<sub>s</sub> . We can perform these steps using only the Smith chart as our calculator. This process will be illustrated by an example. 
<br>Example N24.2: Using the Smith chart, design a shorted singlestub tuner to match the load Z<sub>L</sub> = 35 - j47.5 beta to a TL with characteristic resistance Z<sub>0</sub> = 50 beta The normalized load impedance and admittance are: 
<br>Z<sub>L</sub> = 0.70 - j0.95 p.u.beta and y<sub>L</sub> =0.50 + j0.68 p.u.S
<br>Steps: 
<br>1. Locate y<sub>L</sub> = 0.50 +j0.68 p.u.S on the Smith admittance chart. 
<br>2. Draw the constant VSWR circle using a compass. 
<br>3. Draw the line segment from the origin to y<sub>L</sub> [this is the vector T(0 +&lambda; / 4)]. 
<br>Rotate this vector towards the source until it intersects the unit conductance circle. Along this circle Re This is really the intersection of the constant VSWR circle for this load with the unit conductance circle. There will be two solutions. Both of these give
<br>y<sub>1</sub> = 1+ jb<sub>1</sub>.
<br>For this example, we find from the Smith chart that
<br>(I) y<sub>1</sub> = 1 + j1.2
<br>(II) y<sub>1</sub> = 1 - j1.2
<br>4. From these rotations we can determine s d as
<br>(I) d<sub>s</sub> = 0.168 0 &lambda; = 0 .109 &lambda;0.059 &lambda;
<br>(II) d<sub>s</sub> = 0.332 &lambda; = 0.109 &lambda;0.223 &lambda;
<br>5. Next, find the stub lengths l<sub>s</sub> . 
<br>(I) want b<sub>s</sub> = -1.2
<br>(II) want b<sub>s</sub> =1.2
<br>When either of these two susceptances is added to then y<sub>in</sub> = 1. 
<br>The stub lengths can also be determined directly from the Smith chart. Consider the shorted stub
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image14.gif"></sub>
<br>On the Smith admittance chart, y<sub>L</sub> = &infin; is located at p = 1, q = 0. From there, rotate "towards generator” to: 
<br>(I) b<sub>s</sub> = -1.2 =>  l<sub>s</sub> = 0.361 &lambda; - 025. &lambda; = 0.111&lambda; 
<br>(II) b<sub>s</sub> = +1.2 =>  l<sub>s</sub> = 0.25 &lambda; +139. &lambda; = 0.389&lambda; 
<br>That's it. The final two solutions are: 
<br>(I) d<sub>s</sub> =0.059 &lambda; and l<sub>s</sub> = 0.111 &lambda; 
<br>(II) d<sub>s</sub>= 0.223 &lambda; and l<sub>s</sub> = 0.389 &lambda; 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image15.gif"></sub>
<br>We will check these two solutions using the results of the analytical analysis from last lecture: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image16.gif"></sub>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image17.gif"></sub>
<br>And
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image18.gif"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Fourier Transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>fourier transform</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>match filter</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>8706
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Electic circuits</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>13419
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>electro statics</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>7500
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>electromagnetic waves</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>oscillators</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>7280
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink10" runat="server" Text="<b>Equivalent circuit Models</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>19090
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink11" runat="server" Text="<b>temperature Vs reverse satuation current</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>9454
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink12" runat="server" Text="<b>communication system</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>14002
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink13" runat="server" Text="<b>CMOS TRANSISTOR</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br>12726
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image19.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink14" runat="server" Text="<b>coaching in ies in indore</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuner_ii_smith_chart_solution.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image21.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image21.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuner_ii_smith_chart_solution/image20.wmf"></sub>
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
