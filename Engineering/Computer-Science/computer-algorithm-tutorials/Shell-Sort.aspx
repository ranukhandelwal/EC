<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Shell-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Shell_Sort" %>
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
	<b>Shell Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>This algorithm is a simple extension of Insertion sort. Its speed comes from the fact that it exchanges elements that are far apart (the insertion sort exchanges only adjacent elements). 
<br>The idea of the Shell sort is to rearrange the file to give it the property that taking every h<sup>th</sup> element (starting anywhere) yields a sorted file. Such a file is said to be h-sorted. 
<br><b>SHELL_SORT (A) </b>
<br>for h = 1 to h &#8804; N/9 do 
<br>for (; h &gt; 0; h != 3) do 
<br>for i = h +1 to i &#8804; n do 
<br>v = A[i] 
<br>j = i 
<br>while (j &gt; h AND A[j - h] &gt; v 
<br>&nbsp; A[i] = A[j - h] 
<br>j = j - h 
<br>A[j] = v 
<br>i = i + 1 
<br>&nbsp;The function form of the running time for all Shell sort depends on the increment sequence and is unknown. For the above algorithm, two conjectures are n(logn)<sup>2</sup> and n<sup>1.25</sup>. Furthermore, the running time is not sensitive to the initial ordering of the given sequence, unlike Insertion sort. 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_shell-sort/image1.gif"></sub>
<br>&nbsp;Shell sort is the method of choice for many sorting application because it has acceptable running time even for moderately large files and requires only small amount of code that is easy to get working. Having said that, it is worthwhile to replace Shell sort with a sophisticated sort in given sorting problem. 
<br>&nbsp; 
	<br><b><b>Implementation </b></b>
	<br>void shellSort(int numbers[], int array_size) 
<br>{ 
<br>int i, j, increment, temp; 
<br>increment = 3; 
<br>while (increment &gt; 0) 
<br>{ 
<br>for (i=0; i &lt; array_size; i++) 
<br>{ 
<br>j = i; 
<br>temp = numbers[i]; 
<br>while ((j &gt;= increment) &amp;&amp; (numbers[j-increment] &gt; temp)) 
<br>{ 
<br>numbers[j] = numbers[j - increment]; 
<br>j = j - increment; 
<br>} 
<br>numbers[j] = temp; 
<br>} 
<br>if (increment/2 != 0) 
<br>increment = increment/2; 
<br>else if (increment == 1) 
<br>increment = 0; 
<br>else 
<br>increment = 1; 
<br>} 
<br>} 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/shell-sort.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Divide &amp; Conquer Algorithms</b>
<br>Discussion forum for Divide &amp; Conquer Algorithms</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_shell-sort/image2.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_shell-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_shell-sort/image4.wmf"></sub>
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
