<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Radix-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Radix_Sort" %>
<%@ MasterType VirtualPath="~/Masters/algorithm_tutorials_links.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="gbody txt">

 

<table border="0" width="99%" cellspacing=2 cellpadding=2 bordercolor='#e4e4e4'>

    <tr>

      
      <td class="txt"><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<b>Radix Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Radix sort is a small method that many people intuitively use when alphabetizing a large list of names. (Here Radix is 26, 26 letters of alphabet). Specifically, the list of names is first sorted according to the first letter of each names, that is, the names are arranged in 26 classes. Intuitively, one might want to sort numbers on their most significant digit. But Radix sort do counter-intuitively by sorting on the least significant digits first. On the first pass entire numbers sort on the least significant digit and combine in a array. Then on the second pass, the entire numbers are sorted again on the second least-significant digits and combine in a array and so on. 
<br>Following example shows how Radix sort operates on seven 3-digits number. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>INPUT 1</b></b><b><sup>st</b></sup></td>

      
      <td class="txt">
	<br><b><b>Pass 2</b></b><b><sup>nd</b></sup></td>

      
      <td class="txt">
	<br><b><b>Pass 3</b></b><b><sup>rd</b></sup></td>

      
      <td class="txt">
	<br><b><b>Pass</b></b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>329 
</td>

      
      <td class="txt">
	<br>720 
</td>

      
      <td class="txt">
	<br>720 
</td>

      
      <td class="txt">
	<br>329&nbsp; 
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>457 
</td>

      
      <td class="txt">
	<br>355 
</td>

      
      <td class="txt">
	<br>329 
</td>

      
      <td class="txt">
	<br>355
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>657 
</td>

      
      <td class="txt">
	<br>436 
</td>

      
      <td class="txt">
	<br>436 
</td>

      
      <td class="txt">
	<br>436
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>839 
</td>

      
      <td class="txt">
	<br>457 
</td>

      
      <td class="txt">
	<br>839 
</td>

      
      <td class="txt">
	<br>457
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>436 
</td>

      
      <td class="txt">
	<br>657 
</td>

      
      <td class="txt">
	<br>355 
</td>

      
      <td class="txt">
	<br>657
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>720 
</td>

      
      <td class="txt">
	<br>329 
</td>

      
      <td class="txt">
	<br>457 
</td>

      
      <td class="txt">
	<br>720
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>355 
</td>

      
      <td class="txt">
	<br>839 
</td>

      
      <td class="txt">
	<br>657 
</td>

      
      <td class="txt">
	<br>839
</td>
</tr></table>
<br>In the above example, the first column is the input. The remaining shows the list after successive sorts on increasingly significant digits position. The code for Radix sort assumes that each element in the n-element array A has d digits, where digit 1 is the lowest-order digit and d is the highest-order digit. 
<br>&nbsp;<b> RADIX_SORT (A, d) </b>
<br>for i  1 to d do 
<br>&nbsp;&nbsp;&nbsp; use a stable sort to sort A on digit i 
<br>&nbsp;&nbsp;&nbsp; // counting sort will do the job 
<br>&nbsp;<b> Analysis </b>
<br>The running time depends on the stable used as an intermediate sorting algorithm. When each digits is in the range 1 to k, and k is not too large, COUNTING_SORT&nbsp; is the obvious choice. In case of counting sort, each pass over n d-digit numbers takes O(n + k) time. There are d passes, so the total time for Radix sort is Θ(n+k) time. There are d passes, so the total time for Radix sort is Θ(dn+kd). When d is constant and k = Θ(n), the Radix sort runs in linear time. 
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
<br><b>Discuss About Algorithm Tutorials</b><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>
	<br>Top of Form<Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br></td>

      
      <td class="txt">
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/radix-sort.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Dynamic Programming Algorithms</b>
<br>Discussion forum for Basics of Dynamic Programming Algorithms</td>
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Start your new thread here</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Enter thread subject</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_radix-sort/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_radix-sort/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_radix-sort/image3.wmf"></sub>
</td>
</tr></table>
<br>Bottom of Form
</td>
</tr></table>
<br>
</td>
</tr></table>
</div>
</asp:Content>
