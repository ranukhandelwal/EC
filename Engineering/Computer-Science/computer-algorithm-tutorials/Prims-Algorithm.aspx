<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Prims-Algorithm.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Prims_Algorithm" %>
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
	<b>Prim's Algorithm </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>This algorithm was first propsed by Jarnik, but typically attributed to Prim. it starts from an arbitrary vertex (root) and at each stage, add a new branch (edge) to the tree already constructed; the algorithm halts when all the vertices in the graph have been reached. This strategy is greedy in the sense that at each step the partial spanning tree is augmented with an edge that is the smallest among all possible adjacent edges. 
<br>MST-PRIM 
<br>Input: A weighted, undirected graph G=(V, E, w) 
<br>Output: A minimum spanning tree T. 
<br>T={} 
<br>Let r be an arbitrarily chosen vertex from V. 
<br>U = {r} 
<br>WHILE | U| &lt; n 
<br>DO 
<br>Find u in U and v in V-U such that the edge (u, v) is a smallest edge between U-V. 
<br>T = TU{(u, v)} 
<br>U= UU{v} 
<br>Analysis 
<br>The algorithm spends most of its time in finding the smallest edge. So, time of the algorithm basically depends on how&nbsp; do we search this edge. 
<br>Straightforward method 
<br>Just find the smallest edge by searching the adjacency list of the vertices in V. In this case, each iteration costs O(m) time, yielding a total running time of O(mn). 
<br>Binary heap 
<br>By using binary heaps, the algorithm runs in O(m log n). 
<br>Fibonacci heap 
<br>By using Fibonacci heaps, the algorithm runs in O(m + n log n) time. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/prims-algorithm.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_prims-algorithm/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_prims-algorithm/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_prims-algorithm/image3.wmf"></sub>
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
