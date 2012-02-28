<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Counting-Sort.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Counting_Sort" %>
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
	<b>Counting Sort </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Counting sort assumes that each of the elements is an integer in the range 1 to k, for some integer k. When k = O(n), the Counting-sort runs in O(n) time. The basic idea of Counting sort is to determine, for each input elements x, the number of elements less than x. This information can be used to place directly into its correct position. For example, if there 17 elements less than x, than x belongs in output position 18. 
<br>In the code for Counting sort, we are given array A[1 . . n] of length n. We required two more arrays, the array B[1 . . n] holds the sorted output and the array c[1 . . k] provides temporary working storage. 
<br>&nbsp;<b> COUNTING_SORT (A, B, k) </b>
<br>1. for i  1 to k do 
<br>2. c[i]  0 
<br>3. for j  1 to n do 
<br>4. c[A[j]]  c[A[j]] + 1 
<br>5. //c[i] now contains the number of elements equal to i 
<br>6. for i  2 to k do 
<br>7. c[i]  c[i] + c[i-1] 
<br>8. // c[i] now contains the number of elements &#8804; i 
<br>9. for j  n downto 1 do 
<br>10. B[c[A[i]]]  A[j] 
<br>11. c[A[i]]  c[A[j]] - 1 
<br>&nbsp;Each line below shows the step by step operation of counting sort. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>A </b></b></td>

      
      <td class="txt">
	<br>3 </td>

      
      <td class="txt">
	<br>6 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>1 </td>

      
      <td class="txt">
	<br>3 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>1 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br><b><b>C </b></b></td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>0 </td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>3 </td>

      
      <td class="txt">
	<br>0 </td>

      
      <td class="txt">
	<br>1</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>C </b></b></td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>7 </td>

      
      <td class="txt">
	<br>7 </td>

      
      <td class="txt">
	<br>8 </td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b><b>B </b></b></td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>&nbsp; </td>

      
      <td class="txt">
	<br><b><b>C </b></b></td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>2 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>6 </td>

      
      <td class="txt">
	<br>7 </td>

      
      <td class="txt">
	<br>8 </td>
</tr>

    <tr>

      
      <td class="txt">
<br><b><b>B&nbsp;&nbsp;</b></b>
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br><b><b>C</b></b>
</td>

      
      <td class="txt">
	<br>1 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>6 
</td>

      
      <td class="txt">
	<br>7 
</td>

      
      <td class="txt">
	<br>8
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b><b>B</b></b>
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>&nbsp; 
</td>

      
      <td class="txt">
	<br><b><b>C</b></b>
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>2 
</td>

      
      <td class="txt">
	<br>4 
</td>

      
      <td class="txt">
	<br>5 
</td>

      
      <td class="txt">
	<br>7 
</td>

      
      <td class="txt">
	<br>8
</td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>B </td>

      
      <td class="txt">
	<br>1 </td>

      
      <td class="txt">
	<br>1 </td>

      
      <td class="txt">
	<br>3 </td>

      
      <td class="txt">
	<br>3 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>4 </td>

      
      <td class="txt">
	<br>6</td>
</tr></table>
<br><b><b>Analysis </b></b>
	<br>1. The loop of lines 1-2&nbsp;&nbsp; takes O(k) time 
<br>2. The loop of lines 3-4&nbsp;&nbsp; takes O(n) time 
<br>3. The loop of lines 6-7&nbsp;&nbsp; takes O(k) time 
<br>4. The loop of lines 9-11 takes O(n) time 
<br>Therefore, the overall time of the counting sort is O(k) + O(n) + O(k) + O(n) = O(k + n) 
<br>&nbsp;In practice, we usually use counting sort algorithm when have k = O(n), in which case running time is O(n). 
<br>The Counting sort is a stable sort i.e., multiple keys with the same value are placed in the sorted array in the same order that they appear in the input array. 
<br>Suppose that the for-loop in line 9 of the Counting sort is rewritten: 
<br>9&nbsp;&nbsp;&nbsp; for j  1 to n 
<br>then the stability no longer holds. Notice that the correctness of argument in the CLR does not depend on the order in which array A[1 . . n] is processed. The algorithm is correct no matter what order is used. In particular, the modified algorithm still places the elements with value k in position c[k - 1] + 1 through c[k], but in reverse order of their appearance in A[1 . . n]. 
<br>Note that Counting sort beats the lower bound of&nbsp; ohm (n lg n), because it is not a comparison sort. There is no comparison between elements. Counting sort uses the actual values of the elements to index into an array. 
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image2.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image3.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image2.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_counting-sort/image2.wmf"></sub>
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
