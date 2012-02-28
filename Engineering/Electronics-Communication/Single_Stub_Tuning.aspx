<%@ Page Language="C#" MasterPageFile="~/Masters/mwlinks.master" AutoEventWireup="True" CodeBehind="Single_Stub_Tuning.aspx.cs"  Inherits="ExamCrazy.Engineering.Electronics_Communication.Single_Stub_Tuning" %>
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
	<b>Single Stub Tuning</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Single Stub Tuning</b>
<br>The second matching network we'll discuss is the single-stub tuner (SST). The single-stub tuner uses a shorted or open section of TL attached at some position along another TL: 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image1.gif"></sub>
<br>This is an example of a parallel SST, which is the only type we'll study. (A series SST is shown in Fig. 5.4b of the text.) The shunt-connected section is called the stub. Although not necessary, all sections of TL will be assumed to have the same Z<sub>0</sub> and &beta; . 
<br>Why an open or shorted section<sup>'</sup> Because these are easy to fabricate, the length can easily be made adjustable and little to no power is dissipated in the stub. (An open stub is sometimes easier to fabricate than a short.) 
<br>We will study the SST from two perspectives. First, we will develop an analytical solution, followed by a Smith chart graphical solution. Referring to the figure above, the transformed load impedance at the stub position z = -d is
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image2.gif"></sub>
<br>where t  tan(&beta; d ). With a shunt connection, it is much simpler to work with admittances than impedances. So, we'll define the transformed load admittance as Y =1/ Z = G + jB. The distance d is chosen so that G = Y<sub>0</sub> =(1/ Z<sub>0</sub>) . As shown in the text, this condition leads to the solutions
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image3.gif"></sub>
<br>Where
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image4.gif"></sub>
<br>and 
<br>Z<sub>L</sub> = R<sub>L</sub> + jX<sub>L</sub>
<br>With this location of the stub, the transformed load admittance has a real part = Y<sub>0</sub>, which is almost a matched state. In general, however, this transformed Y<sub>L</sub> will also have an imaginary part B. The length of the stub, l<sub>s</sub>, is chosen so that its input susceptance B<sub>s</sub> = -B. Consequently, the parallel combination of the stub input susceptance and the transformed load admittance yield an input admittance Y<sub>in</sub> = Y<sub>0</sub> , as seen from the source end of the TL. As shown in the text, this second condition provides the solutions
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image5.gif"></sub>
<br>Or
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image6.gif"></sub>
<br>where B is the transformed load susceptance at z = -d. Lengths of TL that are integer multiples of &lambda;/2 can be added or subtracted from (2), (4), and (5) without altering the tuning. 
<br>Example N8.1: Match the load Z<sub>L</sub> = 35-j 47.5 beta to a TL with Z<sub>0</sub> = 50 beta using a shunt, short-circuited single-stub tuner. 
<br><b>Single Stub Tuning Using the Smith Chart</b>
<br>We will now solve the single stub tuner problem using the Smith chart. In terms of quantities normalized to the characteristic impedance or admittance, the geometry is
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image7.gif"></sub>
<br>Recall that the operation of the single stub tuner requires that
<br>1. A distance d is chosen such that y<sub>0</sub> <sup>'</sup> has a real part = 1. 
<br>2. The imaginary part of y<sub>1</sub> <sup>'</sup> is negated by the stub
<br>susceptance after choosing the proper length l<sub>s</sub> . This produces y<sub>in</sub> = 1, which is the matched state. We can perform these steps using only the Smith chart as our calculator. This process will be illustrated by an example. 
<br>Example N8.2: Using the Smith chart, design a shorted shunt, single-stub tuner to match the load Z<sub>L</sub> = 35 - j47.5 beta to a TL with characteristic impedance Z<sub>0</sub> = 50 beta. The normalized load impedance and admittance are: z<sub>L</sub> =0.70 - j0.95 p.u.beta and y<sub>L</sub> =0.50 + j0.68 p.u.beta
<br>Steps: 
<br>1. Locate y<sub>L</sub> = 0.50 + j0.68 p.u.beta on the Smith admittance chart. (See the chart on the next page.) 
<br>2. Draw the constant VSWR circle using a compass. 
<br>3. Draw the line segment from the origin to y<sub>L</sub> . Rotate this
<br>vector towards the source until it intersects the unit conductance circle. Along this circle Re [y(z)] =1. This is really the intersection of the constant VSWR circle for this load with the unit conductance circle. There will be two solutions. Both of these give y<sub>1</sub> <sup>'</sup> =1+ jb<sub>1</sub> . 
<br>For this example, we find from the Smith chart that
<br>(I) y<sub>1</sub> <sup>'</sup> =1+ j1.2
<br>(II) y<sub>1</sub> <sup>'</sup> =1- j1.2
<br>4. From these rotations we can compute d as
<br>(I) d = 0.168&lambda; - 0.109&lambda; = 0.059&lambda;
<br>(II) d = 0.332&lambda; - 0.109&lambda; = 0.223&lambda;
<br>5. Next, find the stub lengths l<sub>s</sub> : 
<br>(I) want b<sub>s</sub> = -1.2
<br>(II) want b<sub>s</sub> =1.2
<br>When either of these two susceptances is added to y<sub>1</sub> <sup>'</sup>, then y<sub>in</sub> =1. 
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image8.gif"></sub>
<br>The stub lengths can be determined directly from the Smith chart. Consider the shorted stub
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image9.gif"></sub>
<br>On the Smith admittance chart, y<sub>L</sub> = &infin; is located at
<br>Re{T} =1, Jm{T} = 0. From there, rotate "wavelengths towards generator” to: 
<br>(I) b<sub>s</sub> = -1.2 =>  l<sub>s</sub> = 0.361&lambda; - 0.25&lambda; =0.111&lambda;
<br>(II) b<sub>s</sub> = +1.2 =>  l<sub>s</sub> = 0.25&lambda; +0.139&lambda; = 0.389&lambda;
<br>That's it. The final two solutions are: 
<br>(I) d = 0.059&lambda; and 0.111 l<sub>s</sub> = &lambda;
<br>(II) d = 0.223&lambda; and 0.389 l<sub>s</sub> = &lambda;
<br>Compare these Smith chart solutions with the analytical ones we obtained earlier in Example N8.1. 
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuning.aspx"></asp:HyperLink> 
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
	<br>2386
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>microwave</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuning.aspx"></asp:HyperLink> 
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
	<br>2309
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image10.gif"></sub>
</td>

      
      <td class="txt">
	<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>T-junction and power divider</b>" NavigateUrl="~/engineering/electronics-communication/single_stub_tuning.aspx"></asp:HyperLink> 
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
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub>
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
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image12.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image12.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub><sub><img src="/Engineering/Electronics-Communication/img_single_stub_tuning/image11.wmf"></sub>
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
