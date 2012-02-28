<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Naive-String-Matching.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Naive_String_Matching" %>
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
	<b>Naïve String Matching </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>The naïve approach simply test all the possible placement of Pattern P[1 . . m] relative to text T[1 . . n]. Specifically, we try shift s = 0, 1, . . . , n - m, successively and for each shift, s. Compare T[s +1 . . s + m] to P[1 . . m] 
<br>&nbsp; <b>NAÏVE_STRING_MATCHER (T, P) </b>
<br>1. n  length [T] 
<br>2. m  length [P] 
<br>3. for s  0 to n - m do 
<br>4. if P[1 . . m] = T[s +1 . . s + m] 
<br>5. then return valid shift s 
<br>&nbsp; The naïve string-matching procedure can be interpreted graphically as a sliding a pattern P[1 . . m] over the text T[1 . . n] and noting for which shift all of the characters in the pattern match the corresponding characters in the text. 
<br>In other to analysis the time of naïve matching, we would like to implement above algorithm to understand the test involves in line 4. 
<br>Note that in this implementation, we use notation P[1 . . j] to denote the substring of P from index i to index j. 
<br>That is, P[1 . . j] = P[i] P[i +1] . . . P[j]. 
<br>&nbsp;<b> NAÏVE_STRING_MATCHER (T, P) </b>
<br>1. n  length [T] 
<br>2. m  length [P] 
<br>3. for s  0 to n-m do 
<br>4. j  1 
<br>5. while j &#8804; m and T[s + j] = P[j] do 
<br>6. j  j +1 
<br>7. If j &gt; m then 
<br>8. return valid shift s 
<br>9. return no valid shift exist&nbsp; // i.e., there is no substring of T matching P. 
<br>&nbsp; Referring to implementation of naïve matcher, we see that the for-loop in line 3 is executed at most n - m +1 times, and the while-loop in line 5 is executed at most m times. Therefore, the running time of the algorithm is O((n - m +1)m), which is clearly O(nm). Hence, in the worst case, when the length of the pattern, m are roughly equal, this algorithm runs in the quadratic time. 
<br>One worst case is that text, T, has n number of A's and the pattern, P, has (m -1) number of A's followed by a single B. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/naive-string-matching.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_naive-string-matching/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_naive-string-matching/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_naive-string-matching/image3.wmf"></sub>
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
