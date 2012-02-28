<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Selection-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Selection_Sort" %>
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
	<b>Selection Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>This type of sorting is called "Selection Sort" because it works by repeatedly element. It works as follows: first find the smallest in the array and exchange it with the element in the first position, then find the second smallest element and exchange it with the element in the second position, and continue in this way until the entire array is sorted. 
<br>&nbsp;<b> SELECTION_SORT (A) </b>
<br>for i  1 to n-1 do 
<br>min j  i; 
<br>min x  A[i] 
<br>for j  i + 1 to n do 
<br>If A[j] &lt; min x then 
<br>min j  j 
<br>min x  A[j] 
<br>A[min j]  A [i] 
<br>A[i]  min x 
<br>&nbsp;Selection sort is among the simplest of sorting techniques and it work very well for small files. Furthermore, despite its evident "naïve approach "Selection sort has a quite important application because each item is actually moved at most once, Section sort is a method of choice for sorting files with very large objects (records) and small keys. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_selection-sort/image1.gif"></sub> 
<br>&nbsp;The worst case occurs if the array is already sorted in descending order. Nonetheless, the time require by selection sort algorithm is not very sensitive to the original order of the array to be sorted: the test "if A[j] &lt; min x" is executed exactly the same number of times in every case. The variation in time is only due to the number of times the "then" part (i.e., min j  j; min x  A[j] of this test are executed. 
<br>The Selection sort spends most of its time trying to find the minimum element in the "unsorted" part of the array. It clearly shows the similarity between Selection sort and Bubble sort. Bubble sort "selects" the maximum remaining elements at each stage, but wastes some effort imparting some order to "unsorted" part of the array. Selection sort is quadratic in both the worst and the average case, and requires no extra memory. 
<br>For each i from 1 to n - 1, there is one exchange and n - i comparisons, so there is a total of n -1 exchanges and (n -1) + (n -2) + . . . + 2 + 1 = n(n -1)/2 comparisons. These observations hold no matter what the input data is. In the worst case, this could be quadratic, but in the average case, this quantity is O(n log n). It implies that the running time of Selection sort is quite insensitive to the input. 
<br>&nbsp; 
	<br><b><b>Implementation </b></b>
	<br>void selectionSort(int numbers[], int array_size) 
<br>{ 
<br>int i, j; 
<br>int min, temp; 
<br>for (i = 0; i &lt; array_size-1; i++) 
<br>{ 
<br>min = i; 
<br>for (j = i+1; j &lt; array_size; j++) 
<br>{ 
<br>if (numbers[j] &lt; numbers[min]) 
<br>min = j; 
<br>} 
<br>temp = numbers[i]; 
<br>numbers[i] = numbers[min]; 
<br>numbers[min] = temp; 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/selection-sort.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_selection-sort/image2.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_selection-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_selection-sort/image4.wmf"></sub>
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
