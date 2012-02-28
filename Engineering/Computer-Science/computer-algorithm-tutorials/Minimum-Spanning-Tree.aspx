<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Minimum-Spanning-Tree.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Minimum_Spanning_Tree" %>
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
	<b>Minimum Spanning Tree </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Spanning Tree and Minimum Spanning Tree 
	<br><b><b>Spanning Trees </b></b>
	<br>A spanning tree of a graph is any tree that includes every vertex in the graph. Little more formally, a spanning tree of a graph G is a subgraph of G that is a tree and contains all the vertices of G. An edge of a spanning tree is called a branch; an edge in the graph that is not in the spanning tree is called a chord. We construct spanning tree whenever we want to find a simple, cheap and yet efficient way to connect a set of terminals (computers, cites, factories, etc.). Spanning trees are important because of following reasons. 
<br>· Spanning trees construct a sparse sub graph that tells a lot about the original graph. 
<br>· Spanning trees a very important in designing efficient routing algorithms. 
<br>· Some hard problems (e.g., Steiner tree problem and traveling salesman problem) can be solved approximately by using spanning trees. 
<br>· Spanning trees have wide applications in many areas, such as network design, etc. 
<br>&nbsp; 
	<br><b><b>Greedy Spanning Tree Algorithm </b></b>
	<br>One of the most elegant spanning tree algorithm that I know of is as follows: 
<br>· Examine the edges in graph in any arbitrary sequence. 
<br>· Decide whether each edge will be included in the spanning tree. 
<br>Note that each time a step of the algorithm is performed, one edge is examined. If there is only a finite number of edges in the graph, the algorithm must halt after a finite number of steps. Thus, the time complexity of this algorithm is clearly O(n), where n is the number of edges in the graph. 
<br>&nbsp;<b> Some important facts about spanning trees are as follows: </b>
<br>&nbsp; · Any two vertices in a tree are connected by a unique path. 
<br>· Let T be a spanning tree of a graph G, and let e be an edge of G not in T. The T+e contains a unique cycle. 
<br>&nbsp;Lemma&nbsp;&nbsp;&nbsp;&nbsp; The number of spanning trees in the complete graph K<sub>n</sub> is n<sup>n-2</sup>. 
<br>&nbsp;Greediness&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It is easy to see that this algorithm has the property that each edge is examined at most once. Algorithms, like this one, which examine each entity at most once and decide its fate once and for all during that examination are called greedy algorithms. The obvious advantage of greedy approach is that we do not have to spend time reexamining entities. 
<br>&nbsp;Consider the problem of finding a spanning tree with the smallest possible weight or the largest possible weight, respectively called a minimum spanning tree and a maximum spanning tree. It is easy to see that if a graph possesses a spanning tree, it must have a minimum spanning tree and also a maximum spanning tree. These spanning trees can be constructed by performing the spanning tree algorithm (e.g., above mentioned algorithm) with an appropriate ordering of the edges. 
<br><b>Minimum Spanning Tree Algorithm </b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perform the&nbsp; spanning tree algorithm (above) by examining the edges is order of non decreasing weight (smallest first, largest last). If two or more edges have the same weight, order them arbitrarily. 
<br><b>Maximum Spanning Tree Algorithm </b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perform the spanning tree algorithm (above) by examining the edges in order of non increasing weight (largest first, smallest last). If two or more edges have the same weight, order them arbitrarily. 
	<br><b><b>Minimum Spanning Trees </b></b>
	<br>&nbsp; A minimum spanning tree (MST) of a weighted graph G is a spanning tree of G whose edges sum&nbsp; is minimum weight. In other words, a MST is a tree formed from a subset of the edges in a given undirected graph, with two properties: 
<br>· it spans the graph, i.e., it includes every vertex of the graph. 
<br>· it is a minimum, i.e., the total weight of all the edges is as low as possible. 
<br>Let G=(V, E) be a connected, undirected graph where V is a set of vertices (nodes) and E is the set of edges. Each edge has a given non negative length. 
<br>Problem&nbsp;&nbsp;&nbsp; Find a subset T of the edges of G such that all the vertices remain connected when only the edges T are used, and the sum of the lengths of the edges in T is as small as possible. 
<br>Let G` = (V, T) be the partial graph formed by the vertices of G and the edges in T. [Note: A connected graph with n vertices must have at least n-1 edges AND more that n-1 edges implies at least one cycle]. So n-1 is the minimum number of edges in the T. Hence if G` is connected and T has more that n-1 edges, we can remove at least one of these edges without disconnecting (choose an edge that is part of cycle). This will decrease the total length of edges in T. 
<br>G` = (V, T) where T is a subset of E. Since connected graph of n nodes must have n-1 edges otherwise there exist at least one cycle. Hence if G` is connected and T has more that n-1 edges. Implies that it contains at least one cycle. Remove edge from T without disconnecting the G` (i.e., remove the edge that is part of the cycle). This will decrease the total length of the edges in T. Therefore, the new solution is preferable to the old one. 
<br>Thus, T with n vertices and more edges can be an optimal solution. It follow T must have n-1 edges and since G` is connected it must be a tree. The G` is called Minimum Spanning Tree (MST). 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/minimum-spanning-tree.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_minimum-spanning-tree/image1.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_minimum-spanning-tree/image2.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_minimum-spanning-tree/image3.wmf"></sub>
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
