<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Measurement_Errors_TRL_Calibration_of_a_VNA.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Measurement_Errors_TRL_Calibration_of_a_VNA" %>
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
	<b>Measurement Errors TRL Calibration of a VNA</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Measurement Errors TRL Calibration of a VNA.</b>
<br>As we discussed in Lecture 18, a VNA measures both the magnitude and phase of S parameters. However, there will invariably be significant errors in these microwave measurements that must be "removed” somehow if we are to obtain accurate results. There are three general types of errors: 
<br>1. Systematic: repeatable errors due to imperfections in components, connectors, test fixture, etc. 
<br>2. Random: vary unpredictability with time and cannot be removed. From noise, connector repeatability, etc. 
<br>3. Drift: caused by changes in systems characteristics after a calibration has been performed due to temperature, humidity and other environmental variables. 
<br>Using well-designed and maintained equipment in an unchanging environment is about all we can do to minimize random errors. A similar environment helps minimize drift errors, or the network analyzer can be recalibrated. The effects of systematic errors can be largely removed from the S parameters using "calibration.” (In the context of microwave measurements, "calibration” has a much different meaning than "calibrating” low-frequency equipment.) 
<br>To do this calibration, we need to assume a general model for the effects of systematic errors, such as that shown in
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image1.gif"></sub>
<br>We'll define [S<sup>m</sup>] as the S parameters that are actually measured by the VNA. These include all of the errors we mentioned earlier. the error boxes (with parameters [S]) and how these are specifically connected to the DUT form the model of the systematic errors. The parameters [S] are those we desire to know. These are the S parameters of the DUT, which also, unfortunately, contain random errors. The purpose of network analyzer calibration is to determine the numerical values of all the S (or ABCD) parameters in the error model at each frequency of interest. 
<br>For coaxial measurements, we often use precision Short, Open, Load and Thru (SOLT) standards as loads connected to the test ports. With these known standards as loads, we make several Sparameter measurements to construct enough equations from which we can numerically determine the error parameters. 
<br><b>Thru-Reflect-Line (TRL) Calibration</b>
<br>SOLT standards are difficult to implement for VNA measurements of microstrip and similar circuits. Instead, the Thru-Reflect-Line (TRL) method is more commonly used. The TRL calibration method is very cleverly designed. It doesn't rely on precisely known standards and it uses only three simple connections to completely characterize the error model. The three connections for TRL calibration of microstrip are: 
<br>1. Thru. Directly connect port 1 to 2, at the desired reference planes, using matched microstrip. 
<br>2. Reflect. Terminate a microstrip connected to each port with a load that produces a large reflection, say an open or short. These can be imperfect loads. 
<br>3. Line. Connect the two ports together through a microstrip approximately &lambda;/4 longer than the Thru (at the center frequency). 
<br>We will step through each of these connections and outline the solutions for the S parameters using signal flow diagrams. 
<br>1. Thru Standard. The configuration for this measurement is shown in The measured S matrix is defined as [T ]: 
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image2.gif"></sub>
<br>Notice that: 
<br>a. The [S] matrices for the two error boxes are assumed to be identical. This simplifies things for us right now, though this is not assumed in actual VNA TRL "cal kits.” 
<br>b. The reflection planes for the DUT are coincident. Consequently, this is called a “zero length Thru.” You'll use this in the lab. 
<br>c. S<sub>21</sub> = S<sub>12</sub> for a reciprocal error box. 
<br>We can solve the signal flow graph for the elements of [T], noting that a<sub>2</sub> = 0 because the measurement is made with a matched termination. As you'll determine in your homework: 
<br>T<sub>11</sub> =b<sub>1</sub>/a<sub>1</sub>|a<sub>2</sub>=0 =S<sub>22</sub>S<sup>2</sup><sub>12</sub>/1-S<sup>2</sup><sub>22</sub> =T<sub>22</sub>
<br>And
<br>T<sub>12</sub> =b<sub>1</sub>/a<sub>2</sub>|a<sub>1</sub>=0 =S<sup>2</sup><sub>12</sub>/1-S<sup>2</sup><sub>22</sub> =T<sub>21</sub> 
<br>2. Reflect Standard. The configuration for this measurement is shown in The measured S matrix is defined as [R]: 
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image3.gif"></sub>
<br>Notice that: 
<br>a. The lines are terminated by an unknown load, with ?<sub>L</sub> to be determined. 
<br>b. The reference planes for the load are the same locations as the “zero length Thru.” This will also be the situation in the lab. we've solved this type of SFG before. The solution is
<br>R<sub>11</sub> =b<sub>1</sub>/a<sub>1</sub>|<sub>a2=0</sub> =(S<sup>2</sup><sub>12</sub> &tau;<sub>L</sub>)/(1-S<sup>2</sup><sub>22</sub> &tau;<sub>L</sub>) =L<sub>21</sub> 
<br>Since the two ports are not connected together, then
<br>R<sub>21</sub> = R<sub>12</sub> = 0 
<br>3. Line Standard. The configuration for this measurement is shown in the measured S matrix is defined as [L]: 
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image4.gif"></sub>
<br>Note that: 
<br>a. The length l (beyond the Thru) need not be specified. b. The line may be lossy. 
<br>As you'll show in the homework: 
<br>L<sub>11</sub> =b<sub>1</sub>/a<sub>2</sub>|<sub>a2=0</sub> =(S<sub>22</sub>S<sup>2</sup><sub>12</sub>e<sup>-2rl</sup>)/(1-S<sup>2</sup><sub>22</sub>e<sup>-2rl</sup>) =L<sub>22</sub>
<br>And
<br>L<sub>12</sub> =b<sub>1</sub>/a<sub>2</sub>|<sub>a1=0</sub> =(S<sup>2</sup><sub>12</sub>e<sup>-r1</sup>)/(1-S<sup>2</sup><sub>22</sub>e<sup>-2rl</sup>) =L<sub>21</sub>
<br>We now have five equations - (1), (2), (3), (5) and (6) - to solve for the five unknowns S<sub>11</sub> , S<sub>22</sub> , S<sub>12</sub> , e<sup>?</sup><sup>&lambda;</sup><sup>l</sup> and ?<sub>L</sub> . these solutions are fairly easy to derive, as shown in the text, and are given in equations so, we can now determine [S] (the S parameters of the DUT) from [S<sup>m</sup>] (the measured parameters), as shown in Since we're cascading two-ports, we'll use ABCD matrices to simplify the calculations. Table 4.2 is useful when making these conversions. we see the measured ABCD parameters are given in terms of the error box and DUT parameters by
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image5.gif"></sub>
<br>The last matrix is an inverse because we've “switched” ports 1 and 2 by the connection shown in
<br>next we pre-multiply by [A,B or C,D]<sup>-1</sup>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image6.gif"></sub>
<br>Then post-multiply by [A,B or C,D ]: 
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image7.gif"></sub>
<br>There fore 
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image8.gif"></sub>
<br>At this point, the DUT parameters are now "de-embedded” from the measured parameters by this TRL calibration. the Agilent 8753ES VNA will automatically perform these numerical calculations for you and after calibration will present the "corrected” S parameters. The error box coefficients ABCD are functions of frequency so these TRL measurements and calculations are performed at every frequency point of interest. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/measurement_errors_trl_calibration_of_a_vna.aspx"></asp:HyperLink> 
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
	<br>2387
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/measurement_errors_trl_calibration_of_a_vna.aspx"></asp:HyperLink> 
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
	<br>2310
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image9.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/measurement_errors_trl_calibration_of_a_vna.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image11.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_measurement_errors_trl_calibration_of_a_vna/image10.wmf"></sub>
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
