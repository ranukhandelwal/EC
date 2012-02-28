<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Knapsack-Problem-DP-Solution.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Knapsack_Problem_DP_Solution" %>
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
	<b>Knapsack Problem DP Solution </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Dynamic-Programming Solution to the 0-1 Knapsack Problem 
<br><b>Problem Statement</b> &nbsp;&nbsp; A thief robbing a store and can carry a maximal weight of W into their knapsack. There are n items and i<sup>th</sup> &nbsp;item weigh w<sub>i</sub> and is worth v<sub>i</sub> dollars. What items should thief take? 
<br>&nbsp;There are two versions of problem 
<br>Fractional knapsack problem&nbsp;&nbsp;&nbsp; The setup is same, but the thief can take fractions of items, meaning that the items can be broken into smaller pieces so that thief may decide to carry only a fraction of x<sub>i</sub> of item i, where 0 &#8804; x<sub>i</sub> &#8804; 1. 
<br>0-1 knapsack problem&nbsp;&nbsp;&nbsp; The setup is the same, but the items may not be broken into smaller pieces, so thief may decide either to take an item or to leave it (binary choice), but may not take a fraction of an item. 
<br>&nbsp;<b> Fractional knapsack problem </b>
<br>· Exhibit greedy choice property. 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=>  Greedy algorithm exists. 
<br>· Exhibit optimal substructure property. 
<br>· =>  
<br><b>0-1 knapsack problem </b>
<br>· Exhibit No greedy choice property. 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=>  No greedy algorithm exists. 
<br>· Exhibit optimal substructure property. 
<br>· Only dynamic programming algorithm exists. 
<br>&nbsp; 
	<br><b><b>Dynamic-Programming Solution to the 0-1 Knapsack Problem </b></b>
	<br> Let i be the highest-numbered item in an optimal solution S for W pounds. Then S` = S - {i} is an optimal solution for W - w<sub>i</sub> pounds and the value to the solution S is V<sub>i</sub> plus the value of the subproblem. 
<br>We can express this fact in the following formula: define c[i, w] to be the solution for items&nbsp; 1,2, . . . , i and maximum weight w. Then <Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br>0 </td>

      
      <td class="txt">
	<br>if i = 0 or w = 0</td>
</tr>

    <tr>

      
      <td class="txt">
<br>c[i,w]&nbsp; =c[i-1, w] 
</td>

      
      <td class="txt">
	<br>if w<sub>i</sub> &#8805; 0
</td>
</tr>

    <tr>

      
      <td class="txt">
<br>max [v<sub>i</sub> + c[i-1, w-w<sub>i</sub>], c[i-1, w]} 
</td>

      
      <td class="txt">
	<br>if i &gt; 0 and w &#8805;&nbsp; w<sub>i</sub>
</td>
</tr></table>
<br>This says that the value of the solution to i items either include i<sup>th</sup> item, in which case it is v<sub>i</sub> plus a subproblem solution for (i - 1) items and the weight excluding w<sub>i</sub>, or does not include i<sup>th</sup> item, in which case it is a subproblem's solution for (i - 1) items and the same weight. That is, if the thief picks item i, thief takes v<sub>i</sub> value, and thief can choose from items w - w<sub>i</sub>, and get c[i - 1, w - w<sub>i</sub>] additional value. On other hand, if thief decides not to take item i, thief can choose from item 1,2, . . . , i- 1 upto the weight limit w, and get c[i - 1, w] value. The better of these two choices should be made. 
<br>Although the 0-1 knapsack problem, the above formula for c is similar to LCS formula: boundary values are 0, and other values are computed from the input and "earlier" values of c. So the 0-1 knapsack algorithm is like the LCS-length algorithm given in CLR for finding a longest common subsequence of two sequences. 
<br>The algorithm takes as input the maximum weight W, the number of items n, and the two sequences v = &lt;V<sub>1</sub>, v<sub>2</sub>, . . . , v<sub>n</sub> &gt; and w = &lt;W<sub>1</sub>, w<sub>2</sub>, . . . , w<sub>n</sub> &gt;. It stores the c[i, j] values in the table, that is, a two dimensional array, c[0 . . n, 0 . . w] whose entries are computed in a row-major order. That is, the first row of c is filled in from left to right, then the second row, and so on. At the end of the computation, c[n, w] contains the maximum value that can be picked into the knapsack. 
<br>&nbsp; 
	<br><b><b>Dynamic-0-1-knapsack (v, w, n, W) </b></b>
	<br>
<br>FOR w = 0 TO W 
<br>DO&nbsp; c[0, w] = 0 
<br>FOR i=1 to n 
<br>DO c[i, 0] = 0 
<br>FOR w=1 TO W 
<br>DO IFf w<sub>i</sub> &#8804; w 
<br>THEN IF&nbsp; v<sub>i</sub> + c[i-1, w-w<sub>i</sub>] 
<br>THEN c[i, w] = v<sub>i</sub> + c[i-1, w-w<sub>i</sub>] 
<br>ELSE c[i, w] = c[i-1, w] 
<br>ELSE 
<br>c[i, w] = c[i-1, w] 
<br>&nbsp; The set of items to take can be deduced from the table, starting at c[n. w] and tracing backwards where the optimal values came from. If c[i, w] = c[i-1, w] item i is not part of the solution, and we are continue tracing with c[i-1, w]. Otherwise item i is part of the solution, and we continue tracing with c[i-1, w-W]. 
<br>&nbsp;<b> Analysis </b>
<br>This dynamic-0-1-kanpsack algorithm takes &theta; (nw) times, broken up as follows: &theta; (nw) times to fill the c-table, which has (n +1).(w +1) entries, each requiring &theta; (1) time to compute. O(n) time to trace the solution, because the tracing process starts in row n of the table and moves up 1 row at each step. 
<br>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/knapsack-problem-dp-solution.aspx"></asp:HyperLink></td>
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Start your new thread here</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Enter thread subject</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem-dp-solution/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem-dp-solution/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_knapsack-problem-dp-solution/image3.wmf"></sub>
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
