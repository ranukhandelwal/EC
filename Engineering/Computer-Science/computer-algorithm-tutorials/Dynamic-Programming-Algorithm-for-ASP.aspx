<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Dynamic-Programming-Algorithm-for-ASP.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Dynamic_Programming_Algorithm_for_ASP" %>
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
	<b>Dynamic-Programming Algorithm for the Activity-Selection Problem </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>An activity-selection is the problem of scheduling a resource among several competing activity. 
<br>Statement: Given a set S of n activities with and start time, S<sub>i</sub> and f<sub>i</sub>, finish time of an i<sup>th</sup> activity. Find the maximum size set of mutually compatible activities. 
<br><b>Compatible Activities </b>
<br>Activities i and j are compatible if the half-open internal [s<sub>i</sub>, f<sub>i</sub>) and [s<sub>i</sub>, f<sub>i</sub>) do not overlap, that is, i and j are compatible if s<sub>i</sub> &#8805; f<sub>j</sub>&nbsp; and s<sub>j</sub> &#8805; f<sub>i</sub> 
<br><b>Greedy Algorithm for Selection Problem </b>
<br>I. Sort the input activities by increasing finishing time. 
<br>f<sub>1</sub> &#8804;&nbsp; f<sub>2</sub> &#8804; . . . &#8804;&nbsp; f<sub>n</sub> 
<br>II Call GREEDY-ACTIVITY-SELECTOR (Sif) 
<br>1. n = length [s] 
<br>2. A={i} 
<br>3. j = 1 
<br>4. FOR i = 2 to n 
<br>5. do if&nbsp; s<sub>i</sub> &#8805; f<sub>i</sub> 
<br>6. then A= A&cup;{i} 
<br>7. j = i 
<br>8. Return A 
<br><b>Operation of the algorithm </b>
<br>Let 11 activities are given S = {p, q, r, s, t, u, v, w, x, y, z} start and finished times for proposed activities are (1, 4), (3, 5), (0, 6), 5, 7), (3, 8), 5, 9), (6, 10), (8, 11), (8, 12), (2, 13) and (12, 14). 
<br>A = {p} Initialization at line 2 
<br>A = {p, s} line 6 - 1<sup>st</sup> iteration of FOR - loop 
<br>A = {p, s, w} line 6 -2<sup>nd</sup> iteration of FOR - loop 
<br>A = {p, s, w, z} line 6 - 3<sup>rd</sup> iteration of FOR-loop 
<br>Out of the FOR-loop and Return A = {p, s, w, z} 
<br><b>Analysis </b>
<br>Part I requires O(nlgn) time (use merge of heap sort). 
<br>Part II requires Theta(n) time assuming that activities were already sorted in part I by their finish time. 
<br><b>CORRECTNESS </b>
<br>Note that Greedy algorithm do not always produce optimal solutions but GREEDY-ACTIVITY-SELECTOR does. 
<br>Theorem: Algorithm GREED-ACTIVITY-SELECTOR produces solution of maximum size for the activity-selection problem. 
<br>Proof Idea: Show the activity problem satisfied 
<br>I. Greedy choice property. 
<br>II. Optimal substructure property 
<br>Proof: 
<br>&nbsp;&nbsp;&nbsp; I.&nbsp; Let S = {1, 2, . . . , n} be the set of activities. Since activities are in order by finish time. It implies that activity 1 has the earliest finish time. Suppose, A is a subset of S is an optimal solution and let activities in A are ordered by finish time. Suppose, the first activity in A is k. If k = 1, then A begins with greedy choice and we are done (or to be very precise, there is nothing to proof here). If k not=1, we want to show that there is another solution B that begins with greedy choice, activity 1. Let B =&nbsp; A - {k} U {1}. Because f<sub>1</sub> =&lt; f<sub>k</sub>, the activities in B are disjoint and since B has same number of activities as A, i.e., |A| = |B|, B is also optimal. 
<br>&nbsp;&nbsp;&nbsp; II.&nbsp; Once the greedy choice is made, the problem reduces to finding an optimal solution for the problem. If A is an optimal solution to the original problem S, then A` = A - {1} is an optimal solution to the activity-selection problem S` = {i in S: S<sub>i</sub> &gt;= f<sub>i</sub>}. why? 
<br>If we could find a solution B` to S` with more activities then A`, adding 1 to B` would yield a solution B to S with more activities than A, there by contradicting the optimality. 
<br>Problem: Given a set of activities to among lecture halls. Schedule all the activities using minimal lecture halls. 
<br>In order to determine which activity should use which lecture hall, the algorithm uses the GREEDY-ACTIVITY-SELECTOR to calculate the activities in the first lecture hall. If there are some activities yet to be scheduled, a new lecture hall is selected and GREEDY-ACTIVITY-SELECTOR is called again. This continues until all activities have been scheduled. 
<br><b>LECTURE-HALL-ASSIGNMENT (s,f) </b>
<br>n = length [s) 
<br>FOR i = 1 to n 
<br>DO HALL [i] = NIL 
<br>k = 1 
<br>WHILE (Not empty (s)) 
<br>Do HALL [k] = GREEDY-ACTIVITY-SELECTOR (s, t, n) 
<br>&nbsp;k = k + 1 
<br>RETURN HALL 
<br>Following changes can be made in the GREEDY-ACTIVITY-SELECTOR (s, f) (CLR). 
<br>j = first (s) 
<br>A = i 
<br>FOR i = j + 1 to n 
<br>DO IF s(i) not= "-" 
<br>&nbsp;THEN IF 
<br><b>GREED-ACTIVITY-SELECTOR (s,f,n) </b>
<br>j = first (s) 
<br>A = i = j + 1 to n 
<br>&nbsp;IF s(i] not = "-" THEN 
<br>&nbsp;&nbsp;&nbsp;IF s[i] &gt;= f[j]|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;THEN A = A U {i} 
<br>&nbsp;&nbsp;&nbsp;s[i] = "-" 
<br>&nbsp;&nbsp;&nbsp;j = i 
<br>return A 
<br><b>CORRECTNESS: </b>
<br>The algorithm can be shown to be correct and optimal. As a contradiction, assume the number of lecture halls are not optimal, that is, the algorithm allocates more hall than necessary. Therefore, there exists a set of activities B which have been wrongly allocated. An activity b belonging to B which has been allocated to hall H[i] should have optimally been allocated to H[k]. This implies that the activities for lecture hall H[k] have not been allocated optimally, as the GREED-ACTIVITY-SELECTOR produces the optimal set of activities for a particular lecture hall. 
<br>Analysis:&nbsp; 
<br>In the worst case, the number of lecture halls require is n. GREED-ACTIVITY-SELECTOR runs in &theta; (n). The running time of this algorithm is O(n<sup>2</sup>). 
<br>Observe that choosing the activity of&nbsp; least duration will not always produce an optimal solution. For example, we have a set of activities {(3, 5), (6, 8), (1, 4), (4, 7), (7, 10)}. Here, either (3, 5) or (6, 8) will be picked first, which will be picked first, which will prevent the optimal solution of {(1, 4), (4, 7), (7, 10)} from being found. 
<br>Also observe that choosing the activity with the least overlap will not always produce solution. For example, we have a set of activities {(0, 4), (4, 6), (6, 10), (0, 1), (1, 5), (5, 9), (9, 10), (0, 3), (0, 2), (7, 10), (8, 10)}. Here the one with the least overlap with other activities is (4, 6), so it will be picked first. But that would prevent the optimal solution of&nbsp; {(0, 1), (1, 5), (5, 9), (9, 10)} from being found. 
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
	<br><b>Knapsack Problem</b>
<br>Discussion forum for Knapsack Problem</td>
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
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>Password: 
</td>

      
      <td class="txt">
	<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Email-ID</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br><b>Confirm-Password</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Full-Name</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image2.wmf"></sub>
</td>

      
      <td class="txt">
	<br>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_dynamic-programming-algorithm-for-asp/image1.wmf"></sub>
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
