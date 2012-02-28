<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Fractional-Knapsack.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Fractional_Knapsack" %>
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
	<b>Fractional Knapsack </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
	<br><b><b>Greedy Solution to the Fractional Knapsack Problem </b></b>
	<br>There are n items in a store. For i =1,2, . . . , n, item i has weight w<sub>i</sub> &gt; 0 and worth v<sub>i</sub> &gt; 0. Thief can carry a maximum weight of W pounds in a knapsack. In this version of a problem the items can be broken into smaller piece, so the thief may decide to carry only a fraction x<sub>i</sub> of object i, where 0 &#8804; x<sub>i</sub> &#8804; 1. Item i contributes x<sub>i</sub>w<sub>i</sub> to the total weight in the knapsack, and x<sub>i</sub>v<sub>i</sub> to the value of the load. 
<br>In Symbol, the fraction knapsack problem can be stated as follows. maximize <sup>n</sup>S<sub>i=1</sub> x<sub>i</sub>v<sub>i</sub> subject to constraint <sup>n</sup>S<sub>i=1</sub> x<sub>i</sub>w<sub>i</sub> &#8804; W 
<br>It is clear that an optimal solution must fill the knapsack exactly, for otherwise we could add a fraction of one of the remaining objects and increase the value of the load. Thus in an optimal solution <sup>n</sup>S<sub>i=1</sub> x<sub>i</sub>w<sub>i</sub> = W. 
<br>&nbsp; 
	<br><b><b>Greedy-fractional-knapsack (w, v, W) </b></b>
	<br>FOR i =1 to n 
<br>&nbsp;&nbsp;&nbsp; do x[i] =0 
<br>weight = 0 
<br>while weight &lt; W 
<br>&nbsp;&nbsp;&nbsp; do i = best remaining item 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IF weight + w[i] &#8804; W 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; then x[i] = 1 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; weight = weight + w[i] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x[i] = (w - weight) / w[i] 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; weight = W 
<br>return x 
<br>&nbsp; 
	<br><b><b>Analysis&nbsp;&nbsp; </b></b>
	<br>If the items are already sorted into decreasing order of v<sub>i</sub> / w<sub>i</sub>, then 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the while-loop takes a time in O(n); 
<br>Therefore, the total time including the sort is in O(n log n). 
<br>If we keep the items in heap with largest v<sub>i</sub>/w<sub>i</sub> at the root. Then 
<br>· creating the heap takes O(n) time 
<br>· while-loop now takes O(log n) time (since heap property must be restored after the removal of root) 
<br>&nbsp; Although this data structure does not alter the worst-case, it may be faster if only a small number of items are need to fill the knapsack. 
<br>&nbsp;One variant of the 0-1 knapsack problem is when order of items are sorted by increasing weight is the same as their order when sorted by decreasing value. 
<br>The optimal solution to this problem is to sort by the value of the item in decreasing order. Then pick up the most valuable item which also has a least weight. First, if its weight is less than the total weight that can be carried. Then deduct the total weight that can be carried by the weight of the item just pick. The second item to pick is the most valuable item among those remaining. Keep follow the same strategy until thief cannot carry more item (due to weight). 
<br>&nbsp; 
	<br><b><b>Proof </b></b>
	<br>&nbsp; One way to proof the correctness of the above algorithm is to prove the greedy choice property and optimal substructure property. It consist of two steps. First, prove that there exists an optimal solution begins with the greedy choice given above. The second part prove that if A is an optimal solution to the original problem S, then A - a is also an optimal solution to the problem S - s where a is the item thief picked as in the greedy choice and S - s is the subproblem after the first greedy choice has been made. The second part is easy to prove since the more valuable items have less weight. 
<br>Note that if&nbsp; v` / w` , is not it can replace any other because w` &lt; w, but it increases the value because v` &gt; v. 
<br>&nbsp;<b> Theorem&nbsp;</b>&nbsp;&nbsp;&nbsp; The fractional knapsack problem has the greedy-choice property. 
<br><b>Proof</b>&nbsp;&nbsp;&nbsp; &nbsp;Let the ratio v`/w` is maximal. This supposition implies that v`/w` &#8805;&nbsp; v/w&nbsp; for any pair (v, w), so v`v / w &gt; v for any (v, w). Now Suppose a solution does not contain the full w` weight of the best ratio. Then by replacing an amount of any other w with more w` will improve the value. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/fractional-knapsack.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_fractional-knapsack/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_fractional-knapsack/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_fractional-knapsack/image3.wmf"></sub>
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
