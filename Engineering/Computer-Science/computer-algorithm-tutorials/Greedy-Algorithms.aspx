<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Greedy-Algorithms.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Greedy_Algorithms" %>
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
	<b>Greedy Algorithms </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Greedy Introduction </b></b>
	<br>Greedy algorithms are simple and straightforward. They are shortsighted in their approach in the sense that they take decisions on the basis of information at hand without worrying about the effect these decisions may have in the future. They are easy to invent, easy to implement and most of the time quite efficient. Many problems cannot be solved correctly by greedy approach. Greedy algorithms are used to solve optimization problems 
	<br><b><b>Greedy Approach </b></b>
	<br>Greedy Algorithm works by making the decision that seems most promising at any moment; it never reconsiders this decision, whatever situation may arise later. 
<br>As an example consider the problem of "Making Change". 
<br>Coins available are: 
<br>· dollars (100 cents) 
<br>· quarters (25 cents) 
<br>· dimes (10 cents) 
<br>· nickels (5 cents) 
<br>· pennies (1 cent) 
<br>&nbsp; <b>Problem </b>&nbsp;&nbsp;&nbsp; Make a change of a given amount using the smallest possible number of coins. 
<br>&nbsp;<b> Informal Algorithm </b>
<br>· Start with nothing. 
<br>· at every stage without passing the given amount. 
<br>o add the largest to the coins already chosen. 
<br>&nbsp;<b> Formal Algorithm </b>
<br>Make change for n units using the least possible number of coins. 
<br>MAKE-CHANGE (n) 
<br>C  {100, 25, 10, 5, 1}&nbsp;&nbsp;&nbsp;// constant. 
<br>&nbsp;&nbsp;&nbsp;&nbsp;Sol  {};&nbsp;&nbsp; // set that will hold the solution set. 
<br>&nbsp;&nbsp;&nbsp;&nbsp;Sum  0 sum of item in solution set 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHILE sum not = n 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x = largest item in set C such that sum + x &#8804; n 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF no such item THEN 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN&nbsp;&nbsp;&nbsp; "No Solution" 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S  S {value of x} 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sum  sum + x 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN S 
<br>&nbsp;<b> Example</b> &nbsp;&nbsp;&nbsp; Make a change for 2.89 (289 cents) here n = 2.89 and the solution contains 2 dollars, 3 quarters, 1 dime and 4 pennies. The algorithm is greedy because at every stage it chooses the largest coin without worrying about the consequences. Moreover, it never changes its mind in the sense that once a coin has been included in the solution set, it remains there. 
<br>&nbsp; 
	<br><b><b>Characteristics and Features of Problems solved by Greedy Algorithms </b></b>
	<br>To construct the solution in an optimal way. Algorithm maintains two sets. One contains chosen items and the other contains rejected items. 
<br>The greedy algorithm consists of four (4) function. 
<br>1. A function that checks whether chosen set of items provide a solution. 
<br>2. A function that checks the feasibility of a set. 
<br>3. The selection function tells which of the candidates is the most promising. 
<br>4. An objective function, which does not appear explicitly, gives the value of a solution. 
<br>&nbsp; 
	<br><b><b>Structure Greedy Algorithm </b></b>
	<br>· Initially the set of chosen items is empty i.e., solution set. 
<br>· At each step 
<br>o item will be added in a solution set by using selection function. 
<br>o IF the set would no longer be feasible 
<br>§ reject items under consideration (and is never consider again). 
<br>o ELSE IF set is still feasible THEN 
<br>§ add the current item. 
<br>&nbsp; 
	<br><b><b>Definitions of feasibility </b></b>
	<br>A feasible set (of candidates) is promising if it can be extended to produce not merely a solution, but an optimal solution to the problem. In particular, the empty set is always promising why? (because an optimal solution always exists) 
<br>Unlike Dynamic Programming, which solves the subproblems bottom-up, a greedy strategy usually progresses in a top-down fashion, making one greedy choice after another, reducing each problem to a smaller one. 
<br><b>Greedy-Choice Property </b>
<br>The "greedy-choice property" and "optimal substructure" are two ingredients in the problem that lend to a greedy strategy. 
<br><b>Greedy-Choice Property </b>
<br>It says that a globally optimal solution can be arrived at by making a locally optimal choice. 
<br>
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for Knapsack Problem details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/knapsack-problem.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Activity Selection Problem details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/activity-selection-problem.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Þ</b><b> Click here for Huffman Codes details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/huffman-codes.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Þ</b><b> Click here for Minimum Spanning Tree details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/minimum-spanning-tree.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Þ</b><b> Click here for Kruskals Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/kruskals-algorithm.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Þ</b><b> Click here for Prims Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/prims-algorithm.aspx"></asp:HyperLink>
<br>
<br>
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>Þ</b><b> Click here for Dijkstras Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/dijkstras-algorithm.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink8" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/greedy-algorithms.aspx"></asp:HyperLink></td>
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
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Start your new thread here</b></td>
</tr>

    <tr>

      
      <td class="txt">
<br><b>Enter thread subject</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_greedy-algorithms/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_greedy-algorithms/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_greedy-algorithms/image3.wmf"></sub>
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
