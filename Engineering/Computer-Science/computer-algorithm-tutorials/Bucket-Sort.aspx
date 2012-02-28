<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Bucket-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Bucket_Sort" %>
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
	<b>Bucket Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Bucket sort runs in linear time on the average. It assumes that the input is generated by a random process that distributes elements uniformly over the interval [0, 1). 
<br>The idea of Bucket sort is to divide the interval [0, 1) into n equal-sized subintervals, or buckets, and then distribute the n input numbers into the buckets. Since the inputs are uniformly distributed over (0, 1), we don't expect many numbers to fall into each bucket. To produce the output, simply sort the numbers in each bucket and then go through the bucket in order, listing the elements in each. 
<br>The code assumes that input is in n-element array A and each element in A satisfies 0 &#8804; A[i] &#8804; 1. We also need an auxiliary array B[0 . . n -1] for linked-lists (buckets). 
<br>&nbsp;<b> BUCKET_SORT (A) </b>
<br>1. n  length [A] 
<br>2. For i = 1 to n do 
<br>3. Insert A[i] into list B[nA[i]] 
<br>4. For i = 0 to n-1 do 
<br>5. Sort list B with Insertion sort 
<br>6. Concatenate the lists B[0], B[1], . . B[n-1] together in order. 
<br>&nbsp;<b> Example </b>
<br>Given input array A[1..10]. The array B[0..9] of sorted lists or buckets after line 5. Bucket i holds values in the interval [i/10, (i +1)/10]. The sorted output consists of a concatenation in order of the lists first B[0] then B[1] then B[2] ... and the last one is B[9]. 
<br>&nbsp;<sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image1.gif"></sub> 
<br>&nbsp;<b> Analysis </b>
<br>All lines except line 5 take O(n) time in the worst case. We can see inspection that total time to examine all buckets in line 5 is O(n-1) i.e., O(n). 
<br>The only interesting part of the analysis is the time taken by Insertion sort in line 5. Let n<sub>i</sub> be the random variable denoting the number of elements in the bucket B[i]. Since the expected time to sort by INSERTION_SORT is O(n<sup>2</sup>), the expected time to sort the elements in bucket B[i] is 
<br>&nbsp;E[O(<sup>2</sup>n<sub>i</sub>)] = O(E[<sup>2</sup>n<sub>i</sub>]] 
<br>Therefore, the total expected time to sort all elements in all buckets is 
<br>&nbsp;<sup> n-1</sup><sub>i=0</sub> O(E[<sup>2</sup>n<sub>i</sub>]) = O<sup> n-1</sup><sub>i=0</sub> (E[<sup>2</sup>n<sub>i</sub>])&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------------ A 
<br>&nbsp;In order to evaluate this summation, we must determine the distribution of each random variable n 
<br>We have n elements and n buckets. The probability that a given element falls in a bucket B[i] is 1/n i.e., Probability = p = 1/n. (Note that this problem is the same as that of "Balls-and-Bin" problem). 
<br>Therefore, the probability follows the binomial distribution, which has 
<br>&nbsp;&nbsp;&nbsp; mean:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E[n<sub>i</sub>] = np = 1 
<br>&nbsp;&nbsp;&nbsp; variance:&nbsp; Var[n<sub>i</sub>] = np(1- p) = 1- 1/n 
<br>For any random variable, we have 
<br>E[<sup>2</sup>n<sub>i</sub>] = Var[n<sub>i</sub>] +&nbsp; E<sup>2</sup>[n<sub>i</sub>] 
<br>= 1 - 1/n + 1<sup>2</sup> 
<br>= 2 - 1/n 
<br>= Θ(1) 
<br>Putting this value in equation A above, (do some tweaking) and we have a expected time for INSERTION_SORT, O(n). 
<br>&nbsp;Now back to our original problem 
<br>In the above Bucket sort algorithm, we observe 
<br>T(n) = [time to insert n elements in array A] + [time to go through auxiliary array B[0 . . n-1] * (Sort by INSERTION_SORT) 
<br>= O(n) + (n-1) (n) 
<br>= O(n) 
<br>&nbsp;Therefore, the entire Bucket sort algorithm runs in linear expected time. 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image3.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image4.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image4.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image3.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_bucket-sort/image3.wmf"></sub>
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
