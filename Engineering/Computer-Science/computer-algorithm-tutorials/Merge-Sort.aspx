<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Merge-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Merge_Sort" %>
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
	<b>Merge Sort</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Merge-sort is based on the divide-and-conquer paradigm. The Merge-sort algorithm can be described in general terms as consisting of the following three steps: 
<br>&nbsp; <b>1. Divide Step </b>
<br>If given array A has zero or one element, return S; it is already sorted. Otherwise, divide A into two arrays, A1 and A2, each containing about half of the elements of A. 
<br><b>2. Recursion Step </b>
<br>Recursively sort array A1 and A2. 
<br><b>3. Conquer Step </b>
<br>Combine the elements back in A by merging the sorted arrays A1 and A2 into a sorted sequence. 
<br>&nbsp;We can visualize Merge-sort by means of binary tree where each node of the tree represents a recursive call and each external nodes represent individual elements of given array A. Such a tree is called Merge-sort tree. The heart of the Merge-sort algorithm is conquer step, which merge two sorted sequences into a single sorted sequence. 
<br>&nbsp; <sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_merge-sort/image1.gif"></sub>
<br>&nbsp; To begin, suppose that we have two sorted arrays&nbsp; A<sub>1</sub>[1], A<sub>1</sub>[2], . . , A<sub>1</sub>[M] and A<sub>2</sub>[1], A<sub>2</sub>[2], . . . , A<sub>2</sub>[N]. The following is a direct algorithm of the obvious strategy of successively choosing the smallest remaining elements from A<sub>1</sub> to A<sub>2</sub> and putting it in A. 
<br>&nbsp;<b> MERGE (A1, A2, A) </b>
<br>i.  j 1 
<br>A<sub>1</sub>[m+1], A<sub>2</sub>[n+1]  INT_MAX 
<br>For k 1 to m + n do 
<br>if A<sub>1</sub>[i] &lt; A<sub>2</sub>[j] 
<br>then A[k]  A<sub>2</sub>[i] 
<br>i  i +1 
<br>else 
<br>A[k]  A<sub>2</sub>[j] 
<br>j  j + 1 
<br>&nbsp; 
	<br><b><b>Merge Sort Algorithm </b></b>
	<br>&nbsp;<b> MERGE_SORT (A) </b>
<br>A<sub>1</sub>[1 . . n/2]  A[1 . . n/2] 
<br>A<sub>2</sub>[1 . . n/2]  A[1 + n/2 . . n] 
<br>Merge Sort (A<sub>1</sub>) 
<br>Merge Sort (A<sub>1</sub>) 
<br>Merge Sort (A<sub>1</sub>, A<sub>2</sub>, A) 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>Let T(n) be the time taken by this algorithm to sort an array of n elements dividing A into subarrays A<sub>1</sub> and A<sub>2</sub> takes linear time. It is easy to see that the Merge (A<sub>1</sub>, A<sub>2</sub>, A) also takes the linear time. Consequently, 
<br>T(n) = T(n/2) + T(n/2) + &theta; (n) 
<br>for simplicity 
<br>T(n) = 2T (n/2) + &theta; (n) 
<br>&nbsp;The total running time of Merge sort algorithm is O(n lg n), which is asymptotically optimal like Heap sort, Merge sort has a guaranteed n lg n running time. Merge sort required Θ(n) extra space. Merge is not in-place algorithm. The only known ways to merge in-place (without any extra space) are too complex to be reduced to practical program. 
<br>&nbsp; &nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_merge-sort/image2.gif"></sub> 
<br>&nbsp; 
	<br><b><b>Implementation </b></b>
	<br>void mergeSort(int numbers[], int temp[], int array_size) 
<br>{ 
<br>m_sort(numbers, temp, 0, array_size - 1); 
<br>} 
<br>void m_sort(int numbers[], int temp[], int left, int right) 
<br>{ 
<br>int mid; 
<br>if (right &gt; left) 
<br>{ 
<br>mid = (right + left) / 2; 
<br>m_sort(numbers, temp, left, mid); 
<br>m_sort(numbers, temp, mid+1, right); 
<br>merge(numbers, temp, left, mid+1, right); 
<br>} 
<br>} 
<br>void merge(int numbers[], int temp[], int left, int mid, int right) 
<br>{ 
<br>int i, left_end, num_elements, tmp_pos; 
<br>left_end = mid - 1; 
<br>tmp_pos = left; 
<br>num_elements = right - left + 1; 
<br>while ((left &lt;= left_end) &amp;&amp; (mid &lt;= right)) 
<br>{ 
<br>if (numbers[left] &lt;= numbers[mid]) 
<br>{ 
<br>temp[tmp_pos] = numbers[left]; 
<br>tmp_pos = tmp_pos + 1; 
<br>left = left +1; 
<br>} 
<br>else 
<br>{ 
<br>temp[tmp_pos] = numbers[mid]; 
<br>tmp_pos = tmp_pos + 1; 
<br>mid = mid + 1; 
<br>} 
<br>} 
<br>while (left &lt;= left_end) 
<br>{ 
<br>temp[tmp_pos] = numbers[left]; 
<br>left = left + 1; 
<br>tmp_pos = tmp_pos + 1; 
<br>} 
<br>while (mid &lt;= right) 
<br>{ 
<br>temp[tmp_pos] = numbers[mid]; 
<br>mid = mid + 1; 
<br>tmp_pos = tmp_pos + 1; 
<br>} 
<br>for (i=0; i &lt;= num_elements; i++) 
<br>{ 
<br>numbers[right] = temp[right]; 
<br>right = right - 1; 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/merge-sort.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_merge-sort/image3.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_merge-sort/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_merge-sort/image5.wmf"></sub>
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
