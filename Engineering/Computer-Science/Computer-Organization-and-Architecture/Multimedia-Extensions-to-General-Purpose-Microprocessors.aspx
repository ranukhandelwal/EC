<%@ Page Language="C#" MasterPageFile="~/Masters/architectures_for_parallel_computation_links.master" AutoEventWireup="True" CodeBehind="Multimedia-Extensions-to-General-Purpose-Microprocessors.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Multimedia_Extensions_to_General_Purpose_Microprocessors" %>
<%@ MasterType VirtualPath="~/Masters/architectures_for_parallel_computation_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Multimedia Extensions to General Purpose Microprocessors</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>&bull; Video and audio applications very often deal with large arrays of small data types (8 or 16 bits). 
<br>&bull; Such applications exhibit a large potential of SIMD (vector) parallelism. 
<br>
<br>New generations of general purpose microprocessors have been equipped with special instructions to exploit this potential of parallelism. 
<br>&bull; The specialised multimedia instructions perform vector computations on bytes, half-words, or words. 
<br>Several vendors have extended the instruction set of their processors in order to improve performance with multimedia applications: 
<br>&bull; MMX for Intel x86 family
<br>&bull; VIS for UltraSparc
<br>&bull; MDMX for MIPS
<br>&bull; MAX-2 for Hewlett-Packard PA-RISC
<br>The Pentium line provides 57 MMX instructions. They treat data in a SIMD fashion (see textbook pg. 353). 
<br>The basic idea: subword execution
<br>&bull; Use the entire width of a processor data path (32 or 64 bits), even when processing the small data types used in signal processing (8, 12, or 16 bits). 
<br>
<br>With word size 64 bits, the adders will be used to implement eight 8 bit additions in parallel
<br>This is practically a kind of SIMD parallelism, at a reduced scale. 
<br>Three packed data types are defined for parallel operations: packed byte, packed half word, packed word. 
	<br><b><b>Packed byte </b></b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>q7 </td>

      
      <td class="txt">
	<br>q6 </td>

      
      <td class="txt">
	<br>q5 </td>

      
      <td class="txt">
	<br>q4 </td>

      
      <td class="txt">
	<br>q3 </td>

      
      <td class="txt">
	<br>q2 </td>

      
      <td class="txt">
	<br>q1 </td>

      
      <td class="txt">
	<br>q0 </td>
</tr></table>
<br><b><b>Packed half word </b></b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>q3 </td>

      
      <td class="txt">
	<br>q2 </td>

      
      <td class="txt">
	<br>q1 </td>

      
      <td class="txt">
	<br>q0 </td>
</tr></table>
<br><b><b>Packed word </b></b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>q1 </td>

      
      <td class="txt">
	<br>q0 </td>
</tr></table>
<br><b><b>Long word </b></b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>q0 </td>
</tr>

    <tr>

      
      <td class="txt">
<br> 64 bits -> 
</td>
</tr></table>
<br>&bull; Examples of SIMD arithmetics with the MMX instruction set: 
	<br><b><b>ADD R3 </b></b><b></b><b> R1.R2</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>a7 </td>

      
      <td class="txt">
	<br>a6 </td>

      
      <td class="txt">
	<br>a5 </td>

      
      <td class="txt">
	<br>a4 </td>

      
      <td class="txt">
	<br>a3 </td>

      
      <td class="txt">
	<br>a2 </td>

      
      <td class="txt">
	<br>a1 </td>

      
      <td class="txt">
	<br>a0 </td>
</tr>

    <tr>

      
      <td class="txt">
<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>

      
      <td class="txt">
	<br>+ 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>b7 
</td>

      
      <td class="txt">
	<br>b6 
</td>

      
      <td class="txt">
	<br>b5 
</td>

      
      <td class="txt">
	<br>b4 
</td>

      
      <td class="txt">
	<br>b3 
</td>

      
      <td class="txt">
	<br>b2 
</td>

      
      <td class="txt">
	<br>b1 
</td>

      
      <td class="txt">
	<br>b0 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>a7+b7 
</td>

      
      <td class="txt">
	<br>a6+b6 
</td>

      
      <td class="txt">
	<br>a5+b5 
</td>

      
      <td class="txt">
	<br>a4+b4 
</td>

      
      <td class="txt">
	<br>a3+b3 
</td>

      
      <td class="txt">
	<br>a2+b2 
</td>

      
      <td class="txt">
	<br>a1+b1 
</td>

      
      <td class="txt">
	<br>a0+b0 
</td>
</tr></table>
<br><b><b>MPYADD R3 </b></b><b></b><b> R1,R3</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>a7 </td>

      
      <td class="txt">
	<br>a6 </td>

      
      <td class="txt">
	<br>a5 </td>

      
      <td class="txt">
	<br>a4 </td>

      
      <td class="txt">
	<br>a3 </td>

      
      <td class="txt">
	<br>a2 </td>

      
      <td class="txt">
	<br>a1 </td>

      
      <td class="txt">
	<br>a0 </td>
</tr>

    <tr>

      
      <td class="txt">
<br>x-+ 
</td>

      
      <td class="txt">
	<br>x-+ 
</td>

      
      <td class="txt">
	<br>x-+ 
</td>

      
      <td class="txt">
	<br>x-+ 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>b7 
</td>

      
      <td class="txt">
	<br>b6 
</td>

      
      <td class="txt">
	<br>b5 
</td>

      
      <td class="txt">
	<br>b4 
</td>

      
      <td class="txt">
	<br>b3 
</td>

      
      <td class="txt">
	<br>b2 
</td>

      
      <td class="txt">
	<br>b1 
</td>

      
      <td class="txt">
	<br>b0 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>

      
      <td class="txt">
	<br>= 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>(a6xb6)+(a7xb7) 
</td>

      
      <td class="txt">
	<br>(a4xb4)+(a5xb5) 
</td>

      
      <td class="txt">
	<br>(a2xb2)+(a3xb3) 
</td>

      
      <td class="txt">
	<br>(a0xb0)+(a1xb1) 
</td>
</tr></table>
<br>How to get the data ready for computation? 
<br>How to get the results back in the right format? 
<br>&bull; Packing and Unpacking
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image1.jpeg"></sub>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image2.jpeg"></sub>
</td>

      
      <td class="txt">
	<br>&nbsp;
</td>
</tr></table>
<br>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>Discuss About Computer Organization and Architecture </b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

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
	<br><b>Architectures for Parallel Computation</b>
<br>Discussion forum for Architectures for Parallel Computation</td>
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="Problems in login? Click here.." NavigateUrl="~/ano_utils/forgot_password.aspx"></asp:HyperLink> 
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_multimedia-extensions-to-general-purpose-microprocessors/image3.wmf"></sub>
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
