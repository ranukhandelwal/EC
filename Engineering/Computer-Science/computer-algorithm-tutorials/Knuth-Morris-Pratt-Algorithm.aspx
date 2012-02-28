<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Knuth-Morris-Pratt-Algorithm.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Knuth_Morris_Pratt_Algorithm" %>
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
	<b>Knuth-Morris-Pratt Algorithm </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Knuth, Morris and Pratt discovered first linear time string-matching algorithm by following a tight analysis of the naïve algorithm. Knuth-Morris-Pratt algorithm keeps the information that naïve approach wasted gathered during the scan of the text. By avoiding this waste of information, it achieves a running time of O(n + m), which is optimal in the worst case sense. That is, in the worst case Knuth-Morris-Pratt algorithm we have to examine all the characters in the text and pattern at least once. 
<br>&nbsp; 
	<br><b><b>The Failure Function </b></b>
	<br>The KMP algorithm preprocess the pattern P by computing a failure function f that indicates the largest possible shift s using previously performed comparisons. Specifically, the failure function f(j) is defined as the length of the longest prefix of P that is a suffix of P[i . . j]. 
<br>&nbsp;<b> KNUTH-MORRIS-PRATT FAILURE (P) </b>
<br>Input:&nbsp;&nbsp;&nbsp; Pattern with m characters 
<br>Output: Failure function f for P[i . . j] 
<br>i  1 
<br>j  0 
<br>f(0)  0 
<br>while i &lt; m do 
<br>if P[j] = P[i] 
<br>f(i)  j +1 
<br>i  i +1 
<br>j j + 1 
<br>else if 
<br>j  f(j - 1) 
<br>else 
<br>f(i)  0 
<br>i  i +1 
<br>&nbsp;Note that the failure function f for P, which maps j to the length of the longest prefix of P that is a suffix of P[1 . . j], encodes repeated substrings inside the pattern itself. 
<br>As an example, consider the pattern P = a b a c a b. The failure function, f(j), using above algorithm is <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>j </td>

      
      <td class="txt">
	<br>a&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
</tr>

    <tr>

      
      <td class="txt">
<br>P[j] 
</td>

      
      <td class="txt">
	<br>a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>f(j) 
</td>

      
      <td class="txt">
	<br>0&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2
</td>
</tr></table>
<br>By observing the above mapping we can see that the longest prefix of pattern, P, is "a b" which is also a suffix of pattern P. 
<br>Consider an attempt to match at position i, that is when the pattern P[0 . . m -1] is aligned with text P[i . . i + m -1]. <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>T: </td>

      
      <td class="txt">
	<br>a b a c a a b c c </td>
</tr>

    <tr>

      
      <td class="txt">
<br>P: 
</td>

      
      <td class="txt">
	<br>a b a c a b 
</td>
</tr></table>
<br>Assume that the first mismatch occurs between characters T[ i+ j] and P[j] for 0 &lt; j &lt; m. In the above example, the first mismatch is T[5] = a and P[5] = b. 
<br>Then, T[i . . i + j -1] = P[0 . . j -1] = u 
<br>That is,&nbsp; T[ 0 . . 4] = P[0 . . 4] = u,&nbsp; in the example [u = a b a c a] and 
<br>T[i + j] &#8800; P[j] i.e., T[5] &#8800;&nbsp; P[5],&nbsp; In the example [T[5] = a &#8800;&nbsp; b = P[5]]. 
<br>&nbsp;When shifting, it is reasonable to expect that a prefix v of the pattern matches some suffix of the portion u of the text. In our example, u = a b a c a and v = a b a c a, therefore, 'a' a prefix of v matches with 'a' a suffix of u. Let l(j) be the length of the longest string P[0 . . j -1] of pattern that matches with text followed by a character c different from P[j]. Then after a shift, the comparisons can resume between characters T[i + j] and P[l(j)], i.e., T(5) and P(1) <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>T: </td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>b </td>

      
      <td class="txt">
	<br>a </td>

      
      <td class="txt">
	<br>c </td>

      
      <td class="txt">
	<br>c </td>
</tr>

    <tr>

      
      <td class="txt">
<br>P: 
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>
</td>

      
      <td class="txt">
	<br>a 
</td>

      
      <td class="txt">
	<br>b 
</td>

      
      <td class="txt">
	<br>a 
</td>

      
      <td class="txt">
	<br>c 
</td>

      
      <td class="txt">
	<br>a 
</td>

      
      <td class="txt">
	<br>b
</td>
</tr></table>
<br>Note that no comparison between T[4] and P[1] needed here. 
<br>&nbsp; <b>KNUTH-MORRIS-PRATT (T, P) </b>
<br>Input:&nbsp;&nbsp;&nbsp; Strings T[0 . . n] and P[0 . . m] 
<br>Output: Starting index of substring of T matching P 
<br>f  compute failure function of Pattern P 
<br>i  0 
<br>j  0 
<br>while i &lt; length[T] do 
<br>if j  m-1 then 
<br>return i- m+1&nbsp;&nbsp;&nbsp; // we have a match 
<br>i  i +1 
<br>j  j +1 
<br>else if j &gt; 0 
<br>&nbsp;j  f(j -1) 
<br>else 
<br>i  i +1 
<br>&nbsp;<b> Analysis </b>
<br>The running time of Knuth-Morris-Pratt algorithm is proportional to the time needed to read the characters in text and pattern. In other words, the worst-case running time of the algorithm is O(m + n) and it requires O(m) extra space. It is important to note that these quantities are independent of the size of the underlying alphabet. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/knuth-morris-pratt-algorithm.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Dijkstras Algorithm</b>
<br>Discussion forum for Dijkstras Algorithm</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knuth-morris-pratt-algorithm/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knuth-morris-pratt-algorithm/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knuth-morris-pratt-algorithm/image3.wmf"></sub>
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
