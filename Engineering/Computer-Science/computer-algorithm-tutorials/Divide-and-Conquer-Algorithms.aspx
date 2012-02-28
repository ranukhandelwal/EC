<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Divide-and-Conquer-Algorithms.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Divide_and_Conquer_Algorithms" %>
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
	<b>Divide &amp; Conquer Algorithms </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Divide-and-conquer is a top-down technique for designing algorithms that consists of dividing the problem into smaller subproblems hoping that the solutions of the subproblems are easier to find and then composing the partial solutions into the solution of the original problem. 
<br>&nbsp;Little more formally, divide-and-conquer paradigm consists of following major phases: 
<br>· Breaking the problem into several sub-problems that are similar to the original problem but smaller in size, 
<br>· Solve the sub-problem recursively (successively and independently), and then 
<br>· Combine these solutions to subproblems to create a solution to the original problem. 
<br>&nbsp; <b>Binary Search </b>(simplest application of divide-and-conquer) 
<br>Binary Search is an extremely well-known instance of divide-and-conquer paradigm. Given an ordered array of n elements, the basic idea of binary search is that for a given element we "probe" the middle element of the array. We continue in either the lower or upper segment of the array, depending on the outcome of the probe until we reached the required (given) element. 
<br><b>Problem&nbsp;</b>&nbsp;&nbsp; Let A[1 . . . n] be an array of non-decreasing sorted order; that is A [i] &#8804; &nbsp;A [j] whenever 1 &#8804;&nbsp; i&nbsp; &#8804;&nbsp; j&nbsp; &#8804;&nbsp; n. Let 'q' be the query point. The problem consist of finding 'q' in the array A. If q is not in A, then find the position where 'q' might be inserted. 
<br>&nbsp;Formally, find the index i such that 1 &#8804;&nbsp; i &#8804;&nbsp; n+1 and A[i-1] &lt; x &#8804; A[i]. 
<br>&nbsp; 
	<br><b><b>Sequential Search </b></b>
	<br>Look sequentially at each element of A until either we reach at the end of an array A or find an item no smaller than 'q'. 
<br>Sequential search for 'q' in array A 
<br>for i = 1 to n do 
<br>&nbsp;&nbsp;&nbsp; if A [i] &#8805; q then 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return index i 
<br>&nbsp;&nbsp;&nbsp; return n + 1 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>This algorithm clearly takes a &theta; (r), where r is the index returned. This is ohm(n) in the worst case and O(1) in the best case. 
<br>If the elements of an array A are distinct and query point q is indeed in the array then loop executed (n + 1) / 2 average number of times. On average (as well as the worst case), sequential search takes &theta; (n) time. 
<br>&nbsp; 
	<br><b><b>Binary Search </b></b>
	<br>Look for 'q' either in the first half or in the second half of the array A. Compare 'q' to an element in the middle, n/2 , of the array. Let k = n/2 . If q &#8804;&nbsp; A[k], then search in the A[1 . . . k]; otherwise search T[k+1 . . n] for 'q'. Binary search for q in subarray A[i . . j] with the promise that&nbsp; 
<br>A[i-1] &lt; x &#8804; A[j] 
<br>If i = j then 
<br>&nbsp;&nbsp;&nbsp; return i (index) 
<br>k= (i + j)/2 
<br>if q &#8804; A [k] 
<br>&nbsp;&nbsp;&nbsp; then return Binary Search [A [i-k], q] 
<br>&nbsp;&nbsp;&nbsp; else return Binary Search [A[k+1 . . j], q] 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>Binary Search can be accomplished in logarithmic time in the worst case , i.e., T(n) = &theta; (log n). This version of the binary search takes logarithmic time in the best case. 
<br>&nbsp; 
	<br><b><b>Iterative Version of Binary Search </b></b>
	<br>Interactive binary search for q, in array A[1 . . n] 
<br>if q &gt; A [n] 
<br>&nbsp;&nbsp;&nbsp; then return n + 1 
<br>i = 1; 
<br>j = n; 
<br>while i &lt; j do 
<br>&nbsp;&nbsp;&nbsp; k = (i + j)/2 
<br>&nbsp;&nbsp;&nbsp; if q &#8804; A [k] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; then j = k 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else i = k + 1 
<br>return i (the index) 
<br>&nbsp; 
	<br><b><b>Analysis </b></b>
	<br>The analysis of&nbsp; Iterative algorithm is identical to that of its recursive counterpart. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Activity Selection Problem</b>
<br>Discussion forum for Activity Selection Problem</td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_divide-and-conquer-algorithms/image2.wmf"></sub>
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
