<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Activity-Selection-Problem-DP-Solution.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Activity_Selection_Problem_DP_Solution" %>
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
	<b>Activity Selection Problem DP Solution </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Dynamic-Programming Algorithm for the Activity-Selection Problem 
<br>An activity-selection is the problem of scheduling a resource among several competing activity. 
<br>&nbsp;<b> Problem Statement&nbsp;</b>&nbsp;&nbsp; Given a set S of n activities with and start time, S<sub>i</sub> and f<sub>i</sub>, finish time of an i<sup>th</sup> activity. Find the maximum size set of mutually compatible activities. 
<br>&nbsp; 
	<br><b><b>Compatible Activities </b></b>
	<br>Activities i and j are compatible if the half-open internal [s<sub>i</sub>, f<sub>i</sub>) and [s<sub>j</sub>, f<sub>j</sub>) do not overlap, that is, i and j are compatible if s<sub>i</sub>&#8805; f<sub>j</sub>&nbsp; and s<sub>j</sub> &#8805;&nbsp; f<sub>i</sub> 
<br>&nbsp; 
	<br><b><b>Dynamic-Programming Algorithm </b></b>
	<br>The finishing time are in a sorted array f[i] and the starting times are in array s[i]. The array m[i] will store the value m<sub>i</sub>, where mi is the size of the largest of mutually compatible activities among activities {1, 2, . . . , i}. Let BINARY-SEARCH(f, s) returns the index of a number i in the sorted array f such that f(i) &#8804; s &#8804;&nbsp; f[i + 1]. 
<br>&nbsp;for&nbsp; i =1&nbsp; to&nbsp; n 
<br>do &nbsp; m[i] = max(m[i-1], 1+ m [BINARY-SEARCH(f, s[i])]) 
<br>We have P(i] = 1 if activity i&nbsp;is in optimal selection, and P[i] = 0 
<br>otherwise 
<br>i = n 
<br>&nbsp;while&nbsp;&nbsp; i &gt; 0 
<br>do if m[i] = m[i-1] 
<br>then P[i] = 0 
<br>&nbsp; i = i - 1 
<br>&nbsp;&nbsp;else 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i = BINARY-SEARCH (f, s[i]) 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P[i] = 1 
<br><b>&nbsp;Analysis</b> 
<br>The running time of this algorithm is O(n lg n) because of the binary search which takes lg(n) time as opposed to the O(n) running time of the greedy algorithm. This greedy algorithm assumes that the activities already sorted by increasing time. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW </b><b>THREADS</b> " NavigateUrl="javascript:moveNewThread(); "></asp:HyperLink></td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_activity-selection-problem-dp-solution/image1.wmf"></sub>
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
