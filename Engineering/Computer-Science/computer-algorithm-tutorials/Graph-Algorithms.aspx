<%@ Page Language="C#" MasterPageFile="~/Masters/algorithm_tutorials_links.master" AutoEventWireup="True" CodeBehind="Graph-Algorithms.aspx.cs"  Inherits="ExamCrazy.Engineering.Computer_Science.computer_algorithm_tutorials.Graph_Algorithms" %>
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
	<b>Graph Algorithms </b></td>
</tr>

    <tr>

      
      <td class="txt">
<br>
<br>Graph Theory is an area of mathematics that deals with following types of problems 
<br>· Connection problems 
<br>· Scheduling problems 
<br>· Transportation problems 
<br>· Network analysis 
<br>· Games and Puzzles. 
<br>The Graph Theory has important applications in Critical path analysis, Social psychology, Matrix theory, Set theory, Topology, Group theory, Molecular chemistry, and Searching. 
<br>Those who would like to take a quick tour of essentials of graph theory please go directly to "Graph Theory" from here. 
<br>&nbsp; 
	<br><b><b>Digraph&nbsp;</b></b>
	<br>A directed graph, or digraph G consists of a finite nonempty set of vertices V, and a finite set of edges E, where an edge is an ordered pair of vertices in V. Vertices are also commonly referred to as nodes. Edges are sometimes referred to as arcs. 
<br>As an example, we could define a graph G=(V, E)&nbsp; as follows: 
<br>V = {1, 2, 3, 4} 
<br>&nbsp;E = { (1, 2), (2, 4), (4, 2) (4, 1)} 
<br>Here is a pictorial representation of this graph. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image1.gif"></sub>
<br>The definition of graph implies that a graph can be drawn just knowing its vertex-set and its edge-set. For example, our first example 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image2.gif"></sub>
<br>has vertex set V and edge set E where: V = {1,2,3,4} and E = {(1,2),(2,4),(4,3),(3,1),(1,4),(2,1),(4,2),(3,4),(1,3),(4,1). Notice that each edge seems to be listed twice. 
<br>Another example, the following Petersen Graph G=(V,E) has vertex set V and edge set E where: V = {1,2,3,4}and E ={(1,2),(2,4),(4,3),(3,1),(1,4),(2,1),(4,2),(3,4),(1,3),(4,1)}. 
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image3.gif"></sub>
<br>&nbsp;We'll quickly covers following three important topics from algorithmic perspective. 
<br>1. Transpose 
<br>2. Square 
<br>3. Incidence Matrix 
<br>&nbsp; 
	<br><b><b>1. Transpose </b></b>
	<br>If graph G = (V, E) is a directed graph, its transpose, G<sup>T</sup> = (V, E<sup>t</sup>) is the same as graph G with all arrows reversed. We define the transpose of a adjacency matrix A = (a<sub>ij</sub>) to be the adjacency matrix A<sup>T</sup> = (<sup>T</sup>a<sub>ij</sub>) given by <sup>t</sup>a<sub>ij</sub> = a<sub>ij</sub>. In other words, rows of matrix A become columns of matrix A<sup>T</sup> and columns of matrix A becomes rows of matrix A<sup>T</sup>. Since in an undirected graph, (u, v) and (v, u) represented the same edge, the adjacency matrix A&nbsp; of an undirected graph is its own transpose: A = A<sup>t</sup>. 
<br>Formally, the transpose of a directed graph G = (V, E) is the graph G<sup>T</sup> (V, E<sup>T</sup>), where E<sup>t</sup> = {(u, v) Î VxV : (u, v)ÎE. Thus, G<sup>T</sup> is G with all its edges reversed. 
<br>We can compute G<sup>T</sup> from G in the adjacency matrix representations and adjacency list representations of graph G. 
<br>Algorithm for computing G<sup>T</sup> from G in representation of graph G is 
<br>&nbsp; <b>ALGORITHM MATRIX TRANSPOSE (G, G</b><b><sup>T</b></sup><b>) </b>
<br>For i = 0 to i &lt; V[G] 
<br>&nbsp;For j = 0 to j V[G] 
<br>&nbsp;G<sup>T</sup> (j, i) = G(i, j) 
<br>&nbsp;j = j + 1; 
<br>&nbsp;i = i + 1 
<br>&nbsp; To see why it works notice that if G<sup>T</sup>(i, j) is equal to G(j, i), the same thing is achieved. The time complexity is clearly O(V<sup>2</sup>). 
<br>&nbsp; 
	<br><b><b>Algorithm for Computing&nbsp; G</b></b><b><sup>T</b></sup><b> from G in Adjacency-List Representation </b>
	<br>In this representation, a new adjacency list must be constructed for transpose of G. Every list in adjacency list is scanned. While scanning adjacency list of v (say), if we encounter u, we put v in adjacency-list of u. 
<br>&nbsp; <b>ALGORITHM LIST TRANSPOSE [G] </b>
<br>for&nbsp; u = 1 to V[G] 
<br>for&nbsp; each element vÎAdj[u] 
<br>Insert u into the front of Adj[v] 
<br>&nbsp;To see why it works, notice if an edge exists from u to v, i.e., v is in the adjacency list of u, then u is present in the adjacency list of v in the transpose of G. 
<br>&nbsp; 
	<br><b><b>2. Square </b></b>
	<br>The square of a directed graph G = (V, E) is the graph G<sup>2</sup> = (V, E<sup>2</sup>) such that (a, b)ÎE<sup>2</sup> if and only if for some vertex cÎV, both (u, c)ÎE and (c,b)ÎE. That is, G<sup>2</sup> contains an edge between vertex a and vertex b whenever G contains a path with exactly two edges between vertex a and vertex b. 
<br>&nbsp;<b> Algorithms for Computing G</b><b><sup>2</b></sup><b> from G in the Adjacency-List Representation of G </b>
<br>Create a new array Adj'(A), indexed by V[G] 
<br>For each v in V[G] do 
<br>For each u in Adj[v] do 
<br>\\ v has a path of length 2. 
<br>&nbsp;\\ to each of the neighbors of u 
<br>make a copy of Adj[u] and append it to Adj'[v] 
<br>Return Adj'(A). 
<br>&nbsp;For each vertex, we must make a copy of at most |E| list elements. The total time is O(|V| * |E|). 
<br>&nbsp;<b> Algorithm for Computing G</b><b><sup>2</b></sup><b> from G in the Adjacency-Ma trix representation of G. </b>
<br>For i = 1 to V[G] 
<br>For j = 1 to V[G] 
<br>For k = 1 to V[G] 
<br>c[i, j] = c[i, j] + c[i, k] * c[k, j] 
<br>&nbsp;Because of three nested loops, the running time is O(V<sup>3</sup>). 
<br>&nbsp; 
	<br><b><b>3. Incidence Matrix </b></b>
	<br>The incidence matrix of a directed graph G=(V, E) is a VxE matrix B = (bij) such that 
<br>-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if edge j leaves vertex&nbsp; j. 
<br>b<sub>ij</sub> =&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp; if edge j enters vertex&nbsp; j. 
<br>&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; otherwise. 
<br>&nbsp; If B is the incidence matrix and B<sup>T</sup>&nbsp; is its transpose, the diagonal of the product matrix BB<sup>T</sup> represents the degree of all the nodes, i.e., if P is the product matrix BB<sup>T</sup>&nbsp; then P[i, j] represents the degree of node i: 
<br>Specifically we have 
<br>BB<sup>T</sup>(i,j) = <sub>eÎE</sub>&nbsp; b<sub>ie</sub> b<sup>T</sup><sub>ej</sub>&nbsp; = <sub>eÎE</sub>&nbsp; b<sub>ie</sub> b<sub>je</sub> 
<br>Now, 
<br>· If i = j, then b<sub>ie</sub>b<sub>je</sub> = 1, whenever edge e enters or leaves vertex i and 0 otherwise. 
<br>· If i &#8800; j, then&nbsp; b<sub>ie</sub>b<sub>je</sub> = -1, when e = (i, j) or e = (j, i) and 0 otherwise. 
<br>&nbsp;Therefore 
<br>BB<sup>T</sup>(i,j) =&nbsp;&nbsp; deg(i) = in_deg + Out_deg &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if&nbsp; i = j 
<br>&nbsp;=&nbsp; -(# of edges connecting i an j )&nbsp; &nbsp;&nbsp; if &nbsp; i &#8800; j 
<br>
<br><asp:HyperLink ID="HyperLink1" runat="server" Text="<b>Þ</b><b> Click here for Breadth First Search details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/breadth-first-search.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink2" runat="server" Text="<b>Þ</b><b> Click here for Depth First Search details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/depth-first-search.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink3" runat="server" Text="<b>Þ</b><b> Click here for Topological Sort details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/topological-sort.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink4" runat="server" Text="<b>Þ</b><b> Click here for Strongly Connected Components details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/strongly-connected-components.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink5" runat="server" Text="<b>Þ</b><b> Click here for Euler Tour details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/euler-tour.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink6" runat="server" Text="<b>Þ</b><b> Click here for Generic Minimum Spanning Tree details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/generic-minimum-spanning-tree.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink7" runat="server" Text="<b>Þ</b><b> Click here for Kruskals Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/kruskals-algorithm.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink8" runat="server" Text="<b>Þ</b><b> Click here for Prims Algorithm details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/prims-algorithm.aspx"></asp:HyperLink>
<br>
<br><asp:HyperLink ID="HyperLink9" runat="server" Text="<b>Þ</b><b> Click here for Single Source Shortest Path details </b>" NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/%20single-source-shortest-path.aspx"></asp:HyperLink>
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
	<br>&nbsp;&nbsp; <asp:HyperLink ID="HyperLink10" runat="server" Text="<b>START NEW THREADS</b> " NavigateUrl="~/engineering/computer-science/computer-algorithm-tutorials/graph-algorithms.aspx"></asp:HyperLink></td>
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
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image4.wmf"></sub>
<br>
<br><b>Enter description</b>
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image5.wmf"></sub>
</td>
</tr>

    <tr>

      
      <td class="txt">
<br><sub><img src="/Engineering/Computer-Science/computer-algorithm-tutorials/img_graph-algorithms/image6.wmf"></sub>
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
