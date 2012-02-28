<%@ Page Language="C#" MasterPageFile="~/Masters/architectures_for_parallel_computation_links.master" AutoEventWireup="True" CodeBehind="Parallel-Programs.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.Computer_Organization_and_Architecture.Parallel_Programs" %>
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
	<b>Parallel Programs</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br><b>1. Parallel sorting </b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image1.jpeg"></sub>
<br>A possible program for parallel sorting: 
<br>var t: array[1..1000] of integer; 
<br>- - - - - - - - - - -
<br>procedure sort(i,j:integer); 
<br>-sort elements between t[i] and t[j]- 
<br>end sort; 
<br>procedure merge; 
<br>- - merge the four sub-arrays - -
<br>end merge; 
<br>- - - - - - - - - - -
<br>begin
<br>- - - - - - - -
<br>cobegin
<br>sort(1,250)| 
<br>sort(251,500)| 
<br>sort(501,750)| 
<br>sort(751,1000) 
<br>coend; 
<br>merge; 
<br>- - - - - - - -
<br>end; 
<br><b>2. Matrix addition: </b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image2.jpeg"></sub>
<br>var a: array[1..n,1..m] of integer; 
<br>b: array[1..n,1..m] of integer; 
<br>c: array[1..n,1..m] of integer; 
<br>i:integer
<br>- - - - - - - - - - -
<br>begin
<br>- - - - - - - -
<br>for i:=1 to n do
<br>for j:= 1 to m do
<br>c[i,j]:=a[i,j]+b[i,j]; 
<br>end for
<br>end for
<br>- - - - - - - -
<br>end; 
<br>Matrix addition - parallel version: 
<br>var a: array[1..n,1..m] of integer; 
<br>b: array[1..n,1..m] of integer; 
<br>c: array[1..n,1..m] of integer; 
<br>i:integer
<br>- - - - - - - - - - -
<br>procedure add_vector(n_ln:integer); 
<br>var j:integer
<br>begin
<br>for j:=1 to m do
<br>c[n_ln,j]:=a[n_ln,j]+b[n_ln,j]; 
<br>end for
<br>end add_vector; 
<br>begin
<br>- - - - - - - -
<br>cobegin for i:=1 to n do
<br>add_vector(i); 
<br>coend; 
<br>- - - - - - - -
<br>end; 
<br>Matrix addition - vector computation version: 
<br>var a: array[1..n,1..m] of integer; 
<br>b: array[1..n,1..m] of integer; 
<br>c: array[1..n,1..m] of integer; 
<br>i,j:integer
<br>- - - - - - - - - - -
<br>begin
<br>- - - - - - - -
<br>for i:=1 to n do
<br>c[i,1:m]:=a[i,1:m]+b[i,1:m]; 
<br>end for; 
<br>- - - - - - - -
<br>end; 
<br>Or even so: 
<br>begin
<br>- - - - - - - -
<br>c[1:n,1:m]:=a[1:n,1:m]+b[1:n,1:m]; 
<br>- - - - - - - -
<br>end; 
<br>Pipeline model computation: 
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image3.jpeg"></sub>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image4.jpeg"></sub>
<br>A program for the previous computation: 
<br>channel ch:real; 
<br>- - - - - - - - -
<br>cobegin
<br>var x:real; 
<br>while true do
<br>read(x); 
<br>send(ch,45+log(x)); 
<br>end while |
<br>var v:real; 
<br>while true do
<br>receive(ch,v); 
<br>write(5*sqrt(v)); 
<br>end while
<br>coend; 
<br>- - - - - - - - - 
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
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image6.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image6.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub><sub><img src="/Engineering/Computer-Science/Computer-Organization-and-Architecture/img_parallel-programs/image5.wmf"></sub>
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
