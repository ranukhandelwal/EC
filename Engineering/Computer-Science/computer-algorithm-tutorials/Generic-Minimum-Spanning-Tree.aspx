<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Generic-Minimum-Spanning-Tree.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Generic_Minimum_Spanning_Tree" %>
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
	<b>Generic Minimum Spanning Tree </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Informally, the MST problem is to find a free tree T of a given graph G that contains all the vertices of G and has the minimum total weight of the edges of G over all such trees. 
<br>&nbsp; 
	<br><b><b>Problem Formulation </b></b>
	<br>Let G = (V, E, W) be a weighted connected undirected graph. Find a tree T that contains all the vertices in G and minimize the sum of the weights of the edges (u, v) of T, that is 
<br>&nbsp;&nbsp;&nbsp;&nbsp; w(T) = <sub>(u, v) </sub><sub>&epsilon;</sub><sub>T</sub>&nbsp; w(u, v) 
<br>Tree that contains every vertex of a connected graph is called spanning tree. 
<br>&nbsp;The problem of constructing a minimum spanning tree of MST is computing a spanning tree T with smallest total weight. 
<br>Here we discuss (from CLR) Kruskal's algorithm and Prim's algorithm, which are classic application of the greedy strategy. Kruskal's algorithm grows the MST in clusters by considering (greedily) edges in order of their weights. Prim's algorithm, on other hand, grows the MST from single vertex (root), much in the same way as Dijkstra's Shortest-path algorithm. 
<br>&nbsp; 
	<br><b><b>Applications </b></b>
	<br>As we have mentioned, an MST shows the most economical way of connecting all vertices of weighted graph together using the edges of the graph. 
<br>· Connect all computers in a computer science building using least amount of cable. 
<br>· Connect all logic circuits of a VLSI chip to the power source using minimum amount of telephone wires. 
<br>Note that if the weight in G are distant, then the MST is unique. 
<br><b>Safe Edge </b>
<br>The MST algorithm manages a set of edge A, maintaining the following loop invariant. 
<br>Prior to each iteration, A is a subset of some MST 
<br>At each step, we determine safe edge that can be added to A with violating this invariant. Note that A&cup;{(u, v)} is also a subset of a MST. 
<br>&nbsp;<b> Generic-MST(G, w) </b>
<br>A { } 
<br>while set A does not form a spanning tree 
<br>do find a safe edge (u, v) for A 
<br>A&epsilon;A&cup;{(u, v)} 
<br>return A 
<br>&nbsp; 
	<br><b><b>Some Definition </b></b>
	<br>1. A cut (S, V - S) of an undirected graph G = (V, E) is a partition of V. In this example, S = {a, b, d, e} and V-S = {c, f, g, h, i} 
<br>2. A cut respects a set A of edges if no edge in A crosses the cut. 
<br>3. An edge (u, v) &epsilon; E crosses the cut (S, V-S) if one of its endpoint is in S and the other is in V-S). In this example, Edges (b, c), (b, h), (a, h), (d, f) and (e, f) cross the cut (S, V-S). 
<br>4. An edge is a light edge crossing a cut if its weight is the minimum of any edge crossing the cut. Note that there can be more than one light edge crossing a cut. In this example, cut namely, the light edge is (d, c) 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_generic-minimum-spanning-tree/image1.gif"></sub>
<br>DIAGRAM 
<br>&nbsp; Theorem &nbsp;Let G be a weighted connected graph, and let S and V-S be partition of the vertices of G. Furthermore, let (u, v) be a light edge. There is A MST that has (u, v) as one of its edges i.e., (u, v) is a safe edge. 
<br>&nbsp;<b> Proof </b>
<br>Let T be the MST of G. If T does not contain edge (u, v), the addition of (u, v), the addition of (u, v) to T must create a cycle. Therefore, there is some edge (x, y) of this cycle that is light edge. Moreover by the choice of (u, v), w(u, v) &#8804; w(x, y). If we remove (x, y) from T&cup;{(u, v)}, we obtained a spanning tree whose total weight is no more than before. Since T was a MST, this new tree must also be MST. 
<br>Now we would like to show that if edge weights are unique in the given graph, then there is a unique MST. 
<br>One way of showing this is to consider a MST T of a graph G = (V, E) and let L be the sorted list of edge weights of T. Then, simply show that for any other MST say T` of same graph G, the list is also the sorted list of edge weights of T`. 
<br>In order to show this first we develop notation. Then apply a substitution argument. 
<br>Suppose the sorted list of edges weights for MST T is 
<br>L = b<sub>1</sub>, b<sub>2</sub>, . . . , b<sub>k</sub> 
<br>and corresponding list of edges is 
<br>e<sub>1</sub>, e<sub>2</sub>, . . . , e<sub>k</sub> 
<br>Suppose that the sorted list of edge weights for any other MST T` is 
<br>L` = c<sub>1</sub>, c<sub>2</sub>, . . . , c<sub>k</sub> 
<br>and corresponding list of edges is 
<br>f<sub>1</sub>, f<sub>2</sub>, . . . , f<sub>k</sub> 
<br>Note that list L and L` may have duplicate elements. Each list has length k = |V| - 1, where |V| is the cardinality of the set of vertices of G. 
<br>&nbsp;Now we wish to show that L = L`. We proceed by a substitution argument. Let i be the first position where e<sub>i</sub> &#8800;f<sub>i</sub>, that is, the first position where edge lists differ. Without loss of generality, assume that w(e<sub>i</sub>) = b<sub>i</sub> &#8804; c<sub>i</sub> = w(f<sub>i</sub>) 
<br>Let H = T`&cup;e<sub>i</sub>. If H is a tree, than e<sub>i</sub> is in T` already, so we could have written the list of edges for T` so that e<sub>i</sub>=f<sub>i</sub>. Otherwise H contains a unique cycle C. Consider S = C-T, all the edges in C that are not in T and hence are in T`. Since all the edges in T` of weight less than or equal to b<sub>i</sub> are in T also, all edges in S have weights greater than or equal to c<sub>i</sub>. Let r belongs to S be of minimum weight. Since (T`&cup;e<sub>i</sub>)-r is also a spanning tree, we must have bi grater than or equal to w(r). Hence, w(r)=b<sub>i</sub>. We can substitute ei for r in T` without changing L`. Thus also moves the first position where the edge lists differ from the right iterating this substitution, we eventually must terminate with the list of edges identical and hence 
<br>
<br>L = L` 
<br>
<br>Thus result implies that if edge weights are unique, then there is a unique MST. 
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/generic-minimum-spanning-tree.aspx"></asp:HyperLink></td>
</tr></table>
<br><Table border="1" cellspacing="2" cellpadding="2" bordercolor="#c4c4c4">

    <tr>

      
      <td class="txt">
	<br><b>Prims Algorithm</b>
<br>Discussion forum for Prims Algorithm</td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_generic-minimum-spanning-tree/image2.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_generic-minimum-spanning-tree/image3.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_generic-minimum-spanning-tree/image4.wmf"></sub>
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
